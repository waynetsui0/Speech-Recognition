function varargout = recgnition(varargin)
% RECGNITION MATLAB code for recgnition.fig
%      RECGNITION, by itself, creates a new RECGNITION or raises the existing
%      singleton*.
%
%      H = RECGNITION returns the handle to a new RECGNITION or the handle to
%      the existing singleton*.
%
%      RECGNITION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RECGNITION.M with the given input arguments.
%
%      RECGNITION('Property','Value',...) creates a new RECGNITION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before recgnition_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to recgnition_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help recgnition

% Last Modified by GUIDE v2.5 26-Mar-2015 18:17:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @recgnition_OpeningFcn, ...
                   'gui_OutputFcn',  @recgnition_OutputFcn, ...
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


% --- Executes just before recgnition is made visible.
function recgnition_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to recgnition (see VARARGIN)

% Choose default command line output for recgnition
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
% UIWAIT makes recgnition wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = recgnition_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fprintf('打开文件中...')
filename = '../sounds/0.wav';
[xread, FS] = wavread(filename);
fprintf('打开文件成功');
fprintf('文件大小为:');
data_num=length(xread);

handles.signal=xread;
handles.FS=FS;
guidata(hObject,handles);
axes(handles.axes1);cla reset;box on;set(gca,'XTickLabel',[],'YTickLabel',[]);
axes(handles.axes1)
disp(data_num)
plot(xread)
title('数字0的原始信号');

function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
