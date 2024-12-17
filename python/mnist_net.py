import numpy as np
import cv2
import matplotlib.pyplot as plt
import os
import time
import tensorflow as tf
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Conv2D, MaxPooling2D, Flatten, Dense, Activation
import random
from sklearn.utils import shuffle
from sklearn.datasets import load_digits

digits = load_digits()

def save_to_txt(model):
    wt = open('weights_conv2d.csv', 'w')
    bs = open('biases_conv2d.csv', 'w')
    wt2 = open("weights_dense.csv", 'w')

    for idx, layer in enumerate(model.layers):
        if isinstance(layer, Conv2D):
            weights = layer.get_weights()[0]  # Shape: (kernel_height, kernel_width, input_channels, output_channels)
            biases = layer.get_weights()[1]   # Shape: (output_channels,)

            # Save weights in the desired 3D matrix format
            with open(f"conv2d_layer_{idx}_weights.txt", "w") as wt:
                wt.write("{\n")
                for out_channel in range(weights.shape[-1]):  # Iterate over output channels
                    wt.write("  {\n")
                    for in_channel in range(weights.shape[-2]):  # Iterate over input channels
                        wt.write("    {")
                        kernel = weights[:, :, in_channel, out_channel]  # 2D kernel for this in/out channel pair
                        wt.write(', '.join(f"{val:.7f}" for row in kernel for val in row))
                        wt.write("},\n" if in_channel != weights.shape[-2] - 1 else "}\n")
                    wt.write("  },\n" if out_channel != weights.shape[-1] - 1 else "  }\n")
                wt.write("}\n")

            # Save biases
            with open(f"conv2d_layer_{idx}_biases.txt", "w") as bs:
                bs.write("{")
                bs.write(', '.join(f"{val:.7f}" for val in biases))
                bs.write("}\n")


          


def global_average_pooling(x):
    # Assuming x has shape (batch_size, height, width, channels)
    return np.mean(x, axis=(1, 2))  # Average over height and width
    
def main():
    ## Use CPU only
    os.environ['CUDA_VISIBLE_DEVICES'] = '-1'

    ## Load MNIST dataset
    print("Loading dataset")
    dims = (15, 15)  # dimensions of images to train/test with
    fraction_test = 0.12
    path = "datasets/archive"

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
            images.append((img, i))  # Normalize and store the label

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

    ## Convert to numpy arrays, reshape images
    x_train = np.asarray(x_train).astype('uint8').reshape(-1, dims[0], dims[1], 1)
    x_test = np.asarray(x_test).astype('uint8').reshape(-1, dims[0], dims[1], 1)
    y_train = np.asarray(y_train).astype('uint8')
    y_test = np.asarray(y_test).astype('uint8')

    ## Shuffle dataset
    x_train, y_train = shuffle(x_train, y_train)
    x_test, y_test = shuffle(x_test, y_test)

    ## Define network structure
    model = Sequential([
		Flatten(input_shape=dims),		# reshape 15x15 to 225, layer 0
		Dense(64, activation='relu', use_bias=False),	# dense layer 1
		Dense(32, activation='relu', use_bias=False),	# dense layer 2
		Dense(16, activation='relu', use_bias=False),	# dense layer 3
		Dense(10, activation='softmax', use_bias=False),	# dense layer 4
	])

    model.compile(optimizer='adam',
                  loss='sparse_categorical_crossentropy',
                  metrics=['accuracy'])

    ## Train network  
    model.fit(x_train, y_train, epochs=400, batch_size=128, validation_split=0.1)

    model.summary()

    # Evaluate model
    start_t = time.time()
    results = model.evaluate(x_test, y_test, verbose=0)
    totalt_t = time.time() - start_t
    print("Inference time for ", len(x_test), " test images: ", totalt_t, " seconds")
    print("Test loss, test accuracy: ", results)
    
    for w in range(1, len(model.layers)):
        weight_filename = "layer_" + str(w) + "_weights.txt" 
        open(weight_filename, 'w').close() # clear file
        file = open(weight_filename,"a") 
        file.write('{')
        for i in range(model.layers[w].weights[0].numpy().shape[0]):
            file.write('{')
            for j in range(model.layers[w].weights[0].numpy().shape[1]):
                file.write(str(model.layers[w].weights[0].numpy()[i][j]))
                if j != model.layers[w].weights[0].numpy().shape[1]-1:
                    file.write(', ')
            file.write('}')
            if i != model.layers[w].weights[0].numpy().shape[0]-1:
                file.write(', \n')
        file.write('}')
        file.close()

    network_weights = model.layers[1].weights
	#print(network_weights)
    layer_1_W = network_weights[0].numpy()
	#print(layer_1_W)
    
    # Save Dense layer data to txt files
    save_to_txt(model)

    # Save the model to an HDF5 file
    model.save("trained_model_conv_30x30.h5")

    ## Visualize some predictions
    for idx in [0, 100]:
        print(f"Test image[{idx}] label: ", y_test[idx])
        x = x_test[idx]
        plt.imshow(x.squeeze(), cmap="gray")
        x = np.expand_dims(x, axis=0)
        print("NN Prediction: ", np.argmax(model.predict(x)))
        plt.show()

if __name__ == "__main__":
    main()
