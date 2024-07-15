function [vert,horz,dig1,dig2] = MarkDirection(newimage)

%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
[rows,columns]=size(newimage);
% %Mask Vertical
% ver=[1 0 1; 1 0 1; 1 0 1];
% %Mask Horizontal
% hor=[1 1 1; 0 0 0; 1 1 1];
% %Mask Diagonal 1
% dg1=[0 1 1; 1 0 1; 1 1 0];
% %Mask Diagonal 1
% dg2=[1 1 0; 1 0 1; 0 1 1];
vert=0;
horz=0;
dig1=0;
dig2=0;
for i=2:rows-1
    for j=2:columns-1
        if newimage(i,j)==0
            if newimage(i,j)+newimage(i-1,j)+newimage(i+1,j)==0
                if newimage(i-1,j-1)+newimage(i-1,j+1)+newimage(i,j-1)+newimage(i,j+1)+newimage(i+1,j-1)+newimage(i+1,j+1)==6
                    vert=vert+1;
                end
            end
            if newimage(i,j)+newimage(i,j-1)+newimage(i,j+1)==0
                if newimage(i-1,j-1)+newimage(i-1,j)+newimage(i-1,j+1)+newimage(i+1,j-1)+newimage(i+1,j)+newimage(i+1,j+1)==6
                    horz=horz+1;
                end
            end
            if newimage(i,j)+newimage(i-1,j-1)+newimage(i+1,j+1)==0
                if newimage(i-1,j)+newimage(i-1,j+1)+newimage(i,j-1)+newimage(i,j+1)+newimage(i+1,j-1)+newimage(i+1,j)==6
                    dig1=dig1+1;
                end
            end
            if newimage(i,j)+newimage(i-1,j+1)+newimage(i+1,j-1)==0
                if newimage(i-1,j-1)+newimage(i-1,j)+newimage(i,j-1)+newimage(i,j+1)+newimage(i+1,j)+newimage(i+1,j+1)==6
                    dig2=dig2+1;
                end
            end
        end
    end
end
end

