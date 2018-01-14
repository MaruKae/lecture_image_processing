% メディアンフィルタと先鋭化 
% メディアンフィルターを適用し，ノイズ除去を行う． 
 
ORG = imread('anju.jpg'); % 画像の読み込み 
ORG = rgb2gray(ORG); % 白黒濃淡画像に変換 
imagesc(ORG); colormap(gray); colorbar; % 画像の表示 
pause; 
ORG = imnoise(ORG,'salt & pepper',0.05); % ノイズ添付 
imagesc(ORG); colormap(gray); colorbar; % 画像の表示 
pause; 
IMG = filter2(fspecial('average',3),ORG); % 平滑化フィルタで雑音除去 
imagesc(IMG); colormap(gray); colorbar; % 画像の表示 
pause; 
IMG = medfilt2(ORG,[3 3]); % メディアンフィルタで雑音除去 
imagesc(IMG); colormap(gray); colorbar; % 画像の表示 
pause; 
f=[0,-1,0;-1,5,-1;0,-1,0]; % フィルタの設計 
IMG = filter2(f,IMG,'same'); % フィルタの適用 
imagesc(IMG); colormap(gray); colorbar; % 画像の表示 
pause; 
