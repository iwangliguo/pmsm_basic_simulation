figure(1)
plot(wm.time,wm.signals.values);
grid on
xlabel('Times(s)');
ylabel('���ת�ٹ���ֵ��ʵ��ֵ(r/min)');

figure(2)
plot(wm1.time,wm1.signals.values);
grid on
xlabel('Times(s)');
ylabel('���ת�ٹ������(r/min)');

figure(3)
plot(The.time,The.signals.values);
grid on
xlabel('Times(s)');
ylabel('���ת��λ�ù���ֵ��ʵ��ֵ(rad)');

figure(4)
plot(The1.time,The1.signals.values);
grid on
xlabel('Times(s)');
ylabel('���ת��λ�ù������(rad)');

figure(5)
plot(Ed.time,Ed.signals.values,Eq.time,Eq.signals.values);
grid on
xlabel('Times(s)');
ylabel('�����Ӧ����Ed,Eq�Ĺ���ֵ(V)');