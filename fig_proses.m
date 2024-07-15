function varargout = fig_proses(varargin)
% FIG_PROSES MATLAB code for fig_proses.fig
%      FIG_PROSES, by itself, creates a new FIG_PROSES or raises the existing
%      singleton*.
%
%      H = FIG_PROSES returns the handle to a new FIG_PROSES or the handle to
%      the existing singleton*.
%
%      FIG_PROSES('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FIG_PROSES.M with the given input arguments.
%
%      FIG_PROSES('Property','Value',...) creates a new FIG_PROSES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before fig_proses_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to fig_proses_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help fig_proses

% Last Modified by GUIDE v2.5 18-Jan-2022 17:52:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @fig_proses_OpeningFcn, ...
                   'gui_OutputFcn',  @fig_proses_OutputFcn, ...
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


% --- Executes just before fig_proses is made visible.
function fig_proses_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to fig_proses (see VARARGIN)

% Choose default command line output for fig_proses
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
image1=getappdata(0,'gambar_asli');
resized=getappdata(0,'gambar_resize');
grayimage=getappdata(0,'gambar_grayscale');
image2=getappdata(0,'gambar_binerisasi');
%inv2=getappdata(0,'gambar_detektepi');
thin=getappdata(0,'gambar_penipisan');
im1=getappdata(0,'gambar_Segmen1');
black_1=getappdata(0,'black_Segmen1');
horz_1=getappdata(0,'horz_Segmen1');
vert_1=getappdata(0,'vert_Segmen1');
dig1_1=getappdata(0,'dig1_Segmen1');
dig2_1=getappdata(0,'dig2_Segmen1');
im2=getappdata(0,'gambar_Segmen2');
black_2=getappdata(0,'black_Segmen2');
horz_2=getappdata(0,'horz_Segmen2');
vert_2=getappdata(0,'vert_Segmen2');
dig1_2=getappdata(0,'dig1_Segmen2');
dig2_2=getappdata(0,'dig2_Segmen2');
im3=getappdata(0,'gambar_Segmen3');
black_3=getappdata(0,'black_Segmen3');
horz_3=getappdata(0,'horz_Segmen3');
vert_3=getappdata(0,'vert_Segmen3');
dig1_3=getappdata(0,'dig1_Segmen3');
dig2_3=getappdata(0,'dig2_Segmen3');
im4=getappdata(0,'gambar_Segmen4');
black_4=getappdata(0,'black_Segmen4');
horz_4=getappdata(0,'horz_Segmen4');
vert_4=getappdata(0,'vert_Segmen4');
dig1_4=getappdata(0,'dig1_Segmen4');
dig2_4=getappdata(0,'dig2_Segmen4');
im5=getappdata(0,'gambar_Segmen5');
black_5=getappdata(0,'black_Segmen5');
horz_5=getappdata(0,'horz_Segmen5');
vert_5=getappdata(0,'vert_Segmen5');
dig1_5=getappdata(0,'dig1_Segmen5');
dig2_5=getappdata(0,'dig2_Segmen5');
im6=getappdata(0,'gambar_Segmen6');
black_6=getappdata(0,'black_Segmen6');
horz_6=getappdata(0,'horz_Segmen6');
vert_6=getappdata(0,'vert_Segmen6');
dig1_6=getappdata(0,'dig1_Segmen6');
dig2_6=getappdata(0,'dig2_Segmen6');
im7=getappdata(0,'gambar_Segmen7');
black_7=getappdata(0,'black_Segmen7');
horz_7=getappdata(0,'horz_Segmen7');
vert_7=getappdata(0,'vert_Segmen7');
dig1_7=getappdata(0,'dig1_Segmen7');
dig2_7=getappdata(0,'dig2_Segmen7');
im8=getappdata(0,'gambar_Segmen8');
black_8=getappdata(0,'black_Segmen8');
horz_8=getappdata(0,'horz_Segmen8');
vert_8=getappdata(0,'vert_Segmen8');
dig1_8=getappdata(0,'dig1_Segmen8');
dig2_8=getappdata(0,'dig2_Segmen8');
im9=getappdata(0,'gambar_Segmen9');
black_9=getappdata(0,'black_Segmen9');
horz_9=getappdata(0,'horz_Segmen9');
vert_9=getappdata(0,'vert_Segmen9');
dig1_9=getappdata(0,'dig1_Segmen9');
dig2_9=getappdata(0,'dig2_Segmen9');
ciri6=getappdata(0,'ciri');
axes(handles.axes3);
imshow(image1);
axes(handles.axes8);
imshow(resized);
axes(handles.axes7);
imshow(grayimage);
axes(handles.axes4);
imshow(image2);
axes(handles.axes5);
%imshow(inv2);
axes(handles.axes6);
imshow(thin);
axes(handles.axes9);
imshow(im1);
axes(handles.axes10);
imshow(im2);
axes(handles.axes11);
imshow(im3);
axes(handles.axes12);
imshow(im4);
axes(handles.axes13);
imshow(im5);
axes(handles.axes14);
imshow(im6);
axes(handles.axes15);
imshow(im7);
axes(handles.axes16);
imshow(im8);
axes(handles.axes17);
imshow(im9);
ciri_ciri = cellstr(num2str(ciri6));
set(handles.text9,'String',black_1,'Max', 1, 'FontName', 'courier');
set(handles.text10,'String',horz_1,'Max', 1, 'FontName', 'courier');
set(handles.text11,'String',vert_1,'Max', 1, 'FontName', 'courier');
set(handles.text12,'String',dig1_1,'Max', 1, 'FontName', 'courier');
set(handles.text13,'String',dig2_1,'Max', 1, 'FontName', 'courier');
set(handles.text19,'String',black_2,'Max', 1, 'FontName', 'courier');
set(handles.text20,'String',horz_2,'Max', 1, 'FontName', 'courier');
set(handles.text21,'String',vert_2,'Max', 1, 'FontName', 'courier');
set(handles.text22,'String',dig1_2,'Max', 1, 'FontName', 'courier');
set(handles.text23,'String',dig2_2,'Max', 1, 'FontName', 'courier');
set(handles.text29,'String',black_3,'Max', 1, 'FontName', 'courier');
set(handles.text30,'String',horz_3,'Max', 1, 'FontName', 'courier');
set(handles.text31,'String',vert_3,'Max', 1, 'FontName', 'courier');
set(handles.text32,'String',dig1_3,'Max', 1, 'FontName', 'courier');
set(handles.text33,'String',dig2_3,'Max', 1, 'FontName', 'courier');
set(handles.text39,'String',black_4,'Max', 1, 'FontName', 'courier');
set(handles.text40,'String',horz_4,'Max', 1, 'FontName', 'courier');
set(handles.text41,'String',vert_4,'Max', 1, 'FontName', 'courier');
set(handles.text42,'String',dig1_4,'Max', 1, 'FontName', 'courier');
set(handles.text43,'String',dig2_4,'Max', 1, 'FontName', 'courier');
set(handles.text49,'String',black_5,'Max', 1, 'FontName', 'courier');
set(handles.text50,'String',horz_5,'Max', 1, 'FontName', 'courier');
set(handles.text51,'String',vert_5,'Max', 1, 'FontName', 'courier');
set(handles.text52,'String',dig1_5,'Max', 1, 'FontName', 'courier');
set(handles.text53,'String',dig2_5,'Max', 1, 'FontName', 'courier');
set(handles.text59,'String',black_6,'Max', 1, 'FontName', 'courier');
set(handles.text60,'String',horz_6,'Max', 1, 'FontName', 'courier');
set(handles.text61,'String',vert_6,'Max', 1, 'FontName', 'courier');
set(handles.text62,'String',dig1_6,'Max', 1, 'FontName', 'courier');
set(handles.text63,'String',dig2_6,'Max', 1, 'FontName', 'courier');
set(handles.text69,'String',black_7,'Max', 1, 'FontName', 'courier');
set(handles.text70,'String',horz_7,'Max', 1, 'FontName', 'courier');
set(handles.text71,'String',vert_7,'Max', 1, 'FontName', 'courier');
set(handles.text72,'String',dig1_7,'Max', 1, 'FontName', 'courier');
set(handles.text73,'String',dig2_7,'Max', 1, 'FontName', 'courier');
set(handles.text79,'String',black_8,'Max', 1, 'FontName', 'courier');
set(handles.text80,'String',horz_8,'Max', 1, 'FontName', 'courier');
set(handles.text81,'String',vert_8,'Max', 1, 'FontName', 'courier');
set(handles.text82,'String',dig1_8,'Max', 1, 'FontName', 'courier');
set(handles.text83,'String',dig2_8,'Max', 1, 'FontName', 'courier');
set(handles.text89,'String',black_9,'Max', 1, 'FontName', 'courier');
set(handles.text90,'String',horz_9,'Max', 1, 'FontName', 'courier');
set(handles.text91,'String',vert_9,'Max', 1, 'FontName', 'courier');
set(handles.text92,'String',dig1_9,'Max', 1, 'FontName', 'courier');
set(handles.text93,'String',dig2_9,'Max', 1, 'FontName', 'courier');
set(handles.text94,'String',ciri_ciri,'Max', 3, 'FontName', 'courier');

% UIWAIT makes fig_proses wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = fig_proses_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
