// const electron = window.electron;
const canvas = document.getElementById('drawingCanvas');
const ctx = canvas.getContext('2d');

console.log("electron object:", window.electron);

let isDrawing = false;
let hasDrawn = false;

let isPredicting = false;

canvas.addEventListener('mousedown', () => {
    if (hasDrawn && !isPredicting) {
        ctx.clearRect(0, 0, canvas.width, canvas.height); // Clear the canvas
        hasDrawn = false; // Reset the flag
    }
    isDrawing = true;
});

canvas.addEventListener('mouseup', () => {
    isDrawing = false;
    ctx.beginPath(); // This will prevent connecting the lines when starting a new line.

    if(!isPredicting)
    {
        const imageData = canvas.toDataURL();  // Convert canvas content to a data URL
        electron.send('getPrediction', imageData);
        isPredicting = true;
    }

    document.querySelector(".softmax-prediction-container h3").textContent = "Predicting..."

    hasDrawn = true;
});

canvas.addEventListener('mousemove', draw);

function draw(event) {
    if (!isDrawing || isPredicting) return;

    ctx.lineWidth = 13; // Width of the drawing line
    ctx.lineCap = 'round'; // Round end cap for smoother drawing
    ctx.strokeStyle = 'white'; // Color of the drawing line

    // Actual drawing logic
    ctx.lineTo(event.clientX - canvas.offsetLeft, event.clientY - canvas.offsetTop);
    ctx.stroke();
    ctx.beginPath();
    ctx.moveTo(event.clientX - canvas.offsetLeft, event.clientY - canvas.offsetTop);
}

electron.on('predictionResult', (result) => {
    console.log(result);  // This will log the predicted number and its probability
    isPredicting = false;

    // Update the UI with the prediction result
    const predictionElem = document.querySelector(".softmax-prediction-container h3");
    predictionElem.textContent = "Prediction: " + result.prediction;
    console.log(result.prediction)

    // Optionally, you can also update the softmax bars for visualization.
    document.querySelectorAll('.probability').forEach((elem, idx) => {
        const bar = elem.querySelector('.bar');
        bar.style.flexGrow = result.probabilities[idx].toString();
    });
});