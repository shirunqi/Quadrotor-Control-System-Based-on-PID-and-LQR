clc
clear all
close all

%% �����ȡΪ0.6,�ȶ�ʱ��Ϊ2s(Ts = 3 * \xi * \omega_n)
kp = 4;
ki = 10.8; % ��������Ĺ�ʽ�����kp = 4, ki = 11.11;

%% ���ݺ���
G = tf([kp ki],[1 kp ki]);

%% ��Ծ��Ӧ
figure(1)
step(G);

%% �������ݺ���
G1 = tf([kp ki],[1 0 0]);
figure(2)
margin(G1);