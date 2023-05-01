% MATLAB GUI game canon fire

function varargout = fire_canon(varargin)
% FIRE_CANON MATLAB code for fire_canon.fig
%      FIRE_CANON, by itself, creates a new FIRE_CANON or raises the existing
%      singleton*.
%
%      H = FIRE_CANON returns the handle to a new FIRE_CANON or the handle to
%      the existing singleton*.
%
%      FIRE_CANON('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FIRE_CANON.M with the given input arguments.
%
%      FIRE_CANON('Property','Value',...) creates a new FIRE_CANON or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before fire_canon_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to fire_canon_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help fire_canon

% Last Modified by GUIDE v2.5 04-Dec-2016 01:21:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @fire_canon_OpeningFcn, ...
                   'gui_OutputFcn',  @fire_canon_OutputFcn, ...
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


% --- Executes just before fire_canon is made visible.
function fire_canon_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to fire_canon (see VARARGIN)
clc
target=100*rand+50;
plot(target,0,'d','MarkerSize',10);
text(target,5,'\downarrow TARGET!!!');
axis([0 1.25*target 0 0.35*target]);
hold on
handles.target=target;
% Choose default command line output for fire_canon
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes fire_canon wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = fire_canon_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in firebtn.
function firebtn_Callback(hObject, eventdata, handles)
% hObject    handle to firebtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
v=str2num(get(handles.vedt,'String'));
a=str2num(get(handles.aedt,'String'));
t=0:0.05:1000;
ax=0;
ay=-9.81;
x=0+v*cosd(a).*t+(1/2)*ax.*t.^2;
y=0+v*sind(a).*t+(1/2)*ay.*t.^2;
positivyloc=find(y>=0);
posy=y(positivyloc);
posx=x(positivyloc);
comet(posx,posy);
xlabel('Distance covered (m)');
ylabel('Height (m)');
title('Thats how your Canon Grenade will travel!!!');
if abs(handles.target-max(posx))<=7
    set(handles.resulttxt,'String','It''s a hit. Target Destroyed!!! Well done Captain Chris')
    playagain=menu('Would you like to play again','Yes!','No');
    if playagain == 2
        close
        msgbox('Thank you for playing. Have a great time ahead!');
    else close; fire_canon;
    end
elseif abs(handles.target-max(posx))<=20
    set(handles.resulttxt,'String','It''s close, keep trying Captain Chris')
else set(handles.resulttxt,'String','Oh no!, the target survives. Try again Captain Chris')
end


function vedt_Callback(hObject, eventdata, handles)
% hObject    handle to vedt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vedt as text
%        str2double(get(hObject,'String')) returns contents of vedt as a double


% --- Executes during object creation, after setting all properties.
function vedt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vedt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function aedt_Callback(hObject, eventdata, handles)
% hObject    handle to aedt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of aedt as text
%        str2double(get(hObject,'String')) returns contents of aedt as a double


% --- Executes during object creation, after setting all properties.
function aedt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to aedt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
movegui('center')
