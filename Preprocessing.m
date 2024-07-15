%membaca file gambar huruf hiragana
[file,path]=uigetfile('*/*.png','Import Picture');
image1=imread([path file]);
%mengubah ukuran dimensi citra menjadi ukuran 42x42 piksel
resized = imresize(image1, [42 42]);
%mengubah representasi citra dari citra berwarna ke citra keabuan
grayimage=grayed(resized);
%mengubah representasi citra dari citra keabuan ke citra hitam putih
image2 = convert2binary(grayimage);
%invert
inv = 1-image2;
%morfologi gradien
%se = strel('rectangle',[3 3]);
dilate_img = dilation(inv);
erode_img = erotion(inv);
morfgrad_img = dilate_img - erode_img;
%menipiskan citra menggunakan Rosenfeld
inv2 = 1-morfgrad_img;
thin=Rosenfeld(image2);
%membagi citra menjadi 9 segmen berukuran 14x14 piksel
[im1,im2,im3,im4,im5,im6,im7,im8,im9]=divide(thin);
%mencirikan citra menggunakan mark direction pada tiap segmen
[vert_1,horz_1,dig1_1,dig2_1] = MarkDirection(im1);
[vert_2,horz_2,dig1_2,dig2_2] = MarkDirection(im2);
[vert_3,horz_3,dig1_3,dig2_3] = MarkDirection(im3);
[vert_4,horz_4,dig1_4,dig2_4] = MarkDirection(im4);
[vert_5,horz_5,dig1_5,dig2_5] = MarkDirection(im5);
[vert_6,horz_6,dig1_6,dig2_6] = MarkDirection(im6);
[vert_7,horz_7,dig1_7,dig2_7] = MarkDirection(im7);
[vert_8,horz_8,dig1_8,dig2_8] = MarkDirection(im8);
[vert_9,horz_9,dig1_9,dig2_9] = MarkDirection(im9);
%mencirikan citra menggunakan Intensity of Character pada tiap segmen
[black_1] = IoC(im1);
[black_2] = IoC(im2);
[black_3] = IoC(im3);
[black_4] = IoC(im4);
[black_5] = IoC(im5);
[black_6] = IoC(im6);
[black_7] = IoC(im7);
[black_8] = IoC(im8);
[black_9] = IoC(im9);
%memasukkan ciri black ke array black
black=[black_1,black_2,black_3,black_4,black_5,black_6,black_7,black_8,black_9];
%memasukkan ciri dig1 ke array dig1
dig1=[dig1_1,dig1_2,dig1_3,dig1_4,dig1_5,dig1_6,dig1_7,dig1_8,dig1_9];
%memasukkan ciri dig2 ke array dig2
dig2=[dig2_1,dig2_2,dig2_3,dig2_4,dig2_5,dig2_6,dig2_7,dig2_8,dig2_9];
%memasukkan ciri horz ke array horz
horz=[horz_1,horz_2,horz_3,horz_4,horz_5,horz_6,horz_7,horz_8,horz_9];
%memasukkan ciri vert ke array vert
vert=[vert_1,vert_2,vert_3,vert_4,vert_5,vert_6,vert_7,vert_8,vert_9];
%membuat kombinasi ciri 1
ciri1=[black];
%membuat kombinasi ciri 2
ciri2=[dig1];
%membuat kombinasi ciri 3
ciri3=[black,dig1];
%membuat kombinasi ciri 4
ciri4=[black,dig2];
%membuat kombinasi ciri 5
ciri5=[dig1,dig2];
%membuat kombinasi ciri 6
ciri6=[black,dig1,dig2,horz,vert];

 %subplot(3,3,1), subimage(image1)
 %subplot(3,3,2), subimage(grayimage)
 %subplot(3,3,3), subimage(image2)
 %subplot(3,3,4), subimage(inv)
 %subplot(3,3,5), subimage(dilate_img)
 %subplot(3,3,6), subimage(erode_img)
 %subplot(3,3,7), subimage(morfgrad_img)
 %subplot(3,3,8), subimage(thin)