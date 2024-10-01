function Per_Index = Objective_Funcregulator(k)

kp = k(1);
ki = k(2);

opt = simset('solver','ode23s','SrcWorkspace','Current');

y = sim('requlatorpart5.slx',[0 500],opt);


Error = y.E.Data;
t     = y.tout;

Per_Index = trapz(t,abs(Error));

end