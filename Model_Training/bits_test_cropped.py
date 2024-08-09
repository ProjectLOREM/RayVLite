#!/usr/bin/env python
# coding: utf-8

# In[4]:


import os
import sys
import numpy as np
from tensorflow.keras.preprocessing.image import ImageDataGenerator
from tensorflow.keras.applications import VGG16
from tensorflow.keras.layers import Flatten, Dense, Dropout
from tensorflow.keras.models import Model
from tensorflow.keras.optimizers import Adam
import cv2
import math
import tensorflow as tf
#import imutils

# if it gets recognision high enough, stop looking
from tensorflow.keras.callbacks import EarlyStopping

def find_index(data, number):
  """Finds the index of a given number in the nested list structure.

  Args:
      data: The nested list of numbers.
      number: The number to search for.

  Returns:
      The index of the number within the nested list, or -1 if not found.
  """

  for row_index, row in enumerate(data):
    for col_index, value in enumerate(row):
      if value == number:
        return (row_index, col_index)  # Return a tuple with row and column indices
  return -1  # Number not found

# for simplificaiton the bits per sector was borrowed from the thesis
bits = [
[375, 383, 391, 399, 407, 415, 423, 431, 439, 447, 455, 463,471, 479, 487, 495, 503, 511],
[183, 191, 199, 207, 215, 223, 231, 239, 247, 255, 263, 271, 279, 287, 295, 303, 311, 319, 327, 335, 343, 351, 359, 367],
[7, 15, 23, 31, 39, 47, 55, 63, 71, 79, 87, 95, 103, 111, 119, 127, 135, 143, 151, 159, 167, 175],
[374, 382, 390, 398, 406, 414, 422, 430, 438, 446, 454, 462, 470, 478, 486, 494, 502, 510],
[182, 198, 206, 214, 222, 230, 238, 246, 254, 262, 270, 278, 286, 294, 302, 310, 318, 326, 334, 342, 350, 358, 366],
[6, 14, 22, 30, 38, 46, 54, 62, 70, 78, 86, 94, 102, 110, 118, 126, 134, 142, 150, 158, 166, 174, 190],
[373, 381, 389, 397, 405, 413, 421, 429, 437, 445, 453, 461, 469, 477, 485, 493, 501, 509],
[181, 189, 197, 205, 213, 221, 229, 237, 245, 253, 261, 269, 277, 285, 293, 301, 309, 317, 325, 333, 341, 349, 357, 365],
[5, 13, 21, 29, 37, 45, 53, 61, 69, 77, 85, 93, 101, 109, 117, 125, 133, 141, 149, 157, 165, 173],
[372, 380, 388, 396, 404, 412, 420, 428, 436, 444, 452, 460, 468, 476, 484, 492, 500, 508],
[188, 196, 204, 212, 220, 228, 236, 244, 252, 260, 268, 276, 284, 292, 300, 308, 316, 324, 332, 340, 348, 356, 364],
[4, 12, 20, 28, 36, 44, 52, 60, 68, 76, 84, 92, 100, 108, 116, 124, 132, 140, 148, 156, 164, 172, 180],
[371, 387, 395, 403, 411, 419, 427, 435, 443, 451, 459, 467, 475, 483, 491, 499, 507],
[179, 195, 203, 211, 219, 227, 235, 243, 251, 259, 267, 275, 283, 291, 299, 307, 315, 323, 331, 339, 347, 355, 363, 379],
[3, 11, 19, 27, 35, 43, 51, 59, 67, 75, 83, 91, 99, 107, 115, 123, 131, 139, 147, 155, 163, 171, 187],
[370, 378, 386, 394, 402, 410, 418, 426, 434, 442, 450, 458, 466, 474, 482, 490, 498, 506],
[178, 186, 194, 202, 210, 218, 226, 234, 242, 250, 258, 266, 274, 282, 290, 298, 306, 314, 322, 330, 338, 346, 354, 362],
[2, 10, 18, 26, 34, 42, 50, 58, 66, 74, 82, 90, 98, 106, 114, 122, 130, 138, 146, 154, 162, 170],
[369, 377, 385, 393, 401, 409, 417, 425, 433, 441, 449, 457, 465, 473, 481, 489, 497, 505],
[185, 193, 201, 209, 217, 225, 233, 241, 249, 257, 265, 273, 281, 289, 297, 305, 313, 321, 329, 337, 345, 353, 361],
[1, 9, 17, 25, 33, 41, 49, 57, 65, 73, 81, 89, 97, 105, 113, 121, 129, 137, 145, 153, 161, 169, 177],
[368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504],
[192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360],
[0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184]
]
section = [ 2,3,4,8,9,10,14,15,16,20,21,22,26,27,28,32,33,34,38,39,40,44,45,46 ]

#hack=int(sys.argv[2])
#save each model seperatly 
bit_index=int(sys.argv[1]);  # which bit your tring to train

index = find_index(bits, bit_index)
target=section[index[0]]
#target=hack
column=target%6;
row=math.floor((target-column)/6)
print(target)
offset=59   # this was the size of the sector that we used to search x and y
print(column)
print(row)
x1=column*offset
x2=x1+offset+6
y1=row*offset
y2=y1+offset+6
print("x1=%d, x2=%d, y1=%d, y2=%d\n"%(x1,x2,y1,y2))



if (target == 16) || (target == 4)  #yes i know this should be rows...
    ref_number=25
else
    ref_number=16




