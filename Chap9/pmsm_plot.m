figure(1)
plot(wm.time,wm.signals.values,'k');
grid on
xlabel('Times(s)');
ylabel('�����е���ٶ�wm(rad/s)');

figure(2)
plot(Te.time,Te.signals.values,'k');
grid on
xlabel('Times(s)');
ylabel('���ת��Te(N.m)');

figure(3)
plot(idq.time,idq.signals.values);
grid on
xlabel('Times(s)');
ylabel('���ӵ���idq(A)');

figure(4)
plot(ixy.time,ixy.signals.values);
grid on
xlabel('Times(s)');
ylabel('���ӵ���ixy(A)');

figure(5)
plot(iau.time,iau.signals.values);
grid on
xlabel('Times(s)');
ylabel('�����iau(A)');