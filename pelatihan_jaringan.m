function varargout = pelatihan_jaringan(varargin)
% PELATIHAN_JARINGAN MATLAB code for pelatihan_jaringan.fig
%      PELATIHAN_JARINGAN, by itself, creates a new PELATIHAN_JARINGAN or raises the existing
%      singleton*.
%
%      H = PELATIHAN_JARINGAN returns the handle to a new PELATIHAN_JARINGAN or the handle to
%      the existing singleton*.
%
%      PELATIHAN_JARINGAN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PELATIHAN_JARINGAN.M with the given input arguments.
%
%      PELATIHAN_JARINGAN('Property','Value',...) creates a new PELATIHAN_JARINGAN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before pelatihan_jaringan_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to pelatihan_jaringan_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help pelatihan_jaringan

% Last Modified by GUIDE v2.5 11-Mar-2022 14:48:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @pelatihan_jaringan_OpeningFcn, ...
                   'gui_OutputFcn',  @pelatihan_jaringan_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT

% --- Executes just before pelatihan_jaringan is made visible.
function pelatihan_jaringan_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to pelatihan_jaringan (see VARARGIN)

% Choose default command line output for pelatihan_jaringan
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
load('tr.mat');
load('jum_hidden.mat');
set(handles.edt_epoch,'String',tr.num_epochs);
set(handles.edt_hidden,'String',jum_hidden);

% UIWAIT makes pelatihan_jaringan wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = pelatihan_jaringan_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pilih_data.
function pilih_data_Callback(hObject, eventdata, handles)

handles.datanormal=datanormal;
nama_file = getappdata(0,'file_d');
set(handles.text22,'String',nama_file);
guidata(hObject,handles);
% hObject    handle to pilih_data (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in latihan_jaringan.
function latihan_jaringan_Callback(hObject, eventdata, handles)
Load_Data;
load('datanormal.mat');
%datanormal=handles.datanormal;
j_epoch = get(handles.edt_epoch,'String'); 
j_hidden = get(handles.edt_hidden,'String'); 
setappdata(0,'jum_epoch',j_epoch);
setappdata(0,'jum_hidden',j_hidden);
target_data;
divide_target;
train_machine;
handles.net=net;
handles.tr=tr;
handles.target=target;
save('net.mat', 'net');
save('tr.mat', 'tr');
save('target.mat', 'target');
%setappdata(0,'evalue',net);
guidata(hObject,handles);
%saveas(plotperform(tr),'perform.png');
%saveas(plottrainstate(tr),'trainstate.png');
%close;
%pelatihan_jaringan;
% hObject    handle to latihan_jaringan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in menuutama.
function menuutama_Callback(hObject, eventdata, handles)
close;
menu_utama;
% hObject    handle to menuutama (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in test_data_tunggal.
function test_data_tunggal_Callback(hObject, eventdata, handles)
close;
pengujian_data_tunggal;
% hObject    handle to test_data_tunggal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in test.
function test_Callback(hObject, eventdata, handles)
load('net.mat');
load('tr.mat');
load('datanormal.mat');
load('target.mat');
%load('hasil_conf.mat');
net=net;
tr=tr;
datanormal=datanormal;
target=target;
testing_and_accuracy;
%data1 = cm(1:10,1:10);
%set(handles.uitable1, 'Data', data1);
%data2 = cm(11:36,11:36);
%set(handles.uitable3, 'Data', data2);
%plot_perform=imread('perform.png');
%axes(handles.axes4);
%imshow(plot_perform);
%plot_train=imread('trainstate.png');
%axes(handles.axes5);
%imshow(plot_train);
set(handles.banyak_data,'String',totaldata);
set(handles.banyak_data_benar,'String',benar);
set(handles.mse,'String',tr.best_perf);
set(handles.akurasi2,'String',akurasi);
% hObject    handle to test (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pelatihan_jaringan.
function pelatihan_jaringan_Callback(hObject, eventdata, handles)
% hObject    handle to pelatihan_jaringan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in membuat_database.
function membuat_database_Callback(hObject, eventdata, handles)
close;
membuat_dataset;
% hObject    handle to membuat_database (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in keluar.
function keluar_Callback(hObject, eventdata, handles)
close;
close all;
% hObject    handle to keluar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in membuat_dataset.
function membuat_dataset_Callback(hObject, eventdata, handles)
% hObject    handle to membuat_dataset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;
membuat_dataset;



function edt_epoch_Callback(hObject, eventdata, handles)
% hObject    handle to edt_epoch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edt_epoch as text
%        str2double(get(hObject,'String')) returns contents of edt_epoch as a double


% --- Executes during object creation, after setting all properties.
function edt_epoch_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edt_epoch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edt_hidden_Callback(hObject, eventdata, handles)
% hObject    handle to edt_hidden (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edt_hidden as text
%        str2double(get(hObject,'String')) returns contents of edt_hidden as a double


% --- Executes during object creation, after setting all properties.
function edt_hidden_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edt_hidden (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
conf_mat_angka;
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
conf_mat_HB;
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
conf_mat_HK;
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
