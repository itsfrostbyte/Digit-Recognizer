const { app, BrowserWindow, ipcMain } = require('electron')
const { spawn } = require('child_process')
const path = require('path')

const getIconPath = () => {
  switch (process.platform) {
    case 'win32':
      return path.join(__dirname, 'app-icon/rinne_256.ico');
    case 'darwin':
      return path.join(__dirname, 'app-icon/rinne_256.icns');
    default: 
      return path.join(__dirname, 'app-icon/rinne_256.png');
  }
};

function createWindow () {
  const win = new BrowserWindow({
    width: 800,
    height: 600,
    frame: false,
    icon: getIconPath(),
    webPreferences: {
      preload: path.join(__dirname, 'UI','preload.js'),
      contextIsolation: true,
      enableRemoteModule: false,
      nodeIntegration: true
    }
    
  })

  win.loadFile('./UI/home.html')

  win.setMenu(null)
}

app.whenReady().then(() => {

  if (process.platform === 'darwin') {
    app.dock.setIcon(path.join(__dirname, 'app-icon/rinne_256.icns'));
  }

  createWindow()

  app.on('activate', () => {
    if (BrowserWindow.getAllWindows().length === 0) {
      createWindow()
    }
    console.log("Absolute path to preload:", path.join(__dirname, 'UI', 'preload.js'));
  })
})

app.on('window-all-closed', () => {
    pythonProcess.stdin.write('KILL\n');
    app.quit()
})

function getResourcePath(resourceRelativePath) {
  return path.join(app.getAppPath(), 'resources', resourceRelativePath);
}

// const pythonExecutablePath = '.\\.venv\\Scripts\\python.exe';
// const pythonProcess = spawn(pythonExecutablePath, ['./python-codes/prediction.py']);

// const predictionExecutablePath = path.join(__dirname, 'dist', 'prediction.exe');
const predictionExecutablePath = getResourcePath('python/dist/prediction.exe');
const pythonProcess = spawn(predictionExecutablePath);

let drawEvent = null;

pythonProcess.stderr.on('data', (data) => {
    console.error(`Python Error: ${data}`);
});

pythonProcess.stdout.on('data', (data) => {
    let result = `${data}`;

    console.log("Output from Python:", result.trim());
    
    try {
      const parsedResult = JSON.parse(result.trim());
      console.log("Parsed Result:", parsedResult);
      if(drawEvent){
        drawEvent.sender.send('predictionResult', parsedResult);
      }
    } catch (error) {
      console.error("Error parsing Python output:", error, "Raw output:", result);
    }
});

ipcMain.on('getPrediction', (event, imageData) => {
    drawEvent = event;
    pythonProcess.stdin.write(imageData + '\n');
  //   const predictionExecutablePath = path.join(__dirname, 'dist', 'prediction.exe');
  //   const pythonProcess = spawn(predictionExecutablePath, [imageData]);

  //   let result = '';
  //   pythonProcess.stdout.on('data', (data) => {
  //       result += data;
  //   });
  //   pythonProcess.stderr.on('data', (data) => {
  //     console.error(`Python Error: ${data}`);
  // });
  //   pythonProcess.stdout.on('end', () => {
  //       console.log("Output from Python:", result.trim());
  //       // event.sender.send('predictionResult', JSON.parse(result.trim()));
  //       try {
  //         const parsedResult = JSON.parse(result.trim());
  //         console.log("Parsed Result:", parsedResult);
  //         event.sender.send('predictionResult', parsedResult);
  //       } catch (error) {
  //         console.error("Error parsing Python output:", error, "Raw output:", result);
  //       }
  //   });
});

ipcMain.on('minimize-window', (event) => {
  const win = BrowserWindow.getFocusedWindow();
  if (win) win.minimize();
});

ipcMain.on('maximize-window', (event) => {
  const win = BrowserWindow.getFocusedWindow();
  if (win) {
      if (win.isMaximized()) {
          win.unmaximize();
      } else {
          win.maximize();
      }
  }
});

ipcMain.on('close-window', (event) => {
  const win = BrowserWindow.getFocusedWindow();
  if (win) win.close();
});



