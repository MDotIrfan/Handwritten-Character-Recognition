function dilate_img = dilation(newImage)

[r c]=size(newImage);
w=ones(3,3);
dilate_img=[];
for x=2:1:r-1
 for y= 2:1:c-1
 g=[w(1)*newImage(x-1,y-1) w(2)*newImage(x-1,y) w(3)*newImage(x-1,y+1)...
 w(4)*newImage(x,y-1) w(5)*newImage(x,y) w(6)*newImage(x,y+1)...
 w(7)*newImage(x+1,y-1) w(8)*newImage(x+1,y) w(9)*newImage(x+1,y+1)];
 dilate_img(x,y)=max(g);
 end
end