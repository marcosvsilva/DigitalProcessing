import numpy as np
import cv2


def print_image(name_image, image):
    cv2.imshow(name_image, image)
    cv2.waitKey(0)
    cv2.destroyAllWindows()


def convert_image_to_RGB(image):
    height, width = image.shape
    channels = 3
    img_rgb = np.zeros((height, width, channels))

    for ch in range(channels):
        for he in range(height):
            for wi in range(width):
                img_rgb[he, wi, ch] = img[ch, wi]

    return img_rgb


def image_to_gray_scale(image):
    return cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)


def invert(image):
    return abs(255 - image)


# Load image and convert image to RGB
img = np.loadtxt('ImageMatriz.txt')
img = convert_image_to_RGB(img)
img = img.astype('uint8')

# Print original image
print_image('original', img)

# Convert to gray scale
img_gray = image_to_gray_scale(img)

# Print gray image
print_image('gray scale', img_gray)
