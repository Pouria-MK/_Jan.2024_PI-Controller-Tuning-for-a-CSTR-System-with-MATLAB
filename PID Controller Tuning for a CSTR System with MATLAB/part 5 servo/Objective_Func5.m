function Per_Index = Objective_Func5(k)

kp = k(1);
ki = k(2);

opt = simset('solver','ode45','SrcWorkspace','Current');

y = sim('part5servo.slx',[0 500],opt);


Error = y.E.Data;
t     = y.tout;

Per_Index = trapz(t,abs(Error));

end