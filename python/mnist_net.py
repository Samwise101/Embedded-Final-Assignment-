import numpy as np
import cv2
import matplotlib.pyplot as plt
import os
import time
import tensorflow as tf
# from tensorflow.python.keras.models import Sequential
# from tensorflow.python.keras.layers import Flatten
# from tensorflow.python.keras.layers import Dense
# from tensorflow.python.keras.layers import Activation

from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Flatten, Dense, Activation
import random

print("Starting import")
from sklearn.utils import shuffle
print("Import successful")
import sys

from sklearn.datasets import load_digits
digits=load_digits()

def main():
	## Use CPU only
	os.environ['CUDA_VISIBLE_DEVICES'] = '-1'

	## Load MNIST dataset
	print("Loading dataset")
	train_images = []
	train_labels = []
	test_images = []
	test_labels = []

	dims = (10,10) # dimensions of images to train/test with
	fraction_test = 0.1
	path = "mnist/MNIST_Dataset_JPG/"

	# Initialize train and test datasets
	for j in range(2): # train and test	
		for i in range(10): # 0 to 9
			if j == 0:
				read_folder = path + '/MNIST_JPG_training/' + str(i) + '/'
			if j == 1:
				read_folder = path + '/MNIST_JPG_testing/' + str(i) + '/'
			for filename in os.listdir(read_folder):
				img = cv2.imread(os.path.join(read_folder,filename),0) # read img as grayscale
				img = (255-img)
				img = cv2.resize(img, dims, interpolation = cv2.INTER_AREA)	# resize img to fit dims

				if img is not None:
					if j == 0:
						train_images.append(img / 255) # normalize pixel vals to be between 0 - 1
						train_labels.append(i)
					if j == 1:
						test_images.append(img / 255)
						test_labels.append(i)

		# Shuffle and split into train and test
		# random.shuffle(images)
		# split_index = int(len(images) * fraction_test)
		# test_samples = images[:split_index]
		# train_samples = images[split_index:]
		
		# # Append to respective datasets
		# x_test.extend([sample[0] for sample in test_samples])
		# y_test.extend([sample[1] for sample in test_samples])
		# x_train.extend([sample[0] for sample in train_samples])
		# y_train.extend([sample[1] for sample in train_samples])

		# Verify dataset sizes
		# print(f"Training samples: {len(x_train)}, Testing samples: {len(x_test)}")

	## Convert to numpy arrays, flatten images - change dimensions from Nx10x10 to Nx100
	train_images = np.asarray(train_images).astype('float32')
	test_images = np.asarray(test_images).astype('float32')
	train_labels = np.asarray(train_labels).astype('uint8')
	test_labels = np.asarray(test_labels).astype('uint8')

	## Shuffle dataset
	train_images, train_labels = shuffle(train_images, train_labels)
	test_images, test_labels = shuffle(test_images, test_labels)

	## Define network structure
	model = Sequential([
		Flatten(input_shape=dims),		# reshape 10x10 to 100, layer 0
		Dense(32, activation='relu', use_bias=False),	# dense layer 2
		Dense(16, activation='relu', use_bias=False),	# dense layer 2
		Dense(10, activation='softmax', use_bias=False),	# dense layer 3
	])

	model.compile(optimizer='adam',
				  loss='sparse_categorical_crossentropy',
				  metrics=['accuracy'])


	## Train network  
	model.fit(train_images, train_labels, epochs=300, batch_size=1000, validation_split = 0.1)

	model.summary()

	start_t = time.time()
	results = model.evaluate(test_images, test_labels, verbose=0)
	totalt_t = time.time() - start_t
	print("Inference time for ", len(test_images), " test image: " , totalt_t, " seconds")


	print("test loss, test acc: ", results)

	## Retrieve network weights after training. Skip layer 0 (input layer)
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

	print("test_image[0] label: ", test_labels[0])
	x = test_images[0]
	plt.imshow(test_images[0])
	x = np.expand_dims(x, axis=0)
	print("NN Prediction: ", np.argmax(model.predict(x)))
	plt.imshow(test_images[0], cmap="gray")
	plt.show()

	print("test_image[0] label: ", test_labels[100])
	x = test_images[100]
	plt.imshow(test_images[100])
	x = np.expand_dims(x, axis=0)
	print("NN Prediction: ", np.argmax(model.predict(x)))
	plt.imshow(test_images[100], cmap="gray")
	plt.show()

	print("Finished")
	# Save the model to an HDF5 file
	model.save("trained_model_mnist.h5")

	for i in range(1,10):
		path = "test/" + str(i) + "/"
		for filename in os.listdir(path):
			img = cv2.imread(os.path.join(path, filename),0)
			img = cv2.resize(img, dims, interpolation=cv2.INTER_AREA) / 255
			x = img
			x = np.expand_dims(x, axis=0)
			print("test_image label: ", i)
			print("NN prediction: ", np.argmax(model.predict(x)))
			plt.imshow(img, cmap="gray")
			plt.show()

if __name__=="__main__":
    main()