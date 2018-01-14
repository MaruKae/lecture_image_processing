% •W–{‰»ŠÔŠu‚Æ‹óŠÔ‰ğ‘œ“x

clear; % •Ï”‚ÌƒI[ƒ‹ƒNƒŠƒA

ORG=imread('anju.jpg'); % Œ´‰æ‘œ‚Ì“ü—Í
imagesc(ORG); axis image; % ‰æ‘œ‚Ì•\¦
pause; % ˆê’â~

IMG = imresize(ORG,0.3); % ‰æ‘œ‚Ìk¬
IMG2 = imresize(IMG,2,'box'); % ‰æ‘œ‚ÌŠg‘å
imagesc(IMG2); axis image; % ‰æ‘œ‚Ì•\¦
pause; % ˆê’â~

IMG = imresize(IMG,0.3); % ‰æ‘œ‚Ìk¬
IMG2 = imresize(IMG,4,'box'); % ‰æ‘œ‚ÌŠg‘å
imagesc(IMG2); axis image; % ‰æ‘œ‚Ì•\¦
pause; % ˆê’â~

IMG = imresize(IMG,0.3); % ‰æ‘œ‚Ìk¬
IMG2 = imresize(IMG,8,'box'); % ‰æ‘œ‚ÌŠg‘å
imagesc(IMG2); axis image; % ‰æ‘œ‚Ì•\¦
pause; % ˆê’â~

IMG = imresize(IMG,0.3); % ‰æ‘œ‚Ìk¬
IMG2 = imresize(IMG,16,'box'); % ‰æ‘œ‚ÌŠg‘å
imagesc(IMG2); axis image; % ‰æ‘œ‚Ì•\¦
pause; % ˆê’â~

IMG = imresize(IMG,0.3); % ‰æ‘œ‚Ìk¬
IMG2 = imresize(IMG,32,'box'); % ‰æ‘œ‚ÌŠg‘å
imagesc(IMG2); axis image; % ‰æ‘œ‚Ì•\¦
