figure(1)
plot(N.time,N.signals.values,'k');
grid on
xlabel('Times(s)');
ylabel('Sector');

figure(2)
plot(Tcm.time,Tcm.signals.values);
grid on
xlabel('Times(s)');
ylabel('�л���ʱ��Tcm');

figure(3)
plot(Ua.time,Ua.signals.values,'k');
grid on
xlabel('Times(s)');
ylabel('���ѹUa');