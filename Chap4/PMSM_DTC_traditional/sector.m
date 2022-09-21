function [sys,x0,str,ts] = sector(t,x,u,flag)

% The following outlines the general structure of an S-function.
%
switch flag,   %�ж�flag������ǰ�����ĸ�״̬

  %%%%%%%%%%%%%%%%%%
  % Initialization %
  %%%%%%%%%%%%%%%%%%
  case 0,
  [sys,x0,str,ts]=mdlInitializeSizes; 
  %%%%%%%%%%%
  % Outputs %
  %%%%%%%%%%%
  case 3,
    sys=mdlOutputs(t,x,u);
  case {2,4,9},
    sys=[];

  %%%%%%%%%%%%%%%%%%%%
  % Unexpected flags %
  %%%%%%%%%%%%%%%%%%%%
  otherwise
    error(['Unhandled flag = ',num2str(flag)]);

end

% end sfuntmpl

%
%=============================================================================
% mdlInitializeSizes
% Return the sizes, initial conditions, and sample times for the S-function.
%=============================================================================
%
function [sys,x0,str,ts]=mdlInitializeSizes

%
% call simsizes for a sizes structure, fill it in and convert it to a
% sizes array.
%
% Note that in this example, the values are hard coded.  This is not a
% recommended practice as the characteristics of the block are typically
% defined by the S-function parameters.
%
sizes = simsizes; %�������ò����Ľṹ����simsizes������

sizes.NumContStates  = 0; %����״̬�����ĸ���
sizes.NumDiscStates  = 0; %��ɢ״̬�����ĸ���
sizes.NumOutputs     = 1; %��������ĸ���
sizes.NumInputs      = 2; %��������ĸ���
sizes.DirFeedthrough = 1; %�Ƿ���ڷ���
sizes.NumSampleTimes = 1; %����ʱ�������������һ��

sys = simsizes(sizes); %������󸳸�sys���
x0  = [];  %״̬��������Ϊ�գ���ʾû��״̬����
str = [];
ts  = [-1 0]; %����������Ϊ0��ʾ������ϵͳ��-1��ʾ���õ�ǰ�Ĳ���ʱ��

% end mdlInitializeSizes

%
%=============================================================================
% mdlOutputs
% Return the block outputs.
%=============================================================================
%
function sys=mdlOutputs(t,x,u)
if(u(1)==0) 
    N=1;    %�������ֵΪ0����ѹ�ο����ڵ�һ����
else
    a1=u(1); 
    b1=u(1)*(-0.5)+(sqrt(3)/2)*u(2); %%�������µļ��㹫ʽ�õ�
    c1=u(1)*(-0.5)-(sqrt(3)/2)*u(2);
    if a1>0
        a=0;
    else
        a=1;
    end
    if b1>0
        b=0;
    else
        b=1;
    end
    if c1>0
        c=0;
    else
        c=1;
    end
    N=4*a+2*b+c; %��������
end
    sys=N;

% end mdlOutputs
