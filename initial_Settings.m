clear , clc ,close all 
% Initial Values

fix_step=0.1;
% controller gain matrices
Kp=7*eye(2);
Kv=7*eye(2);

%loading trajectory for number 2
%desired position
load('number2.mat')
s=0.0005.*s;



s(1,1:end)=s(1,1:end)+0.1*1.2;
s(2,1:end)=s(2,1:end)+0.1*1.2;
% obtaning velocity ( desired velocity)
v1=[0,diff(s(1,1:end))];
v2=[0,diff(s(2,1:end))];

s1=[v1;v2];

%desired acceleration
a1=[0,diff(s1(1,1:end))];
a2=[0,diff(s1(2,1:end))];

s2=[a1;a2];