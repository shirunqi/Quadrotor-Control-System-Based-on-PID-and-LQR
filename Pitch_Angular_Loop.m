clc
clear all
close all

%% 阻尼比取为0.6,稳定时间为2s(Ts = 3 * \xi * \omega_n)
kp = 4;
ki = 10.8; % 依据上面的公式算出来kp = 4, ki = 11.11;

%% 传递函数
G = tf([kp ki],[1 kp ki]);

%% 阶跃响应
figure(1)
step(G);

%% 开环传递函数
G1 = tf([kp ki],[1 0 0]);
figure(2)
margin(G1);