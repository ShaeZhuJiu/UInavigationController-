//
//  MYNaviController.m
//  1NaviVC
//
//  Created by 谢鑫 on 2019/6/12.
//  Copyright © 2019 Shae. All rights reserved.
//

#import "MYNaviController.h"

@interface MYNaviController ()<UINavigationBarDelegate>

@end

@implementation MYNaviController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationBar.barTintColor=[UIColor orangeColor];
    self.navigationBar.tintColor=[UIColor darkGrayColor];
    self.navigationBar.barStyle=UIBarStyleBlack;//一开始是黑色，设置后变白色。
    [self.navigationBar setBackgroundImage:[UIImage imageNamed: @"1560682859113"] forBarMetrics:UIBarMetricsDefault];
    
    self.navigationBar.delegate=self;
}

//- (BOOL)navigationBar:(UINavigationBar *)navigationBar shouldPushItem:(UINavigationItem *)item{
    
//}
- (void)navigationBar:(UINavigationBar *)navigationBar didPushItem:(UINavigationItem *)item{
    NSLog(@"%s",__func__);
}
//- (BOOL)navigationBar:(UINavigationBar *)navigationBar shouldPopItem:(UINavigationItem *)item{
    
//}
- (void)navigationBar:(UINavigationBar *)navigationBar didPopItem:(UINavigationItem *)item{
    NSLog(@"%s",__func__);
}

@end
