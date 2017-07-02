## CNN for Face Image Retrieval

### How to use

To run the demo sucessfully, you must download the model of `vgg-face.mat` firstly. The download page is here: [vgg-face.mat](http://www.vlfeat.org/matconvnet/pretrained/). Put the model of `vgg-face.mat` to the root path and run the script of `extractCNN_VGG_Face.m` to extract face feature, then run the script of `queryInDatabaseDemo.m` to query an image.

I tested the performance on a small face dataset. The search results are as follows:

![](http://ose5hybez.bkt.clouddn.com/github/d3_zps6lczepnz.PNG)
![](http://ose5hybez.bkt.clouddn.com/github/d2_zpskkieeapo.PNG)
![](http://ose5hybez.bkt.clouddn.com/github/d1_zpsf6b8c2n8.PNG)
![](http://ose5hybez.bkt.clouddn.com/github/d4_zpsuc08gfl3.PNG)

### Want to use a C++ version?

You may also be interested in a C++ version or a QT version. SeetaFaceLib is a face image retrieval system based on [SeetaFaceEngine](https://github.com/seetaface/SeetaFaceEngine). I'm very happy that the QT project has been used by someone. The GUI of the QT project is designed as follows:

<p align="center"><img src="http://ose5hybez.bkt.clouddn.com/github/faceRetrieval.jpg" alt="CocsoFace"/></p>

#### Demo

I have made a video demo. If you inerested in this project and want to know the performace of face image retrieval, you can access to the video: [Video Demo](https://yongyuan.name/project/)
