function [black] = IoC(newimage)
%fungsi untuk menghitung banyak piksel hitam pada citra
[rows,columns]=size(newimage);
count=0;
for i=1:rows
    for j=1:columns
        if newimage(i,j)==0
            count=count+1;
        end
    end
end
black=count;
end

