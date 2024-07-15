function grayimage=grayed(newImage);

grayimage=uint8(zeros(size(newImage,1),size(newImage,2)));
for i=1:size(newImage,1)
      for j=1:size(newImage,2)
          grayimage(i,j)=0.2989*newImage(i,j,1)+0.5870*newImage(i,j,2)+0.1140*newImage(i,j,3);
      end
end