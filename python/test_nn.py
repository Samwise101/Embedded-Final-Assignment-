import numpy as np
import cv2
import tensorflow as tf
import matplotlib.pyplot as plt
from tensorflow.keras.models import load_model
model = load_model("trained_model.h5")

# Load your trained model (if saved previously, adjust path as necessary)
# Uncomment below if using a saved model:
# model = tf.keras.models.load_model("path_to_saved_model.h5")

# Load MNIST dataset
dims = (10, 10)
mnist = tf.keras.datasets.mnist
(_, _), (x_test, y_test) = mnist.load_data()

# Normalize and resize test images
x_test_resized = np.array([cv2.resize(img, dims) for img in x_test]) / 255
x_test_resized = x_test_resized.reshape(-1, dims[0], dims[1])

# Test predictions on a subset of test images
num_samples = 10
indices = np.random.choice(len(x_test), num_samples, replace=False)
sample_images = x_test_resized[indices]
sample_labels = y_test[indices]

# Run predictions
predictions = np.argmax(model.predict(sample_images), axis=1)

for i in range(num_samples):
    plt.imshow(sample_images[i], cmap="gray")
    plt.title(f"True Label: {sample_labels[i]}, Prediction: {predictions[i]}")
    plt.axis("off")
    plt.show()

img = cv2.imread("test.png", cv2.IMREAD_GRAYSCALE)  # Read in grayscale
img_resized = cv2.resize(img, dims) / 255.0  # Resize and normalize
img_resized = 255 - img_resized
sample = np.array([img_resized])
predictions = np.argmax(model.predict(sample), axis=1)
for i in range(1):
    plt.imshow(sample[i], cmap="gray")
    plt.title(f"True Label: 8, Prediction: {predictions[i]}")
    plt.axis("off")
    plt.show()                    