%Author: YongYuan
%Homepage: yongyuan.name
%Reference: Deep face recognition, O. M. Parkhi and A. Vedaldi and A. Zisserman, Proceedings of the British Machine Vision Conference (BMVC), 2015

clear all; close all; clc;
addpath('tools');

db_name = 'facesDataset';
numRetrieval = 16;

% viesion: matconvnet-1.0-beta17
net = load('vgg-face.mat') ;

% load dataset
if strcmp(db_name, 'facesDataset')
    load feat4096Norml.mat;
    path_imgDB = './facesDataset/';
    addpath(path_imgDB);
end

[FileName,PathName] = uigetfile('./CNN-for-Face-Image-Retrieval/facesDataset/*.jpg','Select an image');
queryAbsPath = strcat(PathName, FileName);
queryIm = imread(strcat(PathName, FileName));

%if not normalize, then do
% featNorm = normalize1(feat);
% save('256featNorm.mat','featNorm', 'rgbImgList');

% [pc, ~] = eigs(double(cov(feat)), 128);
% feat = feat*pc;

%virsulazation
retrieval_virsulazation(queryIm, numRetrieval, feat_norm, imgNamList, net);