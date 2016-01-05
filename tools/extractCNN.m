function featVec = extractCNN(oriImg, net)
% featVec: 1*4096 vector

if size(oriImg, 3) == 3
    im_ = single(oriImg) ; % note: 255 range
    im_ = imresize(im_, net.meta.normalization.imageSize(1:2)) ;
    %im_ = im_ - net.meta.normalization.averageImage ;
    im_ = bsxfun(@minus,im_,net.meta.normalization.averageImage) ;
    res = vl_simplenn(net, im_) ;
    
    % viesion: matconvnet-1.0-beta17
    featVec = res(36).x;
    
    featVec = featVec(:);
else
    im_ = single(repmat(oriImg,[1 1 3])) ; % note: 255 range
    im_ = imresize(im_, net.meta.normalization.imageSize(1:2)) ;
    im_ = im_ - net.meta.normalization.averageImage ;
    res = vl_simplenn(net, im_) ;
    
    % viesion: matconvnet-1.0-beta17
    featVec = res(36).x;
    
    featVec = featVec(:);
end