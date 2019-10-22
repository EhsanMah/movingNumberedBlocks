clear all;
clc;
clf;
%% Take Photo
% different way of capturing pics

% obj = videoinput('kinect', 1);
% frame = getsnapshot(obj);
% image(frame);
% imshow(frame);
%delete(obj); 

 startBlockPicking();
colorDevice = imaq.VideoDevice('kinect',1)
  depthDevice = imaq.VideoDevice('kinect',2)
  
    colorDevice();
  depthDevice();
  
    colorImage = colorDevice();
  depthImage = depthDevice();
  
  ptCloud = pcfromkinect(depthDevice, depthImage, colorImage);


  
  release(colorDevice);
  release(depthDevice);
%   imshow(colorImage);
  
 
%% Image Flip
I = colorImage;
%  I = imread('cali.jpg');
I2 = imrotate(I,180); 
% subplot(2,2,1) 
% imshow(I2)
title 'original image' 
% Flip left/right: 
 Ir = flip(I2,2); 
% subplot(2,2,2) 
imshow(Ir) %changed 
title 'flipped image'
%% Movement
r = scanBlockA(Ir);
i= gridLookup(r,Ir);

pickBlock1();

moveToGrid(i);

blocFlag1 = 1

if blocFlag1 == 1
 suctionOff();

   startBlockPicking();
    d = scanBlockB(Ir);
    e=gridLookup(d,Ir);
    
%      suctionOn();
     pickBlock2();
     moveToGrid(e);
%      suctionOff();
       
end
 suctionOff();

blocFlag2 = 1 
suctionOff();

 if blocFlag2 == 1
        startBlockPicking();
        p = scanBlockC(Ir);
        
        w=gridLookup(p,Ir);
        
        pickBlock3();
        moveToGrid(w);
 end
 suctionOff();
 startBlockPicking();
