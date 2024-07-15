function varargout = menu_utama(varargin)
% MENU_UTAMA MATLAB code for menu_utama.fig
%      MENU_UTAMA, by itself, creates a new MENU_UTAMA or raises the existing
%      singleton*.
%
%      H = MENU_UTAMA returns the handle to a new MENU_UTAMA or the handle to
%      the existing singleton*.
%
%      MENU_UTAMA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MENU_UTAMA.M with the given input arguments.
%
%      MENU_UTAMA('Property','Value',...) creates a new MENU_UTAMA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before menu_utama_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to menu_utama_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help menu_utama

% Last Modified by GUIDE v2.5 06-Jan-2022 14:26:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @menu_utama_OpeningFcn, ...
                   'gui_OutputFcn',  @menu_utama_OutputFcn, ...
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


% --- Executes just before menu_utama is made visible.
function menu_utama_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to menu_utama (see VARARGIN)

% Choose default command line output for menu_utama
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
%is this the gray you were talking about?
% UIWAIT makes menu_utama wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = menu_utama_OutputFcn(hObject, eventdata, handles) 
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


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes2


% --- Executes on button press in latih_jaringan.
function latih_jaringan_Callback(hObject, eventdata, handles)
close;
pelatihan_jaringan;
% hObject    handle to latih_jaringan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in test_data_tunggal.
function test_data_tunggal_Callback(hObject, eventdata, handles)
close;
pengujian_data_tunggal;
% hObject    handle to test_data_tunggal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in keluar.
function keluar_Callback(hObject, eventdata, handles)
close all;
% hObject    handle to keluar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in membuatdatabase.
function membuatdatabase_Callback(hObject, eventdata, handles)
close;
membuat_dataset;
% hObject    handle to membuatdatabase (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
