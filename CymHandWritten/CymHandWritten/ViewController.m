//
//  ViewController.m
//  CymHandWritten
//
//  Created by 常永梅 on 2019/9/3.
//  Copyright © 2019 常永梅. All rights reserved.
//

#import "ViewController.h"
#import "CJDrawViewController.h"

@interface ViewController ()<CJDrawViewControllerDelegate>
{
     UIImageView *showImageView;// 显示签名图片
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor cyanColor];
    
    
    showImageView = [[UIImageView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:showImageView];
    showImageView.contentMode = UIViewContentModeScaleAspectFit;
}

#pragma mark - touch self.view
// 点击页面弹出签名页
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    CJDrawViewController *VC = [CJDrawViewController new];
    VC.delegate = self;
    [self presentViewController:VC animated:YES completion:nil];
    
}
#pragma mark - cjdrawVC delegate
// 签名之后形成图片
- (void)returnImage:(UIImage *)signImage
{
    showImageView.frame = CGRectMake(0, 0, signImage.size.width, signImage.size.height);
    showImageView.center = self.view.center;
    showImageView.image = signImage;
}

@end
