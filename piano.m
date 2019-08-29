function varargout = piano(varargin)
% PIANO MATLAB code for piano.fig
%      PIANO, by itself, creates a new PIANO or raises the existing
%      singleton*.
%
%      H = PIANO returns the handle to a new PIANO or the handle to
%      the existing singleton*.
%
%      PIANO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PIANO.M with the given input arguments.
%
%      PIANO('Property','Value',...) creates a new PIANO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before piano_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to piano_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help piano

% Last Modified by GUIDE v2.5 29-Aug-2019 00:13:39

% Begin initialization code - KEY1 NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @piano_OpeningFcn, ...
                   'gui_OutputFcn',  @piano_OutputFcn, ...
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
% End initialization code - KEY1 NOT EDIT


% --- Executes just before piano is made visible.
function piano_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to piano (see VARARGIN)

% Choose default command line output for piano
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes piano wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = piano_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in key1.
function key1_Callback(hObject, eventdata, handles)
playAudio('1.mp3');

[S, w] = audioToFFT('delfin.mp3');
axes(handles.axes1);
% plot(signal);

axes(handles.axes2);
plot(w, abs((S(1:256)')));

% --- Executes when figure1 is resized.
function figure1_SizeChangedFcn(hObject, eventdata, handles)
%set(hObject,'units','normalized','outerposition',[0 0 1 1])
imshow('piano.png');

% --- Executes on button press in pushbutton104.
function pushbutton104_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton104 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key3.
function key3_Callback(hObject, eventdata, handles)
playAudio('3.mp3');

% --- Executes on button press in key4.
function key4_Callback(hObject, eventdata, handles)
playAudio('4.mp3');
audioToFFT('4.mp3', handles);

% --- Executes on button press in key6.
function key6_Callback(hObject, eventdata, handles)
playAudio('6.mp3');

% --- Executes on button press in key8.
function key8_Callback(hObject, eventdata, handles)
% hObject    handle to key8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key9.
function key9_Callback(hObject, eventdata, handles)
% hObject    handle to key9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key11.
function key11_Callback(hObject, eventdata, handles)
% hObject    handle to key11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key13.
function key13_Callback(hObject, eventdata, handles)
% hObject    handle to key13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key15.
function key15_Callback(hObject, eventdata, handles)
% hObject    handle to key15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key16.
function key16_Callback(hObject, eventdata, handles)
% hObject    handle to key16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key18.
function key18_Callback(hObject, eventdata, handles)
% hObject    handle to key18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key20.
function key20_Callback(hObject, eventdata, handles)
% hObject    handle to key20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key21.
function key21_Callback(hObject, eventdata, handles)
% hObject    handle to key21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key23.
function key23_Callback(hObject, eventdata, handles)
% hObject    handle to key23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key25.
function key25_Callback(hObject, eventdata, handles)
% hObject    handle to key25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key27.
function key27_Callback(hObject, eventdata, handles)
% hObject    handle to key27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key28.
function key28_Callback(hObject, eventdata, handles)
% hObject    handle to key28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key30.
function key30_Callback(hObject, eventdata, handles)
% hObject    handle to key30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key32.
function key32_Callback(hObject, eventdata, handles)
% hObject    handle to key32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key33.
function key33_Callback(hObject, eventdata, handles)
% hObject    handle to key33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key35.
function key35_Callback(hObject, eventdata, handles)
% hObject    handle to key35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key37.
function key37_Callback(hObject, eventdata, handles)
% hObject    handle to key37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key39.
function key39_Callback(hObject, eventdata, handles)
% hObject    handle to key39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key40.
function key40_Callback(hObject, eventdata, handles)
% hObject    handle to key40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key42.
function key42_Callback(hObject, eventdata, handles)
% hObject    handle to key42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key44.
function key44_Callback(hObject, eventdata, handles)
% hObject    handle to key44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key45.
function key45_Callback(hObject, eventdata, handles)
% hObject    handle to key45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key47.
function key47_Callback(hObject, eventdata, handles)
% hObject    handle to key47 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key49.
function key49_Callback(hObject, eventdata, handles)
% hObject    handle to key49 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key51.
function key51_Callback(hObject, eventdata, handles)
% hObject    handle to key51 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key52.
function key52_Callback(hObject, eventdata, handles)
% hObject    handle to key52 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key54.
function key54_Callback(hObject, eventdata, handles)
% hObject    handle to key54 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key56.
function key56_Callback(hObject, eventdata, handles)
% hObject    handle to key56 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key57.
function key57_Callback(hObject, eventdata, handles)
% hObject    handle to key57 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key59.
function key59_Callback(hObject, eventdata, handles)
% hObject    handle to key59 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key61.
function key61_Callback(hObject, eventdata, handles)
% hObject    handle to key61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key63.
function key63_Callback(hObject, eventdata, handles)
% hObject    handle to key63 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key64.
function key64_Callback(hObject, eventdata, handles)
% hObject    handle to key64 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key66.
function key66_Callback(hObject, eventdata, handles)
% hObject    handle to key66 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key68.
function key68_Callback(hObject, eventdata, handles)
% hObject    handle to key68 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key69.
function key69_Callback(hObject, eventdata, handles)
% hObject    handle to key69 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key71.
function key71_Callback(hObject, eventdata, handles)
% hObject    handle to key71 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key73.
function key73_Callback(hObject, eventdata, handles)
% hObject    handle to key73 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key75.
function key75_Callback(hObject, eventdata, handles)
% hObject    handle to key75 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key76.
function key76_Callback(hObject, eventdata, handles)
% hObject    handle to key76 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key78.
function key78_Callback(hObject, eventdata, handles)
% hObject    handle to key78 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key80.
function key80_Callback(hObject, eventdata, handles)
% hObject    handle to key80 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key81.
function key81_Callback(hObject, eventdata, handles)
% hObject    handle to key81 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key83.
function key83_Callback(hObject, eventdata, handles)
% hObject    handle to key83 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key85.
function key85_Callback(hObject, eventdata, handles)
% hObject    handle to key85 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key87.
function key87_Callback(hObject, eventdata, handles)
% hObject    handle to key87 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key88.
function key88_Callback(hObject, eventdata, handles)
playAudio('88.mp3');

% --- Executes on button press in key2.
function key2_Callback(hObject, eventdata, handles)
playAudio('2.mp3');


% --- Executes on button press in key5.
function key5_Callback(hObject, eventdata, handles)
playAudio('5.mp3');

% --- Executes on button press in key7.
function key7_Callback(hObject, eventdata, handles)
playAudio('7.mp3');

% --- Executes on button press in key10.
function key10_Callback(hObject, eventdata, handles)
% hObject    handle to key10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key12.
function key12_Callback(hObject, eventdata, handles)
% hObject    handle to key12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key14.
function key14_Callback(hObject, eventdata, handles)
% hObject    handle to key14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key17.
function key17_Callback(hObject, eventdata, handles)
% hObject    handle to key17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key19.
function key19_Callback(hObject, eventdata, handles)
% hObject    handle to key19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key22.
function key22_Callback(hObject, eventdata, handles)
% hObject    handle to key22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key24.
function key24_Callback(hObject, eventdata, handles)
% hObject    handle to key24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key26.
function key26_Callback(hObject, eventdata, handles)
% hObject    handle to key26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key29.
function key29_Callback(hObject, eventdata, handles)
% hObject    handle to key29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key31.
function key31_Callback(hObject, eventdata, handles)
% hObject    handle to key31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key34.
function key34_Callback(hObject, eventdata, handles)
% hObject    handle to key34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key36.
function key36_Callback(hObject, eventdata, handles)
% hObject    handle to key36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key38.
function key38_Callback(hObject, eventdata, handles)
% hObject    handle to key38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key41.
function key41_Callback(hObject, eventdata, handles)
% hObject    handle to key41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key43.
function key43_Callback(hObject, eventdata, handles)
% hObject    handle to key43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key46.
function key46_Callback(hObject, eventdata, handles)
% hObject    handle to key46 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key48.
function key48_Callback(hObject, eventdata, handles)
% hObject    handle to key48 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key50.
function key50_Callback(hObject, eventdata, handles)
% hObject    handle to key50 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key53.
function key53_Callback(hObject, eventdata, handles)
% hObject    handle to key53 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key55.
function key55_Callback(hObject, eventdata, handles)
% hObject    handle to key55 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key58.
function key58_Callback(hObject, eventdata, handles)
% hObject    handle to key58 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key60.
function key60_Callback(hObject, eventdata, handles)
% hObject    handle to key60 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key62.
function key62_Callback(hObject, eventdata, handles)
% hObject    handle to key62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key65.
function key65_Callback(hObject, eventdata, handles)
% hObject    handle to key65 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key67.
function key67_Callback(hObject, eventdata, handles)
% hObject    handle to key67 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key70.
function key70_Callback(hObject, eventdata, handles)
% hObject    handle to key70 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key72.
function key72_Callback(hObject, eventdata, handles)
% hObject    handle to key72 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key74.
function key74_Callback(hObject, eventdata, handles)
% hObject    handle to key74 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key77.
function key77_Callback(hObject, eventdata, handles)
% hObject    handle to key77 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key79.
function key79_Callback(hObject, eventdata, handles)
% hObject    handle to key79 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key82.
function key82_Callback(hObject, eventdata, handles)
% hObject    handle to key82 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key84.
function key84_Callback(hObject, eventdata, handles)
% hObject    handle to key84 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in key86.
function key86_Callback(hObject, eventdata, handles)
% hObject    handle to key86 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over key8.
function key8_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to key8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function audioToFFT(pathAudio, handles)

[s, Fs] = audioread(pathAudio);
s = s(:,1);

%Fourier transforms is to find the frequency components of a signal 
%Fs = 10000;                    % Sampling frequency
T = 1/Fs;                     % Sample time
L = 1000;                     % Length of signal
t = (0:L-1)*T;                % Time vector
% Sum of a 50 Hz sinusoid and a 120 Hz sinusoid
% x = 10*sin(2*pi*600*t) + 15*sin(2*pi*90*t); 
% y = x + 2*randn(size(t));     % Sinusoids plus noise

axes(handles.axes1);
plot(s)
xlabel('time (milliseconds)')

NFFT = 2^nextpow2(L); % Next power of 2 from length of y
Y = fft(s, NFFT)/L;
f = Fs/2*linspace(0,1,NFFT/2+1);
% Plot single-sided amplitude spectrum.
axes(handles.axes2);
plot(f,2*abs(Y(1:NFFT/2+1))) 
%axis([0 4500 0 30]);
xlabel('Frequency (Hz)')
ylabel('|Y(f)|')


% --- Executes on button press in pushbutton192.
function pushbutton192_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton192 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton193.
function pushbutton193_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton193 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton194.
function pushbutton194_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton194 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton195.
function pushbutton195_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton195 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton196.
function pushbutton196_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton196 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton197.
function pushbutton197_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton197 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function playAudio(pathAudio)
[y,Fs] = audioread(pathAudio);
sound(y,Fs);
