clear;
clc;

im1 = imread('im.bmp');
blockSize = 4;
Tedge = 16;
features = feature_extractor(im1,blockSize,Tedge);
