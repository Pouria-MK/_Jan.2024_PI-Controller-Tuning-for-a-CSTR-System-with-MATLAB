function partthree = Eqs(x,u)
%outputs
Ca = x(1);
Cb = x(2);
Tr = x(3);
Tc = x(4);

%inputs
Qc = u(1);

Caf = 2.85;
Cbf = 0;
Trf = 323;
Tcf = 293;
k01 = 5.616*10^16;
k02 = 1.128*10^18;
h1 = 4.8*10^4; 
E1 = 13477;% Eone = E1/R
E2 = 15290;% Etwo = E2/R
h2 = 2.2*10^4;
vr = 1.2;
vc = 0.64;
rhor = 985;
rhoc = 998;
Ah = 5.5;
Qr = 0.08;
Cpr = 4.05;
Cpc = 4.18;
U = 43.5;


% for looking better
QR = Qr/vr;
UR = (Ah*U/(vr*rhor*Cpr));
UC = (Ah*U/(vc*rhoc*Cpc));

% equations -------------------------------------------
dca = -(QR + k01*exp(-E1/Tr))*Ca + QR*Caf;
dcb = -(QR + k02*exp(-E2/Tr))*Cb + (k01*exp(-E1/Tr))*Ca+Cbf*QR;
dTr = (h1*((k01*exp(-E1/Tr))*Ca)+h2*((k02*exp(-E2/Tr))*Cb))/(rhor*Cpr) + QR*(Trf-Tr)+ UR*(Tc-Tr);
dTc = (Qc/vc)*(Tcf-Tc) + UC*(Tr-Tc);
partthree = [dca dcb dTr dTc];
end
