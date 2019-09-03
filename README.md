# Akt_handwritten
手签字功能

第一步：将handWritten文件拷贝到项目里面。
第二步：在需要显示手写签名的.m文件里面引入#import "CJDrawViewController.h"
       添加CJDrawViewControllerDelegate
第三步：在需要点击弹出手写签名的方法里面初始化 CJDrawViewController
第四步：在当前页面创建一个UIimageview用来接收手写签名成功后的图片
第五步：在 delete的回调方法里面用创建的imageview去接收图片，并设置图片显示的样式。
