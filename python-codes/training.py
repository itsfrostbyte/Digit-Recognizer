# %%
import numpy as np
import tensorflow as tf
import os
from keras.models import Sequential
from keras.layers import Dense
from keras.layers import Dropout
from keras.activations import linear, relu, sigmoid
from sklearn.model_selection import train_test_split
# %%
# Get the training data
# data is taken from:
# https://www.kaggle.com/datasets/eishkaran/handwriting-data-set
script_dir = os.path.dirname(os.path.realpath(__file__))
train_csv_path = os.path.join(script_dir, 'train.csv')
data = np.loadtxt(train_csv_path, delimiter=',', skiprows=1)
print(data.shape)
# %%
#Format the data
Y = data[:,0]
X = data[:,1:]
X = X / 255
# %%
# Visualize the data
import matplotlib.pyplot as plt

num_images = 20

# Set up a figure with appropriate size (10 images side by side, each 28x28 pixels)
plt.figure(figsize=(20, 2))

for i in range(num_images):
    plt.subplot(1, num_images, i+1)
    
    # Reshape the ith row of X into 28x28 and display it
    image = X[i].reshape(28, 28)
    plt.imshow(image, cmap='gray')  # Display in grayscale
    plt.axis('off')  # Turn off axis numbers and ticks

plt.show()

# %%
# Check the info of X and Y
print(X.shape)
print(Y.shape)
from collections import Counter

digit_counts = Counter(Y)

for digit, count in sorted(digit_counts.items()):
    print(f"Digit {int(digit)}: {count} occurrences")
# %%
# Construct the neural network model
model = Sequential(
    [
        tf.keras.Input(shape=(784,)),
        Dense(512, activation='relu',name = 'l1'),
        #Dropout(0.05),
        Dense(256, activation='relu', name='l2'),
        #Dropout(0.05),
        Dense(128, activation='relu', name='l3'),
        #Dropout(0.05),
        Dense(10, activation='linear', name='out'),
    ],
    name = "learning_model"
)
model.summary()
# %%
# Train the model
X_train, X_val, Y_train, Y_val = train_test_split(X, Y, test_size=0.2, random_state=1)

model.compile(
    loss=tf.keras.losses.SparseCategoricalCrossentropy(from_logits=True),
    optimizer=tf.keras.optimizers.Adam(),
)

history = model.fit(
    X,Y,
    epochs=15,
    validation_data=(X_val, Y_val),
    batch_size=100
)
# %%
# Plot the training loss and validation loss
import matplotlib.pyplot as plt

loss = history.history['loss']
val_loss = history.history['val_loss']

plt.figure(figsize=(10, 6))

plt.plot(loss, label='Training Loss', color='blue')

plt.plot(val_loss, label='Validation Loss', color='red')

plt.title('Training and Validation Loss')
plt.xlabel('Epoch')
plt.ylabel('Loss')
plt.grid(True)
plt.legend()
plt.show()
# %%
# predict a sample
prediction = model.predict(X[6].reshape(1,784))
prediction_p = tf.nn.softmax(prediction)
yhat = np.argmax(prediction_p)
print(yhat)
# %%
#save the model
model.save('digit_recognizer_model.h5')
model.save('digit_recognizer_model')
# %%
#load and test the loaded model
model_loaded = tf.keras.models.load_model("python-codes/digit_recognizer_model.h5")

prediction = model_loaded.predict(X[2].reshape(1,784))
prediction_p = tf.nn.softmax(prediction)
yhat = np.argmax(prediction_p)
print(yhat)

# %%
#load and test an external image
from PIL import Image
image_path = r"C:\Users\omayh\Documents\Coding Projects\Digit Recognizer\python-codes\received_image.png"
loaded_image = Image.open(image_path)

image_array = np.array(image)
image_array = image_array.reshape(1, 784)
print(image_array.shape)
print(X[2].reshape(1,784).shape)
print(image_array)
# %%
