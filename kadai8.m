% ���x�����O 
% ��l�����ꂽ�摜�̘A�������Ƀ��x���ɂ�������D 

ORG = imread('anju.jpg'); % �摜�̓ǂݍ��� 
ORG = rgb2gray(ORG); % �����Z�W�摜�ɕϊ� 
imagesc(ORG); colormap(gray); colorbar; % �摜�̕\�� 
pause; 
IMG = ORG > 128; % 臒l128�œ�l�� 
imagesc(IMG); colormap(gray); colorbar; % �摜�̕\�� 
pause; 
IMG = bwlabeln(IMG); %�C���[�W���̘A���v�f�����x���t��
imagesc(IMG); colormap(jet); colorbar; % �摜�̕\�� 
pause; 
