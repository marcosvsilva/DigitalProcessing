import cv2


def print_image(img):
    cv2.imshow('show_img', img)
    cv2.waitKey(0)
    cv2.destroyAllWindows()


def invert(img):
    return abs(255 - img)


img_original = cv2.imread('mammography.png')
print_image(img_original)

image_invert = invert(img_original)
print_image(image_invert)
