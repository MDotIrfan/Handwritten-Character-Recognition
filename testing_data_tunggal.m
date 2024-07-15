if strcmp(file_data, 'seion1.data')
   ciri=ciri1;
elseif strcmp(file_data, 'seion2.data')
   ciri=ciri2;
elseif strcmp(file_data, 'seion3.data')
   ciri=ciri3;
elseif strcmp(file_data, 'seion4.data')
   ciri=ciri4;
elseif strcmp(file_data, 'seion5.data')
   ciri=ciri5;
else
   ciri=ciri6;
end
test1=ciri(:,1:end);
datanormal1 = mapminmax(test1)';
ytst1 = net(datanormal1);
hasil = vec2ind(ytst1);
%save('hasil_normal_single.mat','ytst1');
%save('test_single.mat','hasil');

if hasil == 1
    hasil_huruf='0'
elseif hasil == 2
    hasil_huruf='1'
elseif hasil == 3
    hasil_huruf='2'
elseif hasil == 4
    hasil_huruf='3'
elseif hasil == 5
    hasil_huruf='4'
elseif hasil == 6
    hasil_huruf='5'
elseif hasil == 7
    hasil_huruf='6'
elseif hasil == 8
    hasil_huruf='7'
elseif hasil == 9
    hasil_huruf='8'
elseif hasil == 10
    hasil_huruf='9'
elseif hasil == 11
    hasil_huruf='A'
elseif hasil == 12
    hasil_huruf='B'
elseif hasil == 13
    hasil_huruf='C'
elseif hasil == 14
    hasil_huruf='D'
elseif hasil == 15
    hasil_huruf='E'
elseif hasil == 16
    hasil_huruf='F'
elseif hasil == 17
    hasil_huruf='G'
elseif hasil == 18
    hasil_huruf='H'
elseif hasil == 19
    hasil_huruf='I'
elseif hasil == 20
    hasil_huruf='J'
elseif hasil == 21
    hasil_huruf='K'
elseif hasil == 22
    hasil_huruf='L'
elseif hasil == 23
    hasil_huruf='M'
elseif hasil == 24
    hasil_huruf='N'
elseif hasil == 25
    hasil_huruf='O'
elseif hasil == 26
    hasil_huruf='P'
elseif hasil == 27
    hasil_huruf='Q'
elseif hasil == 28
    hasil_huruf='R'
elseif hasil == 29
    hasil_huruf='S'
elseif hasil == 30
    hasil_huruf='T'
elseif hasil == 31
    hasil_huruf='U'
elseif hasil == 32
    hasil_huruf='V'
elseif hasil == 33
    hasil_huruf='W'
elseif hasil == 34
    hasil_huruf='X'
elseif hasil == 35
    hasil_huruf='Y'
elseif hasil == 36
    hasil_huruf='Z'
elseif hasil == 37
    hasil_huruf='a'
elseif hasil == 38
    hasil_huruf='b'
elseif hasil == 39
    hasil_huruf='c'
elseif hasil == 40
    hasil_huruf='d'
elseif hasil == 41
    hasil_huruf='e'
elseif hasil == 42
    hasil_huruf='f'
elseif hasil == 43
    hasil_huruf='g'
elseif hasil == 44
    hasil_huruf='h'
elseif hasil == 45
    hasil_huruf='i'
elseif hasil == 46
    hasil_huruf='j'
elseif hasil == 47
    hasil_huruf='k'
elseif hasil == 48
    hasil_huruf='l'
elseif hasil == 49
    hasil_huruf='m'
elseif hasil == 50
    hasil_huruf='n'
elseif hasil == 51
    hasil_huruf='o'
elseif hasil == 52
    hasil_huruf='p'
elseif hasil == 53
    hasil_huruf='q'
elseif hasil == 54
    hasil_huruf='r'
elseif hasil == 55
    hasil_huruf='s'
elseif hasil == 56
    hasil_huruf='t'
elseif hasil == 57
    hasil_huruf='u'
elseif hasil == 58
    hasil_huruf='v'
elseif hasil == 59
    hasil_huruf='w'
elseif hasil == 60
    hasil_huruf='x'
elseif hasil == 61
    hasil_huruf='y'
elseif hasil == 62
    hasil_huruf='z'
end

% Preprocessing;