test = ['0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'];
cell_feature = [];
%PB = waitbar(0, '1', 'Name', 'Mengekstraksi Ciri',...
%    'CreateCancelBtn',...
%    'setappdata(gcbf, ''canceling'', 1)');
%    setappdata(PB, 'canceling', 0)
for m=1:62
    cell_feature = [];
    p_data = 0;
    ak = test(m);
     %if getappdata(PB, 'canceling')
        %break
     %end
     A=0;
    Files=dir(sprintf('Data Primer Crop/Data training/%s',num2str(m)));
    p_data = length(Files)-2;
    disp(p_data);  
    for k=1:p_data
        FileNames=Files(k).name;
        %waitbar(m/62, PB, sprintf( 'Mengekstraksi Ciri Karakter %s (%d/%d)', num2str(ak), k, p_data));
        image_{k}= imread(sprintf('Data Primer Crop/Data training/%s/%s_%s.png',num2str(m),num2str(ak),num2str(k)));
          %mengubah ukuran dimensi citra menjadi ukuran 42x42 piksel
            resized = imresize(image_{k}, [42 42]);
            %mengubah representasi citra dari citra berwarna ke citra keabuan
            grayimage=grayed(resized);
            %mengubah representasi citra dari citra keabuan ke citra hitam putih
            image2 = convert2binary(grayimage);
            %invert
            %inv = 1-image2;
            %morfologi gradien
            %dilate_img = dilation(inv);
            %erode_img = erotion(inv);
            %morfgrad_img = dilate_img - erode_img;
            %inv2=1-morfgrad_img;
            %menipiskan citra menggunakan Rosenfeld
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
            %membuat kombinasi ciri 6
            ciri6=[black,dig1,dig2,horz,vert];
            if k==1
               setappdata(0,'gambar_asli',image_{k});
               setappdata(0,'gambar_resize',resized);
               setappdata(0,'gambar_grayscale',grayimage);
               setappdata(0,'gambar_binerisasi',image2);
               %setappdata(0,'gambar_detektepi',inv2);
               setappdata(0,'gambar_penipisan',thin);
               setappdata(0,'gambar_Segmen1',im1);
               setappdata(0,'black_Segmen1',black_1);
               setappdata(0,'horz_Segmen1',horz_1);
               setappdata(0,'vert_Segmen1',vert_1);
               setappdata(0,'dig1_Segmen1',dig1_1);
               setappdata(0,'dig2_Segmen1',dig2_1);
               setappdata(0,'gambar_Segmen2',im2);
               setappdata(0,'black_Segmen2',black_2);
               setappdata(0,'horz_Segmen2',horz_2);
               setappdata(0,'vert_Segmen2',vert_2);
               setappdata(0,'dig1_Segmen2',dig1_2);
               setappdata(0,'dig2_Segmen2',dig2_2);
               setappdata(0,'gambar_Segmen3',im3);
               setappdata(0,'black_Segmen3',black_3);
               setappdata(0,'horz_Segmen3',horz_3);
               setappdata(0,'vert_Segmen3',vert_3);
               setappdata(0,'dig1_Segmen3',dig1_3);
               setappdata(0,'dig2_Segmen3',dig2_3);
               setappdata(0,'gambar_Segmen4',im4);
               setappdata(0,'black_Segmen4',black_4);
               setappdata(0,'horz_Segmen4',horz_4);
               setappdata(0,'vert_Segmen4',vert_4);
               setappdata(0,'dig1_Segmen4',dig1_4);
               setappdata(0,'dig2_Segmen4',dig2_4);
               setappdata(0,'gambar_Segmen5',im5);
               setappdata(0,'black_Segmen5',black_5);
               setappdata(0,'horz_Segmen5',horz_5);
               setappdata(0,'vert_Segmen5',vert_5);
               setappdata(0,'dig1_Segmen5',dig1_5);
               setappdata(0,'dig2_Segmen5',dig2_5);
               setappdata(0,'gambar_Segmen6',im6);
               setappdata(0,'black_Segmen6',black_6);
               setappdata(0,'horz_Segmen6',horz_6);
               setappdata(0,'vert_Segmen6',vert_6);
               setappdata(0,'dig1_Segmen6',dig1_6);
               setappdata(0,'dig2_Segmen6',dig2_6);
               setappdata(0,'gambar_Segmen7',im7);
               setappdata(0,'black_Segmen7',black_7);
               setappdata(0,'horz_Segmen7',horz_7);
               setappdata(0,'vert_Segmen7',vert_7);
               setappdata(0,'dig1_Segmen7',dig1_7);
               setappdata(0,'dig2_Segmen7',dig2_7);
               setappdata(0,'gambar_Segmen8',im8);
               setappdata(0,'black_Segmen8',black_8);
               setappdata(0,'horz_Segmen8',horz_8);
               setappdata(0,'vert_Segmen8',vert_8);
               setappdata(0,'dig1_Segmen8',dig1_8);
               setappdata(0,'dig2_Segmen8',dig2_8);
               setappdata(0,'gambar_Segmen9',im9);
               setappdata(0,'black_Segmen9',black_9);
               setappdata(0,'horz_Segmen9',horz_9);
               setappdata(0,'vert_Segmen9',vert_9);
               setappdata(0,'dig1_Segmen9',dig1_9);
               setappdata(0,'dig2_Segmen9',dig2_9);
               setappdata(0,'ciri',ciri6);
               fig_proses;
            end
            %x = ['job done for image ',num2str(ak),' - ',num2str(i),'/20'];
            %disp(x);
            cell_feature(k,:) = [m,ciri6];
            A=A+1;      
    end
    jum_data{m} = A;
    save('jumlah.mat','jum_data');
    cek{m} = cell_feature;
    dataset(m,:) = cek(m)';
    data = cell2mat(dataset);
    disp(size(data));
    if m==62
        close;
    end
end
namafiledata = 'dataset_pelatihan.csv';
csvwrite(namafiledata,data);
%delete(PB);
%{
A=0;
Files=dir('Img/Data training/1');
for k=1:length(Files)
   FileNames=Files(k).name;
   A=A+1;
end
%}