def process_llsi_images(llsi_image1, llsi_image2):
    """
  Creates a new image highlighting the differences between two LLSI images.

  Args:
      llsi_image1: The first LLSI image (grayscale).
      llsi_image2: The second LLSI image (grayscale).

  Returns:
      A color image representing the differences between the LLSI images.
  """

  # Calculate absolute difference
  difference_image = cv2.absdiff(llsi_image1, llsi_image2)

  # Despeckle (noise removal)
  difference_image = cv2.fastNlMeansDenoising(difference_image, None, 10, 7, 21)

  # Remap black and white to a chosen colormap (adjust for desired visualization)
  remapped_difference = cv2.applyColorMap(difference_image, cv2.COLORMAP_JET)

  return remapped_difference



save_model="hope_cropped_bit_%d_model.keras"%bit_index
print(save_model)
print("training %d\n" % int(bit_index))

# we removed 10 to 20 % of images to use for testing...
image_dir = "/home/patch/source/laser/kerasenv/hope/MSP430_fixed/zeroized/images"
label_dir = "/home/patch/source/laser/kerasenv/hope/MSP430_fixed/zeroized/labels"

llsi_image1_path  = "./MSP430_fixed/zeroized/images/old/MSP430_zeroized_0357.png"
#llsi_image1_path  = "./MSP430_fixed/zeroized/images/old/MSP430_zeroized_0156.png"

def load_data(image_dir, label_dir):
    images = []
    labels = []
    debug=0
    llsi_image1 = cv2.imread(llsi_image1_path, cv2.IMREAD_GRAYSCALE)
    for filename in os.listdir(image_dir):
        if filename.endswith(".png"):  # only use the pngs
            image_path = os.path.join(image_dir, filename)
            label_path = os.path.join(label_dir, filename.replace(".png", "_key.txt"))
            if os.path.exists(label_path):
                with open(label_path, "r") as f:
                    f.seek(bit_index)
                    char = f.read(1)  # Read only one character
                    labels.append(int(char))
                img = cv2.imread(image_path, cv2.IMREAD_GRAYSCALE)  #the files have 1 channel
                cimage=cv2.cvtColor(img,cv2.COLOR_GRAY2BGR) # we need 3
                difference_image = process_llsi_images(llsi_image1, img)
                cropped_image = difference_image[y1:y2, x1:x2]


#this was for fine tuning the sector more than what was done in the tall.  we will be posting the searching code that can find these values soon
                #ref_number=16
                ref_number=25
                grid_size=8
                col = ref_number % (((x2-x1) // grid_size)+1)
                row = math.floor((ref_number-col) // ((y2-y1)// grid_size))
                x_left = col * grid_size
                x_right = x_left + grid_size
                y_top = row * grid_size
                y_bottom = y_top + grid_size
                if(debug==1):
                    print("hight %d"%(y2-y1))
                    print("rows %d"%((y2-y1)/grid_size))
                    print(cropped_image.shape)
                    print("mod %d"%((x2-x1) // grid_size))
                    print("ref %d" %( ref_number-col))
                    print(x_left)
                    print(x_right)
                    print(y_top)
                    print(y_bottom)
                    cv2.imshow("cropped", cropped_image)
                    cv2.waitKey(0)
                clip=cropped_image[y_top:y_bottom, x_left:x_right]
                clip_resize=cv2.resize(clip, dsize=(32, 32), interpolation=cv2.INTER_CUBIC)
                if(debug==1):
                  if(char=='1'):
                    print(char)
                    cv2.imshow(filename, clip_resize)
                    cv2.waitKey(0)  # Press any key to close the window
               
               # clip_resize = cv2.reshape(cimage, (32, 32, 3))
               # clip_resize=imutils.resize(img, width=32)
               # clip_resize = clip_resize.reshape((32, 32, 3))
               # print(clip_resize.shape)

                # Display the cropped image (optional)
                #  cv2.imshow("Cropped Image", cropped_image)
                #cv2.waitKey(0)  # Press any key to close the window
                
                images.append(clip_resize)  # we now have 3 in BGR format...for VGG
    return np.array(images), np.array(labels)

X_train, y_train = load_data(image_dir, label_dir) # at some point i will split the model...really

base_model = VGG16(weights="imagenet", include_top=False, input_shape=(X_train.shape[1], X_train.shape[2], 3))
base_model.trainable = False  # Freeze pre-trained layers for fine-tuning


x = base_model.output
x = Flatten()(x)
x = Dense(1024, activation="relu")(x)  # Dense layer with ReLU activation
x = Dropout(0.5)(x)  # Dropout layer to prevent overfitting
predictions = Dense(1, activation="sigmoid")(x)  # Output layer with sigmoid activation for binary classification...this means that probablilty will be flexible...closer to 1 the more likely its a one....

model = Model(inputs=base_model.input, outputs=predictions)
model.compile(loss="binary_crossentropy", optimizer=Adam(learning_rate=0.0001), metrics=["accuracy"])


# if this F's up remove it
early_stopping = EarlyStopping(monitor="val_loss", patience=5)  
using_data_augmentation = False  # Do we want to try to generate our own images my moving the images around a bit...probably eventually...
# if you use this do not zoom

if using_data_augmentation:
    history = model.fit(datagen.flow(X_train, y_train, batch_size=32),
                        epochs=20, validation_split=0.2, callbacks=[early_stopping])
else:
    history = model.fit(X_train, y_train, epochs=20, validation_split=0.2, callbacks=[early_stopping])

model.save(save_model)

model.summary()





