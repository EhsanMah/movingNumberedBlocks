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
%% Movement
r = scanBlockA(Ir);
i=gridLookup(r);
pickBlock1();
moveToGrid(i);

if moveTogrid(bloc1Flag) == 1
    d = scanBlockB(Ir);
    k=gridLookup(d);
    pickBlock2();
    moveToGrid(k);
    if moveTogrid(bloc1Flag) == 1
         p = scanBlockB(Ir);
         m=gridLookup(p);
         pickBlock3();
          moveToGrid(m);
    end
    
end

 
