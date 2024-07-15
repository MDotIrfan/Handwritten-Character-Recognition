function varargout = membuat_dataset(varargin)
% MEMBUAT_DATASET MATLAB code for membuat_dataset.fig
%      MEMBUAT_DATASET, by itself, creates a new MEMBUAT_DATASET or raises the existing
%      singleton*.
%
%      H = MEMBUAT_DATASET returns the handle to a new MEMBUAT_DATASET or the handle to
%      the existing singleton*.
%
%      MEMBUAT_DATASET('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MEMBUAT_DATASET.M with the given input arguments.
%
%      MEMBUAT_DATASET('Property','Value',...) creates a new MEMBUAT_DATASET or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before membuat_dataset_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to membuat_dataset_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help membuat_dataset

% Last Modified by GUIDE v2.5 07-Jan-2022 02:03:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @membuat_dataset_OpeningFcn, ...
                   'gui_OutputFcn',  @membuat_dataset_OutputFcn, ...
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


% --- Executes just before membuat_dataset is made visible.
function membuat_dataset_OpeningFcn(hObject, eventdata, handles, varargin)
data = csvread('dataset_pelatihan.csv');
set(handles.uitable1, 'Data', data);
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to membuat_dataset (see VARARGIN)

% Choose default command line output for membuat_dataset
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes membuat_dataset wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = membuat_dataset_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pelatihan_jaringan.
function pelatihan_jaringan_Callback(hObject, eventdata, handles)
close;
pelatihan_jaringan;
% hObject    handle to pelatihan_jaringan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pengenalan_gambar.
function pengenalan_gambar_Callback(hObject, eventdata, handles)
close;
pengujian_data_tunggal;
% hObject    handle to pengenalan_gambar (see GCBO)
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


% --- Executes on button press in menu_utama.
function menu_utama_Callback(hObject, eventdata, handles)
close;
menu_utama;
% hObject    handle to menu_utama (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in simpan_dataset.
function simpan_dataset_Callback(hObject, eventdata, handles)
save_dataset;
data = csvread('dataset_pelatihan.csv');
set(handles.uitable1, 'Data', data);
set(handles.text8,'String','Dataset Telah Berhasil Disimpan');
% hObject    handle to simpan_dataset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
