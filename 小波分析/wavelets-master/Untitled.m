clc;
clear;
% װ��ͼ��
load woman;
% X���������ͼ��
% ����ԭʼͼ��
figure(1);
subplot(2,2,1);
image(X);
colormap(map);
title('ԭʼͼ��');
% ʹ��sym5��X���г߶�Ϊ2�ķֽ�
[c,s] = wavedec2(X,1,'sym5');
% ��С���ֽ�ṹ[c,s]���г߶�Ϊ1��2ʱ�ĵ�Ƶ�ع�
a1 = wrcoef2('a',c,s,'sym5',1);
a2 = wrcoef2('a',c,s,'sym5',1);
 
% ���Ƴ߶�Ϊ1ʱ�ĵ�Ƶͼ��
subplot(2,2,3);
image(a1);colormap(map);
title('�߶�Ϊ1ʱ�ĵ�Ƶͼ��');
% ���Ƴ߶�Ϊ2ʱ�ĵ�Ƶͼ��
subplot(2,2,4);
image(a2);colormap(map);
title('�߶�Ϊ2ʱ�ĵ�Ƶͼ��');
% ��С���ֽ�ṹ[c,s]�ڳ߶�Ϊ2ʱ�ع���Ƶ
% 'h' ��ˮƽ����
% 'v' �Ǵ�ֱ����
% 'd' �ǶԽǷ���
hd2 = wrcoef2('h',c,s,'sym5',1);
vd2 = wrcoef2('v',c,s,'sym5',1);
dd2 = wrcoef2('d',c,s,'sym5',1);
% ���Ƹ�Ƶͼ��
figure(2);
subplot(2,2,1);
image(hd2);colormap(map);
title('�߶�Ϊ2ʱ��ˮƽ��Ƶͼ��');
subplot(2,2,2);
image(vd2);colormap(map);
title('�߶�Ϊ2ʱ�Ĵ�ֱ��Ƶͼ��');
subplot(2,2,3);
image(dd2);colormap(map);
title('�߶�Ϊ2ʱ�ĶԽǸ�Ƶͼ��');
subplot(2,2,4);
image(hd2+dd2+vd2+a1);colormap(map);
% ��֤��Щͼ��ĳ��ȶ���sX
sX = size(X)
sa1 = size(a1)
shd2 = size(hd2)
norm(hd2+dd2+vd2+a1-X)
