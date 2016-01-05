% Author: Yong Yuan
% Homepage: yongyuan.name

clear all;close all;clc;

% version: matconvnet-1.0-beta17
%run ./matconvnet-1.0-beta17/matlab/vl_compilenn
run ./matconvnet-1.0-beta17/matlab/vl_setupnn

%% Step 1 lOADING PATHS
path_imgDB = './facesDataset/';
addpath(path_imgDB);
addpath tools;

% viesion: matconvnet-1.0-beta17
net = load('vgg-face.mat') ;

%% Step 2 LOADING IMAGE AND EXTRACTING FEATURE
imgFiles = dir(path_imgDB);
imgNamList = {imgFiles(~[imgFiles.isdir]).name};
clear imgFiles;
imgNamList = imgNamList';

numImg = length(imgNamList);
feat = [];
rgbImgList = {};

%parpool;

%parfor i = 1:numImg
for i = 1:numImg
   oriImg = imread(imgNamList{i, 1}); 
   featVec = extractCNN(oriImg, net);
   feat = [feat; featVec'];
   fprintf('extract %d image\n\n', i);
end

feat_norm = normalize1(feat);
save('feat4096Norml.mat','feat_norm', 'imgNamList', '-v7.3');
