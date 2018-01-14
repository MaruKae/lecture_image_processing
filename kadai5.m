% 判別分析法
% 判別分析法を用いて画像二値化する．

ORG=imread('anju.jpg'); % 原画像の入力
ORG = rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換
imagesc(ORG); colormap(gray); colorbar;
pause;

H = imhist(ORG); %ヒストグラムのデータを列ベクトルHに格納
myu_T = mean(H);
max_val = 0;
max_thres = 1;
for i=1:255
Class1 = H(1:i); %ヒストグラムを2つのクラスに分ける
Class2 = H(i+1:256);
n1 = sum(Class1); %画素数の算出
n2 = sum(Class2);
myu1 = mean(Class1); %平均値の算出
myu2 = mean(Class2);
sigma1 = var(Class1); %分散の算出
sigma2 = var(Class2);
sigma_w = (n1 *sigma1+n2*sigma2)/(n1+n2); %クラス内分散の算出
sigma_B = (n1 *(myu1-myu_T)^2+n2*(myu2-myu_T)^2)/(n1+n2); %クラス間分散の算出
if max_val<sigma_B/sigma_w
max_val = sigma_B/sigma_w;
max_thres =i;
end;
end;

IMG = ORG > max_thres;
imagesc(IMG); colormap(gray); colorbar;
pause;