function varargout = conf_mat_HB(varargin)
% CONF_MAT_HB MATLAB code for conf_mat_HB.fig
%      CONF_MAT_HB, by itself, creates a new CONF_MAT_HB or raises the existing
%      singleton*.
%
%      H = CONF_MAT_HB returns the handle to a new CONF_MAT_HB or the handle to
%      the existing singleton*.
%
%      CONF_MAT_HB('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CONF_MAT_HB.M with the given input arguments.
%
%      CONF_MAT_HB('Property','Value',...) creates a new CONF_MAT_HB or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before conf_mat_HB_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to conf_mat_HB_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help conf_mat_HB

% Last Modified by GUIDE v2.5 11-Mar-2022 19:53:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @conf_mat_HB_OpeningFcn, ...
                   'gui_OutputFcn',  @conf_mat_HB_OutputFcn, ...
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


% --- Executes just before conf_mat_HB is made visible.
function conf_mat_HB_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to conf_mat_HB (see VARARGIN)

% Choose default command line output for conf_mat_HB
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
load('hasil_conf_HB.mat');
plotConfMat(cm_HB);
%load('hasil_net.mat');
%load('hasil_target.mat');
%plotconfusion(ttst(11:36,81:288),ytst(11:36,81:288))
% UIWAIT makes conf_mat_HB wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = conf_mat_HB_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
