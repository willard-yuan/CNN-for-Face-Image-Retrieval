## CNN for Face Image Retrieval

### How to use

To run the demo sucessfully, you must download the model of `vgg-face.mat` firstly. The download page is here: [vgg-face.mat](http://www.vlfeat.org/matconvnet/pretrained/). Put the model of `vgg-face.mat` to the root path and run the script of `extractCNN_VGG_Face.m` to extract face feature, then run the script of `queryInDatabaseDemo.m` to query an image.

I tested the performance on a small face dataset. The search results are as follows:

![](http://i300.photobucket.com/albums/nn17/willard-yuan/d3_zps6lczepnz.png)
![](http://i300.photobucket.com/albums/nn17/willard-yuan/d2_zpskkieeapo.png)
![](http://i300.photobucket.com/albums/nn17/willard-yuan/d1_zpsf6b8c2n8.png)
![](http://i300.photobucket.com/albums/nn17/willard-yuan/d4_zpsuc08gfl3.png)

### Want to use a C++ version?

You may also be interested in a C++ version or a QT version. Luckily, there is an open face recogniton project named as [SeetaFaceEngine](https://github.com/seetaface/SeetaFaceEngine). I have made it work in Xcode and built a QT project based on the SeetaFaceEngine. I'm very happy that the QT project has been used by someone.

The GUI of the QT project is designed as follows(It's still under optimization):

![](http://i300.photobucket.com/albums/nn17/willard-yuan/qt_face_zpsrpgr7x1n.png)

