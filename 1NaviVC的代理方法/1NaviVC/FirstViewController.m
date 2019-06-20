//
//  FirstViewController.m
//  1NaviVC
//
//  Created by 谢鑫 on 2019/6/12.
//  Copyright © 2019 Shae. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
@interface FirstViewController ()<UINavigationControllerDelegate>

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor yellowColor]];
    NSLog(@"%lu",self.navigationController.viewControllers.count);
    UIBarButtonItem *leftBarButtonItem=[[UIBarButtonItem alloc]initWithTitle:@"点我1" style:UIBarButtonItemStylePlain target:self action:@selector(clickLeftBtn)];
    self.navigationItem.leftBarButtonItem=leftBarButtonItem;//可以self.navigationItem
    UIBarButtonItem *rightBarButtonItem=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"1"] style:UIBarButtonItemStylePlain target:self action:@selector(clickRightBtn)];
    //实际图片的图片大小会影响布局,默认是放在1x里，像素设置成66，然后放在3x里比较合适。
    self.navigationItem.rightBarButtonItem=rightBarButtonItem;
    
    UIView *titleView=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 100, 30)];
    titleView.backgroundColor=[UIColor whiteColor];
    self.navigationItem.titleView=titleView;
    //设置代理
    self.navigationController.delegate=self;
}
-(void)clickLeftBtn{
    NSLog(@"1");
}
-(void)clickRightBtn{
    UIStoryboard *storyBoard=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    SecondViewController *secondVC=[storyBoard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    //1.每一个viewcontroller里面都有一个navigationController
    //2.动画的样式
    [self.navigationController pushViewController:secondVC animated:YES];
}
- (IBAction)changeVC:(UIButton *)sender {
    UIStoryboard *storyBoard=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    SecondViewController *secondVC=[storyBoard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    //1.每一个viewcontroller里面都有一个navigationController
    //2.动画的样式
    [self.navigationController pushViewController:secondVC animated:YES];
}
- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
    NSLog(@"%s",__func__);
}
- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
    NSLog(@"%s",__func__);
}

@end
