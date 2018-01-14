% 閾値処理
% 閾値を4パターン設定し,閾値処理した画像を示す．

clear; % 変数のオールクリア

ORG=imread('anju.jpg'); % 原画像の入力
ORG= rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換

imagesc(ORG); colormap(gray); colorbar; % 画像の表示
pause;

IMG = ORG > 50; % 輝度値が64以上の画素を1，その他を0に変換
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

