function [im1,im2,im3,im4,im5,im6,im7,im8,im9]=divide(newim)
%fungsi untuk membagi citra menjadi 9 segmen
[rows, columns]=size(newim);
r3 = int32(rows/3);
c3 = int32(columns/3);
im1 = newim(1:r3, 1:c3);
im2 = newim(1:r3, c3+1:2*c3);
im3 = newim(1:r3, 2*c3+1:end);
im4 = newim(r3+1:2*r3, 1:c3);
im5 = newim(r3+1:2*r3, c3+1:2*c3);
im6 = newim(r3+1:2*r3, 2*c3+1:end);
im7 = newim(2*r3+1:end, 1:c3);
im8 = newim(2*r3+1:end, c3+1:2*c3);
im9 = newim(2*r3+1:end, 2*c3+1:end);