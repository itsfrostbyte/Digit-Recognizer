console.log("Preload script is running");
const { contextBridge, ipcRenderer } = require('electron');


contextBridge.exposeInMainWorld(
  "electron", {
    send: (channel, data) => {
      // whitelist channels
      let validChannels = ["getPrediction"];
      if (validChannels.includes(channel)) {
        ipcRenderer.send(channel, data);
      }
    },
    on: (channel, func) => {
      let validChannels = ["predictionResult"];
      if (validChannels.includes(channel)) {
        // Deliberately strip event as it includes `sender` 
        ipcRenderer.on(channel, (event, ...args) => func(...args));
      }
    },

    minimize: () => {
      ipcRenderer.send('minimize-window');
    },
    maximize: () => {
      ipcRenderer.send('maximize-window');
    },
    close: () => {
      ipcRenderer.send('close-window');
    }
  }
);