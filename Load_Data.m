%[file_data,path_data]=uigetfile('*/*.csv','Import Data');
file_data = 'dataset_pelatihan.csv';
test=load(file_data);

data_seion = test(:,2:end);
datanormal = mapminmax(data_seion)';
setappdata(0,'file_d',file_data);
save('datanormal.mat', 'datanormal');