% 臒l����
% 臒l��4�p�^�[���ݒ肵,臒l���������摜�������D

clear; % �ϐ��̃I�[���N���A

ORG=imread('anju.jpg'); % ���摜�̓���
ORG= rgb2gray(ORG); % �J���[�摜�𔒍��Z�W�摜�֕ϊ�

imagesc(ORG); colormap(gray); colorbar; % �摜�̕\��
pause;

IMG = ORG > 50; % �P�x�l��64�ȏ�̉�f��1�C���̑���0�ɕϊ�
imagesc(IMG); colormap(gray); colorbar;
pause;

IMG = ORG > 150;
imagesc(IMG); colormap(gray); colorbar;
pause;

IMG = ORG > 200;
imagesc(IMG); colormap(gray); colorbar;
pause;

IMG = ORG > 250;
imagesc(IMG); colormap(gray); colorbar;
