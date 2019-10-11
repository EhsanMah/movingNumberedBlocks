function [Ir] = getGrids(x)
I = x;
idisp(I)
I2 = imcrop(I,[1040 263 500 500]); %[initial u ,initial v,Length, width]
% subplot(1,2,1)
figure;
idisp(I)
title('Original Image')
% subplot(1,2,2)
figure;
idisp(I2)
title('Cropped Image')
s = I2;
I = imrotate(s,180); 
subplot(2,2,1) 
imshow(I)
title 'original image' 
% Flip left/right: 
Ir = flip(I,2); 
subplot(2,2,2) 
imshow(Ir)
title 'flipped image'
% Join the original and flipped images: 
IIr = horzcat(I,Ir); 
subplot(2,2,3:4) 
imshow(IIr)
title 'joined images'
end

