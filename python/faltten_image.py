import cv2
import numpy as np
from matplotlib import pyplot as plt 
import csv

# Load the grayscale image
image_path = "/home/samuel/FPGA_AI/src/python/archive/7/Seven_full (15).jpg"  # Replace with your image file path
dims = (15,15) # dimensions of images to train/test with
grayscale_image = cv2.imread(image_path,0)
grayscale_image = cv2.resize(grayscale_image, dims, interpolation=cv2.INTER_AREA)
normalized_array = grayscale_image   # Normalize 

plt.imshow(normalized_array)
plt.show()

# Flatten the image into a 1D array
flat_array = normalized_array.flatten()

output_file = "pixel_values.csv"
with open(output_file, "w") as file:
    for i, value in enumerate(flat_array):
        file.write(f"{value:d}")
        # Add a comma unless it's the last value in a line of 50
        if (i + 1) % 50 != 0:
            file.write(",")
        else:
            # Add a newline after every 50 values
            file.write(",\n")

print(f"Pixel values saved to {output_file}")