figure(1)
plot(wm.time,wm.signals.values,'k');
grid on
xlabel('Times(s)');
ylabel('���ת��(r/min)');

figure(2)
plot(te.time,te.signals.values,'k');
grid on
xlabel('Times(s)');
ylabel('���ת��Te(N.m)');

figure(3)
plot(iabc.time,iabc.signals.values);
grid on
xlabel('Times(s)');
ylabel('�������iabc(A)');

figure(4)
plot(flux.time,flux.signals.values);
grid on
xlabel('Times(s)');
ylabel('����(Wb)');