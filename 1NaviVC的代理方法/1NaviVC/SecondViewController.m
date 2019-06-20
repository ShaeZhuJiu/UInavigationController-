//
//  SecondViewController.m
//  1NaviVC
//
//  Created by 谢鑫 on 2019/6/12.
//  Copyright © 2019 Shae. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()<UINavigationControllerDelegate>

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor redColor];
    NSLog(@"%lu",self.navigationController.viewControllers.count);
    NSLog(@"%@",self.navigationController.viewControllers);
    self.navigationController.navigationBar.barTintColor=[UIColor greenColor];//注意一定要是通过navigationController获取navigationBar
    
    UIBarButtonItem *leftBarButtonItem=[[UIBarButtonItem alloc]initWithTitle:@"点我" style:UIBarButtonItemStylePlain target:self action:@selector(clickLeftBtn)];
    self.navigationItem.leftBarButtonItem=leftBarButtonItem;//可以self.navigationItem
    
    //self.navigationController.navigationItem.leftBarButtonItem=leftBarButtonItem;//如果这样写的话是不生效的
    
    self.navigationItem.title=@"navigationItemTitle";
    self.title=@"Second Vc";
    
    self.navigationItem.prompt=@"勿忘初心...";
    
    UIView *view=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
    view.backgroundColor =[UIColor whiteColor];
    UIBarButtonItem *rightView=[[UIBarButtonItem alloc]initWithCustomView:view];
    self.navigationItem.rightBarButtonItem=rightView;
    self.navigationController.delegate=self;
}
-(void)clickLeftBtn{
    [self.navigationController popViewControllerAnimated:YES];//回到栈顶的控制器
    NSLog(@"2");
}
- (void)dealloc
{
    NSLog(@"%s",__func__);
}
- (IBAction)returnToFirstVC:(UIButton *)sender {
    //出栈
    [self.navigationController popViewControllerAnimated:YES];//回到栈顶的控制器
}

- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
    NSLog(@"%s",__func__);
}
- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
    NSLog(@"%s",__func__);
}

@end
