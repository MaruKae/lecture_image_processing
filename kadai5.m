% ���ʕ��͖@
% ���ʕ��͖@��p���ĉ摜��l������D

ORG=imread('anju.jpg'); % ���摜�̓���
ORG = rgb2gray(ORG); % �J���[�摜�𔒍��Z�W�摜�֕ϊ�
imagesc(ORG); colormap(gray); colorbar;
pause;

H = imhist(ORG); %�q�X�g�O�����̃f�[�^���x�N�g��H�Ɋi�[
myu_T = mean(H);
max_val = 0;
max_thres = 1;
for i=1:255
Class1 = H(1:i); %�q�X�g�O������2�̃N���X�ɕ�����
Class2 = H(i+1:256);
n1 = sum(Class1); %��f���̎Z�o
n2 = sum(Class2);
myu1 = mean(Class1); %���ϒl�̎Z�o
myu2 = mean(Class2);
sigma1 = var(Class1); %���U�̎Z�o
sigma2 = var(Class2);
sigma_w = (n1 *sigma1+n2*sigma2)/(n1+n2); %�N���X�����U�̎Z�o
sigma_B = (n1 *(myu1-myu_T)^2+n2*(myu2-myu_T)^2)/(n1+n2); %�N���X�ԕ��U�̎Z�o
if max_val<sigma_B/sigma_w
max_val = sigma_B/sigma_w;
max_thres =i;
end;
end;

IMG = ORG > max_thres;
imagesc(IMG); colormap(gray); colorbar;
pause;