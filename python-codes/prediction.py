import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3'  # Suppress TensorFlow logging

import sys
import numpy as np
import tensorflow as tf
# make TensforFlow shut the f up
tf.get_logger().setLevel('ERROR')
tf.compat.v1.logging.set_verbosity(tf.compat.v1.logging.ERROR)
tf.autograph.set_verbosity(0)
from PIL import Image
from PIL import ImageOps
import io
import base64
import json


# Load the saved model
# Check if running as a standalone executable
if getattr(sys, 'frozen', False):
    model_path = os.path.join(sys._MEIPASS, "python-codes/digit_recognizer_model.h5")
else:
    model_path = "python-codes/digit_recognizer_model.h5"
model = tf.keras.models.load_model(model_path)

#print('Hello')

while True:
    input = sys.stdin.readline()

    if input.strip() == "KILL":
        break

    try:
        # Get the image data from the command line argument
        # image_data = sys.argv[1].split(',')[1]
        image_data = input.split(',')[1]
        decoded_image = base64.b64decode(image_data)
        image = Image.open(io.BytesIO(decoded_image)).convert('L')  # Convert image to grayscale

        # Save received image to check it
        image.save("received_image.png")

        image = Image.open(io.BytesIO(decoded_image)).convert('L')  

        # Get the bounding box of the drawn content
        bbox = ImageOps.invert(image).getbbox()
        if bbox:
            cropped_image = image.crop(bbox)

            # Determine the aspect ratio
            width, height = cropped_image.size
            new_width, new_height = width, height
            if width > height:
                new_width = 20
                new_height = int(20 * (height / width))
            else:
                new_height = 20
                new_width = int(20 * (width / height))

            # Resize while preserving aspect ratio
            resized_image = cropped_image.resize((new_width, new_height))

            # Padding to get the final 28x28 size
            left_padding = (28 - new_width) // 2
            right_padding = 28 - new_width - left_padding
            top_padding = (28 - new_height) // 2
            bottom_padding = 28 - new_height - top_padding

            image = ImageOps.expand(resized_image, (left_padding, top_padding, right_padding, bottom_padding), fill='black')
        else:
            # If there's no drawing (all black canvas), use a black 28x28 image
            image = Image.new('L', (28, 28), color='black')

        image_array = np.array(image) / 255

        centered_image = Image.fromarray((image_array * 255).astype(np.uint8))

        centered_image.save("recentered_image.png")

        prediction = model.predict(image_array.reshape(1, 784), verbose=None)

        prediction_p = tf.nn.softmax(prediction).numpy()
        yhat = np.argmax(prediction_p)

        probabilities = prediction_p[0].tolist()

        print(json.dumps({
            "prediction": int(yhat),
            "probability": float(np.max(prediction_p)),
            "probabilities": probabilities
        }))

        sys.stdout.flush()
    
    except Exception as e:
        print({"error": str(e)})
