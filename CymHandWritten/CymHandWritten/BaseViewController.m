//
//  BaseViewController.m
//  CymHandWritten
//
//  Created by 常永梅 on 2019/10/18.
//  Copyright © 2019 常永梅. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
#pragma mark - nav
-(void)setNavTitle:(NSString *)navtitle LeftTitle:(NSString *)left Moretitle:(NSString *)more RightTitle:(NSString *)right{
    
    UIButton *btnleft = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
    [btnleft addTarget:self action:@selector(btnLeftClick:) forControlEvents:UIControlEventTouchUpInside];
    if([left containsString:@"png"]){
        [btnleft setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@",left]] forState:UIControlStateNormal];
    }else{
        [btnleft setTitle:left forState:UIControlStateNormal];
    }
        
    UIButton *btnMore = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
    [btnMore addTarget:self action:@selector(btnMoreClick:) forControlEvents:UIControlEventTouchUpInside];
    if([more containsString:@"png"]){
           [btnleft setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@",more]] forState:UIControlStateNormal];
       }else{
           [btnleft setTitle:more forState:UIControlStateNormal];
       }
    
    UIButton *btnRight = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
    [btnRight addTarget:self action:@selector(btnRightClick:) forControlEvents:UIControlEventTouchUpInside];
    if([right containsString:@"png"]){
           [btnRight setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@",right]] forState:UIControlStateNormal];
       }else{
           [btnRight setTitle:right forState:UIControlStateNormal];
       }
    // 左侧按钮
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btnleft];
    // 右侧两个按钮
    UIBarButtonItem *moreTar =  [[UIBarButtonItem alloc] initWithCustomView:btnMore];
    UIBarButtonItem *rightTar =  [[UIBarButtonItem alloc] initWithCustomView:btnRight];
    self.navigationItem.rightBarButtonItems = @[moreTar,rightTar];
}

#pragma mark - nav click
-(void)btnLeftClick:(UIButton *)sender{
    [self.navigationController popViewControllerAnimated:YES];
}
-(void)btnMoreClick:(UIButton *)sender{
    NSLog(@"more click");
}
-(void)btnRightClick:(UIButton *)sender{
    NSLog(@"right click");
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
