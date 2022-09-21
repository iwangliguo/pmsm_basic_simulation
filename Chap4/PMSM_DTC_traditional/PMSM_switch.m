function [sys,x0,str,ts] = PMSM_switch(t,x,u,flag)

% The following outlines the general structure of an S-function.
%
switch flag, %�ж�flag������ǰ�����ĸ�״̬

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
sizes = simsizes;%�������ò����Ľṹ����simsizes������

sizes.NumContStates  = 0;%����״̬�����ĸ���
sizes.NumDiscStates  = 0; %��ɢ״̬�����ĸ���
sizes.NumOutputs     = 1; %��������ĸ��� 
sizes.NumInputs      = 3; %��������ĸ���
sizes.DirFeedthrough = 1; %�Ƿ���ڷ���
sizes.NumSampleTimes = 1; %����ʱ�������������һ��

sys = simsizes(sizes);%������󸳸�sys���
x0  = [];%״̬��������Ϊ�գ���ʾû��״̬����
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
 %%�������µı�����õ�
V_Table=[2 4 6 1 3 5;4 1 5 2 6 3;3 6 2 5 1 4 ;5 3 1 6 4 2];
x=2*u(1)+u(2)+1;
sys=V_Table(x,u(3));

% end mdlOutputs
