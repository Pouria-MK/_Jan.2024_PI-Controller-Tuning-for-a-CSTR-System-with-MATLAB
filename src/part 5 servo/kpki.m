clc
clear variables
close all

kp = 0.01;
ki = 0.0001;
k = [kp,ki];

opt = simset('Solver','ode45','SrcWorkspace','Current');
y   = sim('part5servo.slx',[0 500],opt);

Error = y.E.Data;
Tr    = y.Tr.Data;
t     = y.tout;

plot(t,Error)
figure
plot(t,Tr)

opt   = optimset('Display','Iter','MaxIter',30);
K_opt = fminsearch(@Objective_Func5, k, opt);

kp = K_opt(1);
ki = K_opt(2);
display(K_opt)
