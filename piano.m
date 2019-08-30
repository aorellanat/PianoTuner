function varargout = piano(varargin)
% PIANO MATLAB code for piano.fig
%      PIANO, by itself, creates a new PIANO or raises the existing
%      singleton*.
%if(handles.ls
% ls = 5;
% handles.ls = ls;
% guidata(handles);
% global signal1;
% signal1 = audiorecorder;
% handles.


% global signal2;
% signal2 = audiorecorder;
% global signal3;
% signal3 = audiorecorder;
% global signaldata1; global signaldata2; global signaldata3;
% signaldata1 = 0;
% signaldata2 = 0;
% signaldata3 = 0;
% global flag1; global flag2; global flag3;
% flag1 = 0;flag2 = 0;flag3  = 0;

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

% Last Modified by GUIDE v2.5 29-Aug-2019 21:04:08

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
handles.flag1 = 0;
handles.flag2 = 0;
handles.flag3 = 0;
s1 = audiorecorder; s2 = audiorecorder; s3= audiorecorder;
handles.signaldata1 = s1;
handles.signaldata2 = s2;
handles.signaldata3 = s3;

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

[audio,fs] = audioread('1.mp3');
audio      = audio(:,1)./max(audio(:,1));
dt         = 1/fs;
t          = linspace(0, length(audio)/fs, length(audio));
T          = max(t);
fftAudio   = fftshift(fft(audio));
mfft       = abs(fftAudio);
pfft       = angle(fftAudio)*(180/pi);
f          = linspace(-fs/2,fs/2,length(fftAudio));

axes(handles.axes1)
plot(f,mfft,'m.-')
axis([0 40 0 100]);

set(handles.txt_DisplayHz, 'String', "27.5 Hz");
set(handles.txt_KeyName, 'String', "Ao");


%[data, fs] = audioread('1.mp3');
%data_fft = fft(data);
%axes(handles.axes1)
%plot(abs(data_fft(:,1)))
%axis([0 2000 0 700]);


%[S, w] = audioToFFT('delfin.mp3');
%axes(handles.axes1);
% plot(signal);

%axes(handles.axes2);
%plot(w, abs((S(1:256)')));

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


set(handles.txt_DisplayHz, 'String', "30.868 Hz");
set(handles.txt_KeyName, 'String', "Bo");
% --- Executes on button press in key4.
function key4_Callback(hObject, eventdata, handles)
playAudio('4.mp3');
audioToFFT('4.mp3', handles);

set(handles.txt_DisplayHz, 'String', "32.703 Hz");
set(handles.txt_KeyName, 'String', "C1");

% --- Executes on button press in key6.
function key6_Callback(hObject, eventdata, handles)
playAudio('6.mp3');

set(handles.txt_DisplayHz, 'String', "36.708 Hz");
set(handles.txt_KeyName, 'String', "D1");

% --- Executes on button press in key8.
function key8_Callback(hObject, eventdata, handles)
playAudio('8.mp3');

set(handles.txt_DisplayHz, 'String', "41.203 Hz");
set(handles.txt_KeyName, 'String', "E1");

% --- Executes on button press in key9.
function key9_Callback(hObject, eventdata, handles)
playAudio('9.mp3');

set(handles.txt_DisplayHz, 'String', "43.654 Hz");
set(handles.txt_KeyName, 'String', "F1");

% --- Executes on button press in key11.
function key11_Callback(hObject, eventdata, handles)
playAudio('11.mp3');

set(handles.txt_DisplayHz, 'String', "48.999 Hz");
set(handles.txt_KeyName, 'String', "G1");
% --- Executes on button press in key13.
function key13_Callback(hObject, eventdata, handles)
playAudio('13.mp3');

set(handles.txt_DisplayHz, 'String', "55.0 Hz");
set(handles.txt_KeyName, 'String', "A1");

% --- Executes on button press in key15.
function key15_Callback(hObject, eventdata, handles)
playAudio('15.mp3');

set(handles.txt_DisplayHz, 'String', "61.735 Hz");
set(handles.txt_KeyName, 'String', "B1");

% --- Executes on button press in key16.
function key16_Callback(hObject, eventdata, handles)
playAudio('16.mp3');

set(handles.txt_DisplayHz, 'String', "65.406 Hz");
set(handles.txt_KeyName, 'String', "C2");

% --- Executes on button press in key18.
function key18_Callback(hObject, eventdata, handles)
playAudio('18.mp3');

set(handles.txt_DisplayHz, 'String', "73.416 Hz");
set(handles.txt_KeyName, 'String', "D2");
% --- Executes on button press in key20.
function key20_Callback(hObject, eventdata, handles)
playAudio('20.mp3');

set(handles.txt_DisplayHz, 'String', "82.407 Hz");
set(handles.txt_KeyName, 'String', "E2");

% --- Executes on button press in key21.
function key21_Callback(hObject, eventdata, handles)
playAudio('21.mp3');

set(handles.txt_DisplayHz, 'String', "87.307 Hz");
set(handles.txt_KeyName, 'String', "F2");

% --- Executes on button press in key23.
function key23_Callback(hObject, eventdata, handles)
playAudio('23.mp3');

set(handles.txt_DisplayHz, 'String', "97.999 Hz");
set(handles.txt_KeyName, 'String', "G2");
% --- Executes on button press in key25.
function key25_Callback(hObject, eventdata, handles)
playAudio('25.mp3');

set(handles.txt_DisplayHz, 'String', "110.00 Hz");
set(handles.txt_KeyName, 'String', "A2");

% --- Executes on button press in key27.
function key27_Callback(hObject, eventdata, handles)
playAudio('27.mp3');

set(handles.txt_DisplayHz, 'String', "123.47 Hz");
set(handles.txt_KeyName, 'String', "B2");

% --- Executes on button press in key28.
function key28_Callback(hObject, eventdata, handles)
playAudio('28.mp3');

set(handles.txt_DisplayHz, 'String', "130.81 Hz");
set(handles.txt_KeyName, 'String', "C3");

% --- Executes on button press in key30.
function key30_Callback(hObject, eventdata, handles)
playAudio('30.mp3');

set(handles.txt_DisplayHz, 'String', "146.83 Hz");
set(handles.txt_KeyName, 'String', "D3");

% --- Executes on button press in key32.
function key32_Callback(hObject, eventdata, handles)
playAudio('32.mp3');

set(handles.txt_DisplayHz, 'String', "164.81 Hz");
set(handles.txt_KeyName, 'String', "E3");
% --- Executes on button press in key33.
function key33_Callback(hObject, eventdata, handles)
playAudio('33.mp3');

set(handles.txt_DisplayHz, 'String', "174.61 Hz");
set(handles.txt_KeyName, 'String', "F3");
% --- Executes on button press in key35.
function key35_Callback(hObject, eventdata, handles)
playAudio('35.mp3');

set(handles.txt_DisplayHz, 'String', "196.00 Hz");
set(handles.txt_KeyName, 'String', "G3");
% --- Executes on button press in key37.
function key37_Callback(hObject, eventdata, handles)
playAudio('37.mp3');

set(handles.txt_DisplayHz, 'String', "220.00 Hz");
set(handles.txt_KeyName, 'String', "A3");
% --- Executes on button press in key39.
function key39_Callback(hObject, eventdata, handles)
playAudio('39.mp3');

set(handles.txt_DisplayHz, 'String', "246.94 Hz");
set(handles.txt_KeyName, 'String', "B3");
% --- Executes on button press in key40.
function key40_Callback(hObject, eventdata, handles)
playAudio('40.mp3');

set(handles.txt_DisplayHz, 'String', "261.63 Hz");
set(handles.txt_KeyName, 'String', "C4");

% --- Executes on button press in key42.
function key42_Callback(hObject, eventdata, handles)
playAudio('42.mp3');

set(handles.txt_DisplayHz, 'String', "293.67 Hz");
set(handles.txt_KeyName, 'String', "D4");
% --- Executes on button press in key44.
function key44_Callback(hObject, eventdata, handles)
playAudio('44.mp3');

set(handles.txt_DisplayHz, 'String', "329.63 Hz");
set(handles.txt_KeyName, 'String', "E4");
% --- Executes on button press in key45.
function key45_Callback(hObject, eventdata, handles)
playAudio('45.mp3');

set(handles.txt_DisplayHz, 'String', "349.23 Hz");
set(handles.txt_KeyName, 'String', "F4");
% --- Executes on button press in key47.
function key47_Callback(hObject, eventdata, handles)
playAudio('47.mp3');

set(handles.txt_DisplayHz, 'String', "392.00 Hz");
set(handles.txt_KeyName, 'String', "G4");
% --- Executes on button press in key49.
function key49_Callback(hObject, eventdata, handles)
playAudio('49.mp3');

set(handles.txt_DisplayHz, 'String', "440.00 Hz");
set(handles.txt_KeyName, 'String', "A4");
% --- Executes on button press in key51.
function key51_Callback(hObject, eventdata, handles)
playAudio('51.mp3');

set(handles.txt_DisplayHz, 'String', "493.88 Hz");
set(handles.txt_KeyName, 'String', "B4");
% --- Executes on button press in key52.
function key52_Callback(hObject, eventdata, handles)
playAudio('52.mp3');

set(handles.txt_DisplayHz, 'String', "523.25 Hz");
set(handles.txt_KeyName, 'String', "C5");

% --- Executes on button press in key54.
function key54_Callback(hObject, eventdata, handles)
playAudio('54.mp3');

set(handles.txt_DisplayHz, 'String', "587.33 Hz");
set(handles.txt_KeyName, 'String', "D5");
% --- Executes on button press in key56.
function key56_Callback(hObject, eventdata, handles)
playAudio('56.mp3');

set(handles.txt_DisplayHz, 'String', "659.26 Hz");
set(handles.txt_KeyName, 'String', "E5");
% --- Executes on button press in key57.
function key57_Callback(hObject, eventdata, handles)
playAudio('57.mp3');

set(handles.txt_DisplayHz, 'String', "698.46 Hz");
set(handles.txt_KeyName, 'String', "F5");
% --- Executes on button press in key59.
function key59_Callback(hObject, eventdata, handles)
playAudio('59.mp3');

set(handles.txt_DisplayHz, 'String', "783.99 Hz");
set(handles.txt_KeyName, 'String', "G5");
% --- Executes on button press in key61.
function key61_Callback(hObject, eventdata, handles)
playAudio('61.mp3');

set(handles.txt_DisplayHz, 'String', "880.00 Hz");
set(handles.txt_KeyName, 'String', "A5");
% --- Executes on button press in key63.
function key63_Callback(hObject, eventdata, handles)
playAudio('63.mp3');

set(handles.txt_DisplayHz, 'String', "987.77 Hz");
set(handles.txt_KeyName, 'String', "B5");
% --- Executes on button press in key64.
function key64_Callback(hObject, eventdata, handles)
playAudio('64.mp3');

set(handles.txt_DisplayHz, 'String', "1046.50 Hz");
set(handles.txt_KeyName, 'String', "C6");
% --- Executes on button press in key66.
function key66_Callback(hObject, eventdata, handles)
playAudio('66.mp3');

set(handles.txt_DisplayHz, 'String', "1174.66 Hz");
set(handles.txt_KeyName, 'String', "D6");
% --- Executes on button press in key68.
function key68_Callback(hObject, eventdata, handles)
playAudio('68.mp3');

set(handles.txt_DisplayHz, 'String', "1318.51 Hz");
set(handles.txt_KeyName, 'String', "E6");
% --- Executes on button press in key69.
function key69_Callback(hObject, eventdata, handles)
playAudio('69.mp3');

set(handles.txt_DisplayHz, 'String', "1396.91 Hz");
set(handles.txt_KeyName, 'String', "F6");
% --- Executes on button press in key71.
function key71_Callback(hObject, eventdata, handles)
playAudio('71.mp3');

set(handles.txt_DisplayHz, 'String', "1567.98 Hz");
set(handles.txt_KeyName, 'String', "G6");
% --- Executes on button press in key73.
function key73_Callback(hObject, eventdata, handles)
playAudio('73.mp3');

set(handles.txt_DisplayHz, 'String', "1760.00 Hz");
set(handles.txt_KeyName, 'String', "A6");
% --- Executes on button press in key75.
function key75_Callback(hObject, eventdata, handles)
playAudio('75.mp3');

set(handles.txt_DisplayHz, 'String', "1975.53 Hz");
set(handles.txt_KeyName, 'String', "B6");
% --- Executes on button press in key76.
function key76_Callback(hObject, eventdata, handles)
playAudio('76.mp3');

set(handles.txt_DisplayHz, 'String', "2093.00 Hz");
set(handles.txt_KeyName, 'String', "C7");
% --- Executes on button press in key78.
function key78_Callback(hObject, eventdata, handles)
playAudio('78.mp3');

set(handles.txt_DisplayHz, 'String', "2349.32 Hz");
set(handles.txt_KeyName, 'String', "D7");
% --- Executes on button press in key80.
function key80_Callback(hObject, eventdata, handles)
playAudio('80.mp3');

set(handles.txt_DisplayHz, 'String', "2637.02 Hz");
set(handles.txt_KeyName, 'String', "E7");
% --- Executes on button press in key81.
function key81_Callback(hObject, eventdata, handles)
playAudio('81.mp3');

set(handles.txt_DisplayHz, 'String', "2793.83 Hz");
set(handles.txt_KeyName, 'String', "F7");
% --- Executes on button press in key83.
function key83_Callback(hObject, eventdata, handles)
playAudio('83.mp3');

set(handles.txt_DisplayHz, 'String', "3135.96 Hz");
set(handles.txt_KeyName, 'String', "G7");
% --- Executes on button press in key85.
function key85_Callback(hObject, eventdata, handles)
playAudio('85.mp3');

set(handles.txt_DisplayHz, 'String', "3520.00 Hz");
set(handles.txt_KeyName, 'String', "A7");
% --- Executes on button press in key87.
function key87_Callback(hObject, eventdata, handles)
playAudio('87.mp3');

set(handles.txt_DisplayHz, 'String', "3951.07 Hz");
set(handles.txt_KeyName, 'String', "B7");
% --- Executes on button press in key88.
function key88_Callback(hObject, eventdata, handles)
playAudio('88.mp3');

set(handles.txt_DisplayHz, 'String', "4186.01 Hz");
set(handles.txt_KeyName, 'String', "C8");

% --- Executes on button press in key2.
function key2_Callback(hObject, eventdata, handles)
playAudio('2.mp3');


[audio,fs] = audioread('2.mp3'); 
fs
audio      = audio(:,1)./max(audio(:,1));
dt         = 1/fs;
t          = linspace(0, length(audio)/fs, length(audio));
T          = max(t);
fftAudio   = fftshift(fft(audio));
mfft       = abs(fftAudio);
pfft       = angle(fftAudio)*(180/pi);
f          = linspace(-fs/2,fs/2,length(fftAudio));

axes(handles.axes1)
plot(f,mfft,'m.-')
axis([0 40 0 200]);

set(handles.txt_DisplayHz, 'String', "29.135 Hz");
set(handles.txt_KeyName, 'String', "Ao#");



% --- Executes on button press in key5.
function key5_Callback(hObject, eventdata, handles)
playAudio('5.mp3');

set(handles.txt_DisplayHz, 'String', "34.648 Hz");
set(handles.txt_KeyName, 'String', "C1#");

% --- Executes on button press in key7.
function key7_Callback(hObject, eventdata, handles)
playAudio('7.mp3');

set(handles.txt_DisplayHz, 'String', "38.891 Hz");
set(handles.txt_KeyName, 'String', "D1#");

% --- Executes on button press in key10.
function key10_Callback(hObject, eventdata, handles)
playAudio('10.mp3');

set(handles.txt_DisplayHz, 'String', "46.249 Hz");
set(handles.txt_KeyName, 'String', "F1#");

% --- Executes on button press in key12.
function key12_Callback(hObject, eventdata, handles)
playAudio('12.mp3');

set(handles.txt_DisplayHz, 'String', "51.913 Hz");
set(handles.txt_KeyName, 'String', "G1#");

% --- Executes on button press in key14.
function key14_Callback(hObject, eventdata, handles)
playAudio('14.mp3');

set(handles.txt_DisplayHz, 'String', "58.271 Hz");
set(handles.txt_KeyName, 'String', "A1#");

% --- Executes on button press in key17.
function key17_Callback(hObject, eventdata, handles)
playAudio('17.mp3');

set(handles.txt_DisplayHz, 'String', "69.296 Hz");
set(handles.txt_KeyName, 'String', "C2#");

% --- Executes on button press in key19.
function key19_Callback(hObject, eventdata, handles)
playAudio('19.mp3');

set(handles.txt_DisplayHz, 'String', "77.782 Hz");
set(handles.txt_KeyName, 'String', "D2#");

% --- Executes on button press in key22.
function key22_Callback(hObject, eventdata, handles)
playAudio('22.mp3');

set(handles.txt_DisplayHz, 'String', "92.499 Hz");
set(handles.txt_KeyName, 'String', "F2#");

% --- Executes on button press in key24.
function key24_Callback(hObject, eventdata, handles)
playAudio('24.mp3');

set(handles.txt_DisplayHz, 'String', "103.83 Hz");
set(handles.txt_KeyName, 'String', "G2#");

% --- Executes on button press in key26.
function key26_Callback(hObject, eventdata, handles)
playAudio('26.mp3');

set(handles.txt_DisplayHz, 'String', "116.54 Hz");
set(handles.txt_KeyName, 'String', "A2#");

% --- Executes on button press in key29.
function key29_Callback(hObject, eventdata, handles)
playAudio('29.mp3');

set(handles.txt_DisplayHz, 'String', "138.59 Hz");
set(handles.txt_KeyName, 'String', "C3#");
% --- Executes on button press in key31.
function key31_Callback(hObject, eventdata, handles)
playAudio('31.mp3');

set(handles.txt_DisplayHz, 'String', "155.56 Hz");
set(handles.txt_KeyName, 'String', "D3#");

% --- Executes on button press in key34.
function key34_Callback(hObject, eventdata, handles)
playAudio('34.mp3');

set(handles.txt_DisplayHz, 'String', "185.00 Hz");
set(handles.txt_KeyName, 'String', "F3#");

% --- Executes on button press in key36.
function key36_Callback(hObject, eventdata, handles)
playAudio('36.mp3');

set(handles.txt_DisplayHz, 'String', "207.65 Hz");
set(handles.txt_KeyName, 'String', "G3#");
% --- Executes on button press in key38.
function key38_Callback(hObject, eventdata, handles)
playAudio('38.mp3');

set(handles.txt_DisplayHz, 'String', "233.08 Hz");
set(handles.txt_KeyName, 'String', "A3#");
% --- Executes on button press in key41.
function key41_Callback(hObject, eventdata, handles)
playAudio('41.mp3');

set(handles.txt_DisplayHz, 'String', "277.18 Hz");
set(handles.txt_KeyName, 'String', "C4#");
% --- Executes on button press in key43.
function key43_Callback(hObject, eventdata, handles)
playAudio('43.mp3');

set(handles.txt_DisplayHz, 'String', "311.13 Hz");
set(handles.txt_KeyName, 'String', "D4#");
% --- Executes on button press in key46.
function key46_Callback(hObject, eventdata, handles)
playAudio('46.mp3');

set(handles.txt_DisplayHz, 'String', "369.99 Hz");
set(handles.txt_KeyName, 'String', "F4#");
% --- Executes on button press in key48.
function key48_Callback(hObject, eventdata, handles)
playAudio('48.mp3');

set(handles.txt_DisplayHz, 'String', "415.30 Hz");
set(handles.txt_KeyName, 'String', "G4#");
% --- Executes on button press in key50.
function key50_Callback(hObject, eventdata, handles)
playAudio('50.mp3');

set(handles.txt_DisplayHz, 'String', "466.16 Hz");
set(handles.txt_KeyName, 'String', "A4#");
% --- Executes on button press in key53.
function key53_Callback(hObject, eventdata, handles)
playAudio('53.mp3');

set(handles.txt_DisplayHz, 'String', "554.37 Hz");
set(handles.txt_KeyName, 'String', "C5#");
% --- Executes on button press in key55.
function key55_Callback(hObject, eventdata, handles)
playAudio('55.mp3');

set(handles.txt_DisplayHz, 'String', "622.25 Hz");
set(handles.txt_KeyName, 'String', "D5#");
% --- Executes on button press in key58.
function key58_Callback(hObject, eventdata, handles)
playAudio('58.mp3');

set(handles.txt_DisplayHz, 'String', "739.99 Hz");
set(handles.txt_KeyName, 'String', "F5#");
% --- Executes on button press in key60.
function key60_Callback(hObject, eventdata, handles)
playAudio('60.mp3');

set(handles.txt_DisplayHz, 'String', "830.61 Hz");
set(handles.txt_KeyName, 'String', "G5#");
% --- Executes on button press in key62.
function key62_Callback(hObject, eventdata, handles)
playAudio('62.mp3');

set(handles.txt_DisplayHz, 'String', "932.33 Hz");
set(handles.txt_KeyName, 'String', "A5#");
% --- Executes on button press in key65.
function key65_Callback(hObject, eventdata, handles)
playAudio('65.mp3');

set(handles.txt_DisplayHz, 'String', "1108.73 Hz");
set(handles.txt_KeyName, 'String', "C6#");
% --- Executes on button press in key67.
function key67_Callback(hObject, eventdata, handles)
playAudio('67.mp3');

set(handles.txt_DisplayHz, 'String', "1244.51 Hz");
set(handles.txt_KeyName, 'String', "D6#");
% --- Executes on button press in key70.
function key70_Callback(hObject, eventdata, handles)
playAudio('70.mp3');

set(handles.txt_DisplayHz, 'String', "1479.98 Hz");
set(handles.txt_KeyName, 'String', "F6#");
% --- Executes on button press in key72.
function key72_Callback(hObject, eventdata, handles)
playAudio('72.mp3');

set(handles.txt_DisplayHz, 'String', "1661.22 Hz");
set(handles.txt_KeyName, 'String', "G6#");
% --- Executes on button press in key74.
function key74_Callback(hObject, eventdata, handles)
playAudio('74.mp3');

set(handles.txt_DisplayHz, 'String', "1864.66 Hz");
set(handles.txt_KeyName, 'String', "A6#");
% --- Executes on button press in key77.
function key77_Callback(hObject, eventdata, handles)
playAudio('77.mp3');

set(handles.txt_DisplayHz, 'String', "2217.46 Hz");
set(handles.txt_KeyName, 'String', "C7#");
% --- Executes on button press in key79.
function key79_Callback(hObject, eventdata, handles)
playAudio('79.mp3');

set(handles.txt_DisplayHz, 'String', "2489.02 Hz");
set(handles.txt_KeyName, 'String', "D7#");
% --- Executes on button press in key82.
function key82_Callback(hObject, eventdata, handles)
playAudio('82.mp3');

set(handles.txt_DisplayHz, 'String', "2959.96 Hz");
set(handles.txt_KeyName, 'String', "F7#");
% --- Executes on button press in key84.
function key84_Callback(hObject, eventdata, handles)
playAudio('84.mp3');

set(handles.txt_DisplayHz, 'String', "3322.44 Hz");
set(handles.txt_KeyName, 'String', "G7#");
% --- Executes on button press in key86.
function key86_Callback(hObject, eventdata, handles)
playAudio('86.mp3');

set(handles.txt_DisplayHz, 'String', "3729.31 Hz");
set(handles.txt_KeyName, 'String', "A7#");
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


% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1


% --- Executes on button press in toggleB.
function toggleB_Callback(hObject, eventdata, handles)
boton_estado = get(handles.toggleB,'value');

if(boton_estado ==1)
    if(handles.flag1 == 0)
        set(handles.toggleB,'String','Stop Recording1 ');

        sig1 = audiorecorder;
        record(sig1);    
         handles.signaldata1= sig1;
          guidata(hObject,handles);

    elseif(handles.flag2 == 0)
        set(handles.toggleB,'String','Stop Recording2 ');

        sig2 = audiorecorder;
        record(sig2);    
         handles.signaldata2= sig2;
          guidata(hObject,handles);
    elseif(handles.flag3 == 0)
        set(handles.toggleB,'String','Stop Recording3 ');

        sig3 = audiorecorder;
        record(sig3);    
         handles.signaldata3= sig3;
          guidata(hObject,handles);
    else
        set(handles.toggleB,'String','all records saved ');
    end
elseif(boton_estado == 0)
    if(handles.flag1 == 0)
        s1 = handles.signaldata1;
        stop(s1);
        handles.flag1 = 1;
        handles.signaldata1 = getaudiodata(s1);
        sound(handles.signaldata1);
         guidata(hObject,handles);
        set(handles.toggleB,'String','start Recording 2 ');        
    elseif(handles.flag2 == 0)
         s2 = handles.signaldata2;
        stop(s2);
        handles.flag2 = 1;
        handles.signaldata2 = getaudiodata(s2);
        sound(handles.signaldata2);
        guidata(hObject,handles);
        set(handles.toggleB,'String','start Recording 3 ');
    elseif(handles.flag3 == 0)
        s3 = handles.signaldata3;
        stop(s3);
        handles.flag3 = 1;
        handles.signaldata3 = getaudiodata(s3);
        sound(handles.signaldata3);
        guidata(hObject,handles);
        set(handles.toggleB,'String','end recording ');

    end
end
        
% hObject    handle to toggleB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of toggleB


% --- Executes on button press in radiobutton5.
function radiobutton5_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton5


% --- Executes during object creation, after setting all properties.
function uibuttongroup3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uibuttongroup3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
