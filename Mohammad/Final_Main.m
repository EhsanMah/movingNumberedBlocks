clear all;
clc;
clf;
%% Take Photo

% startBlockPicking();
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
idisp(Ir)
title 'flipped image'
%% Movement
r = scanBlockA(Ir);
i= gridLookup(r,Ir);

pickBlock1();
moveToGrid(i);

if moveToGrid(bloc1Flag) == 1
    d = scanBlockB(Ir);
    e=gridLookup(d,Ir);
    k= gridNum;
    pickBlock2();
    moveToGrid(k);
    if moveToGrid(bloc1Flag) == 1
         p = scanBlockB(Ir);
         w=gridLookup(p);
         
         pickBlock3();
          moveToGrid(w);
    end
    
end

 
