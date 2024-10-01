clc
A = linsys1.a;
B = linsys1.b;
C = linsys1.c;
D = linsys1.d;
Gss = ss(A,B,C,D);
Gtf = tf(Gss);
display(Gtf)