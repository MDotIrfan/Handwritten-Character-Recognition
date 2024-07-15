function varargout = pengujian_data_tunggal(varargin)
% PENGUJIAN_DATA_TUNGGAL MATLAB code for pengujian_data_tunggal.fig
%      PENGUJIAN_DATA_TUNGGAL, by itself, creates a new PENGUJIAN_DATA_TUNGGAL or raises the existing
%      singleton*.
%
%      H = PENGUJIAN_DATA_TUNGGAL returns the handle to a new PENGUJIAN_DATA_TUNGGAL or the handle to
%      the existing singleton*.
%
%      PENGUJIAN_DATA_TUNGGAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PENGUJIAN_DATA_TUNGGAL.M with the given input arguments.
%
%      PENGUJIAN_DATA_TUNGGAL('Property','Value',...) creates a new PENGUJIAN_DATA_TUNGGAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before pengujian_data_tunggal_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to pengujian_data_tunggal_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help pengujian_data_tunggal

% Last Modified by GUIDE v2.5 12-Jan-2022 14:35:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @pengujian_data_tunggal_OpeningFcn, ...
                   'gui_OutputFcn',  @pengujian_data_tunggal_OutputFcn, ...
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


% --- Executes just before pengujian_data_tunggal is made visible.
function pengujian_data_tunggal_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to pengujian_data_tunggal (see VARARGIN)

% Choose default command line output for pengujian_data_tunggal
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
% UIWAIT makes pengujian_data_tunggal wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = pengujian_data_tunggal_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1


