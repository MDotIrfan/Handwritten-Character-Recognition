function varargout = conf_mat_HK(varargin)
% CONF_MAT_HK MATLAB code for conf_mat_HK.fig
%      CONF_MAT_HK, by itself, creates a new CONF_MAT_HK or raises the existing
%      singleton*.
%
%      H = CONF_MAT_HK returns the handle to a new CONF_MAT_HK or the handle to
%      the existing singleton*.
%
%      CONF_MAT_HK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CONF_MAT_HK.M with the given input arguments.
%
%      CONF_MAT_HK('Property','Value',...) creates a new CONF_MAT_HK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before conf_mat_HK_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to conf_mat_HK_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help conf_mat_HK

% Last Modified by GUIDE v2.5 11-Mar-2022 19:59:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @conf_mat_HK_OpeningFcn, ...
                   'gui_OutputFcn',  @conf_mat_HK_OutputFcn, ...
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


% --- Executes just before conf_mat_HK is made visible.
function conf_mat_HK_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to conf_mat_HK (see VARARGIN)

% Choose default command line output for conf_mat_HK
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
load('hasil_conf_HK.mat');
plotConfMat(cm_HK)

% UIWAIT makes conf_mat_HK wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = conf_mat_HK_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
