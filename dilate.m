function dilate_img = dilate(newImage);
b=3;
[p q]=size(b);
  [m n]=size(newImage);
  temp= zeros(m,n);
   for i=1:m
       for j=1:n
           if (newImage(i,j)==1)
        
             for k=1:p
       for l=1:q
          if(b(k,l)==1)
           c=i+k;
           d=j+l;
           temp(c,d)=1;
          
          end
       end
             end
           end
           
       end
   end
   figure, imshow(temp)