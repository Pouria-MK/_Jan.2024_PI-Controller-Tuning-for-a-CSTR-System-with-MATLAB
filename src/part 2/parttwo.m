% Process control & design project
% Mojtaba Cheharborji - Pouria motahari 
% 99102904 - 99171099
% Dey-Bahman 1402

% Part 2
% constants ---------------------------------------
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
Caf = 2.85;
Tcf = 293;
Ah = 5.5;
Qr = 0.08;
Qc = 0.03;
Cpr = 4.05;
Cpc = 4.18;
U = 43.5;
Cbf = 0;
Trf = 323;

% for looking better

QR = Qr/vr;
QC = Qc/vc;

% equations -------------------------------------------
f = @(x) [-(QR + k01*exp(-E1/x(3)))*x(1) + QR*Caf;
    -(QR + k02*exp(-E2/x(3)))*x(2) + (k01*exp(-E1/x(3)))*x(1);
    (h1*((k01*exp(-E1/x(3)))*x(1))+h2*((k02*exp(-E2/x(3)))*x(2)))/(rhor*Cpr) + QR*(Trf-x(3))+ (Ah*U/(vr*rhor*Cpr))*(x(4)-x(3));
    QC*(Tcf-x(4)) + (Ah*U/(vc*rhoc*Cpc))*(x(3)-x(4))];

y=fsolve(f,[1,1,1,1]);
display(y)
