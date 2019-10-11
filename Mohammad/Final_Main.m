clear all;
clc;
clf;
%% Take Photo
colorDevice = imaq.VideoDevice('kinect',1)
  depthDevice = imaq.VideoDevice('kinect',2)
  
    colorDevice();
  depthDevice();
  
    colorImage = colorDevice();
  depthImage = depthDevice();
  
  ptCloud = pcfromkinect(depthDevice, depthImage, colorImage);


  
  release(colorDevice);
  release(depthDevice);
  idisp(colorImage);
  
 
%% Image Flip
I = imread('TestImage.jpg');
I2 = imrotate(I,180); 
% subplot(2,2,1) 
% imshow(I2)
title 'original image' 
% Flip left/right: 
 Ir = flip(I2,2); 
% subplot(2,2,2) 
imshow(Ir)
title 'flipped image'

r = scanBlockA(Ir);
i=gridLookup(r);
moveToGrid(i);


 
