figure(1)
plot(wm.time,wm.signals.values,'k');
grid on
xlabel('Times(s)');
ylabel('���ת��(r/min)');

figure(2)
plot(Te.time,Te.signals.values,'k');
grid on
xlabel('Times(s)');
ylabel('���ת��Te(N.m)');

figure(3)
plot(Falpha,Fbeta);
grid on
xlabel('Falpha(V)');
ylabel('Fbeta(V)');

figure(4)
plot(flux.time,flux.signals.values);
grid on
xlabel('Times(s)');
ylabel('����(Wb)');