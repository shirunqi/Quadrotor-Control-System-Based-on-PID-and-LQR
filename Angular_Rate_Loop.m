clc
clear all
close all

A = [0 0;1 0];
B = [41.25;0];
Q = [0.015 0;0 10];
R = 1;

%% 计算反馈增益矩阵
K = lqr(A,B,Q,R);

%% 传递函数
G = tf([130.4449],[1 16.9249 130.4449]);
figure(1)
bode(G);
grid on

figure(2)
margin(G);
grid on


figure(3)
step(G);
grid on

%% 开环传递函数
G1= tf([130.4449],[1 16.9249 0]);
figure(4)
margin(G1);
