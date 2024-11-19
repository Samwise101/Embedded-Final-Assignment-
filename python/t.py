import numpy as np
import cv2
import matplotlib.pyplot as plt
import os
import time
import tensorflow as tf
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Flatten, Dense, Activation
from tensorflow.keras.preprocessing.image import ImageDataGenerator
from sklearn.utils import shuffle
import random

def main():
    ## Use CPU only
    os.environ['CUDA_VISIBLE_DEVICES'] = '-1'

    ## Load dataset
    print("Loading dataset")
    train_images = []
    train_labels = []
    test_images = []
    test_labels = []

    dims = (10,10)  # dimensions of images to train/test with
    fraction_test = 0.12
    path = "archive/"

    # Initialize train and test datasets
    x_train, y_train = [], []
    x_test, y_test = [], []

    # Iterate through each class folder (assuming folders are named 1 to 9)
    for i in range(1, 10):
        print(f"Processing digit: {i}")
        full_path = os.path.join(path, str(i))
        images = []  # To store images temporarily
        
        # Read all images from the current folder
        for filename in os.listdir(full_path):
            img_path = os.path.join(full_path, filename)
            img = cv2.imread(img_path, cv2.IMREAD_GRAYSCALE)
            img = cv2.resize(img, dims, interpolation=cv2.INTER_AREA)
            images.append((img/255, i))  # Normalize and store the label
        
        # Shuffle and split into train and test
        random.shuffle(images)
        split_index = int(len(images) * fraction_test)
        test_samples = images[:split_index]
        train_samples = images[split_index:]
        
        # Append to respective datasets
        x_test.extend([sample[0] for sample in test_samples])
        y_test.extend([sample[1] for sample in test_samples])
        x_train.extend([sample[0] for sample in train_samples])
        y_train.extend([sample[1] for sample in train_samples])

        # Verify dataset sizes
        print(f"Training samples: {len(x_train)}, Testing samples: {len(x_test)}")

    train_images = np.asarray(x_train).astype('float32')
    test_images = np.asarray(x_test).astype('float32')
    train_labels = np.asarray(y_train).astype('uint8')
    test_labels = np.asarray(y_test).astype('uint8')

    ## Shuffle dataset
    train_images, train_labels = shuffle(train_images, train_labels)
    test_images, test_labels = shuffle(test_images, test_labels)

    ## Define network structure
    model = Sequential([
        Flatten(input_shape=dims),  # reshape 10x10 to 100, layer 0
        Dense(64, activation='relu', use_bias=False),  # dense layer 1
        Dense(32, activation='relu', use_bias=False),  # dense layer 2
        Dense(16, activation='softmax', use_bias=False),  # dense layer 3
    ])

    model.compile(optimizer='adam',
                  loss='sparse_categorical_crossentropy',
                  metrics=['accuracy'])

    # Initialize ImageDataGenerator for real-time augmentation
    datagen = ImageDataGenerator(
        rotation_range=20,
        width_shift_range=0.2,
        height_shift_range=0.2,
        shear_range=0.2,
        zoom_range=0.2,
        horizontal_flip=True,
        fill_mode='nearest'
    )

    train_images = np.expand_dims(train_images, axis=-1)  # Shape becomes (samples, 10, 10, 1)


    # Fit the data generator on the training data
    datagen.fit(train_images)

    ## Train network with data augmentation
    model.fit(datagen.flow(train_images, train_labels, batch_size=200), epochs=50, validation_data=(test_images, test_labels))

    model.summary()

    # Evaluate the model
    results = model.evaluate(test_images, test_labels)
    print("Test loss, test accuracy:", results)

if __name__ == "__main__":
    main()
