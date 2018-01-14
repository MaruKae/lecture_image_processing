% ラベリング 
% 二値化された画像の連結成分にラベルにつけをする． 

ORG = imread('anju.jpg'); % 画像の読み込み 
ORG = rgb2gray(ORG); % 白黒濃淡画像に変換 
imagesc(ORG); colormap(gray); colorbar; % 画像の表示 
pause; 
IMG = ORG > 128; % 閾値128で二値化 
imagesc(IMG); colormap(gray); colorbar; % 画像の表示 
pause; 
IMG = bwlabeln(IMG); %イメージ内の連結要素をラベル付け
imagesc(IMG); colormap(jet); colorbar; % 画像の表示 
pause; 