% --- Executes on button press in pilih_data.
function pilih_data_Callback(hObject, eventdata, handles)
Preprocessing;
handles.ciri1=ciri1;
handles.ciri2=ciri2;
handles.ciri3=ciri3;
handles.ciri4=ciri4;
handles.ciri5=ciri5;
handles.ciri6=ciri6;
axes(handles.axes2);
imshow(image1);
axes(handles.axes5);
imshow(resized);
axes(handles.axes6);
imshow(grayimage);
axes(handles.axes7);
imshow(image2);
axes(handles.axes9);
imshow(inv2);
axes(handles.axes11);
imshow(thin);
axes(handles.axes15);
imshow(im1);
axes(handles.axes29);
imshow(im2);
axes(handles.axes30);
imshow(im3);
axes(handles.axes31);
imshow(im4);
axes(handles.axes32);
imshow(im5);
axes(handles.axes33);
imshow(im6);
axes(handles.axes34);
imshow(im7);
axes(handles.axes35);
imshow(im8);
axes(handles.axes36);
imshow(im9);
ciri_ciri = cellstr(num2str(ciri6));
set(handles.path2,'String',file);
set(handles.text24,'String',black_1,'Max', 1, 'FontName', 'courier');
set(handles.text25,'String',horz_1,'Max', 1, 'FontName', 'courier');
set(handles.text26,'String',vert_1,'Max', 1, 'FontName', 'courier');
set(handles.text27,'String',dig1_1,'Max', 1, 'FontName', 'courier');
set(handles.text28,'String',dig2_1,'Max', 1, 'FontName', 'courier');
set(handles.text34,'String',black_2,'Max', 1, 'FontName', 'courier');
set(handles.text35,'String',horz_2,'Max', 1, 'FontName', 'courier');
set(handles.text36,'String',vert_2,'Max', 1, 'FontName', 'courier');
set(handles.text37,'String',dig1_2,'Max', 1, 'FontName', 'courier');
set(handles.text38,'String',dig2_2,'Max', 1, 'FontName', 'courier');
set(handles.text44,'String',black_3,'Max', 1, 'FontName', 'courier');
set(handles.text45,'String',horz_3,'Max', 1, 'FontName', 'courier');
set(handles.text46,'String',vert_3,'Max', 1, 'FontName', 'courier');
set(handles.text47,'String',dig1_3,'Max', 1, 'FontName', 'courier');
set(handles.text48,'String',dig2_3,'Max', 1, 'FontName', 'courier');
set(handles.text54,'String',black_4,'Max', 1, 'FontName', 'courier');
set(handles.text55,'String',horz_4,'Max', 1, 'FontName', 'courier');
set(handles.text56,'String',vert_4,'Max', 1, 'FontName', 'courier');
set(handles.text57,'String',dig1_4,'Max', 1, 'FontName', 'courier');
set(handles.text58,'String',dig2_4,'Max', 1, 'FontName', 'courier');
set(handles.text64,'String',black_5,'Max', 1, 'FontName', 'courier');
set(handles.text65,'String',horz_5,'Max', 1, 'FontName', 'courier');
set(handles.text66,'String',vert_5,'Max', 1, 'FontName', 'courier');
set(handles.text67,'String',dig1_5,'Max', 1, 'FontName', 'courier');
set(handles.text68,'String',dig2_5,'Max', 1, 'FontName', 'courier');
set(handles.text74,'String',black_6,'Max', 1, 'FontName', 'courier');
set(handles.text75,'String',horz_6,'Max', 1, 'FontName', 'courier');
set(handles.text76,'String',vert_6,'Max', 1, 'FontName', 'courier');
set(handles.text77,'String',dig1_6,'Max', 1, 'FontName', 'courier');
set(handles.text78,'String',dig2_6,'Max', 1, 'FontName', 'courier');
set(handles.text84,'String',black_7,'Max', 1, 'FontName', 'courier');
set(handles.text85,'String',horz_7,'Max', 1, 'FontName', 'courier');
set(handles.text86,'String',vert_7,'Max', 1, 'FontName', 'courier');
set(handles.text87,'String',dig1_7,'Max', 1, 'FontName', 'courier');
set(handles.text88,'String',dig2_7,'Max', 1, 'FontName', 'courier');
set(handles.text94,'String',black_8,'Max', 1, 'FontName', 'courier');
set(handles.text95,'String',horz_8,'Max', 1, 'FontName', 'courier');
set(handles.text96,'String',vert_8,'Max', 1, 'FontName', 'courier');
set(handles.text97,'String',dig1_8,'Max', 1, 'FontName', 'courier');
set(handles.text98,'String',dig2_8,'Max', 1, 'FontName', 'courier');
set(handles.text104,'String',black_9,'Max', 1, 'FontName', 'courier');
set(handles.text105,'String',horz_9,'Max', 1, 'FontName', 'courier');
set(handles.text106,'String',vert_9,'Max', 1, 'FontName', 'courier');
set(handles.text107,'String',dig1_9,'Max', 1, 'FontName', 'courier');
set(handles.text108,'String',dig2_9,'Max', 1, 'FontName', 'courier');
set(handles.text109,'String',ciri_ciri,'Max', 3, 'FontName', 'courier');
guidata(hObject, handles);
% hObject    handle to pilih_data (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in pengenalan.
function pengenalan_Callback(hObject, eventdata, handles)
ciri1=handles.ciri1;
ciri2=handles.ciri2;
ciri3=handles.ciri3;
ciri4=handles.ciri4;
ciri5=handles.ciri5;
ciri6=handles.ciri6;
load('net.mat');
load('tr.mat');
load('datanormal.mat');
load('target.mat');
setappdata(0,'evalue',net);
net = getappdata(0,'evalue');
file_data = getappdata(0,'file_d');
testing_data_tunggal;
set(handles.text5,'String',hasil_huruf);
% hObject    handle to pengenalan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in menuutama.
function menuutama_Callback(hObject, eventdata, handles)
close;
menu_utama;
% hObject    handle to menuutama (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in keluar.
function keluar_Callback(hObject, eventdata, handles)
close all;
% hObject    handle to keluar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes2


function path2_Callback(hObject, eventdata, handles)
% hObject    handle to path2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of path2 as text
%        str2double(get(hObject,'String')) returns contents of path2 as a double


% --- Executes during object creation, after setting all properties.
function path2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to path2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function text5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in pleatihan_jaringan.
function pleatihan_jaringan_Callback(hObject, eventdata, handles)
close;
pelatihan_jaringan;
% hObject    handle to pleatihan_jaringan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in membuat_dataset.
function membuat_dataset_Callback(hObject, eventdata, handles)
close;
membuat_dataset;
% hObject    handle to membuat_dataset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
