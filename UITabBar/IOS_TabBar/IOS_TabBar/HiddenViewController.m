//
//  HiddenViewController.m
//  IOS_TabBar
//
//  Created by Bc_Ltf on 15/4/8.
//  Copyright (c) 2015年 Bc_ltf. All rights reserved.
//

#import "HiddenViewController.h"

@interface HiddenViewController ()

@end

@implementation HiddenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated{
//    [self hideTabBar];
    [self.tabBarController.tabBar setHidden:YES];
}

#pragma mark-隐藏tabBar
- (void)hideTabBar {
    if (self.tabBarController.tabBar.hidden == YES) {
        return;
    }
    UIView *contentView;
    if ( [[self.tabBarController.view.subviews objectAtIndex:0] isKindOfClass:[UITabBar class]] )
        contentView = [self.tabBarController.view.subviews objectAtIndex:1];
    else
        contentView = [self.tabBarController.view.subviews objectAtIndex:0];
    contentView.frame = CGRectMake(contentView.bounds.origin.x,  contentView.bounds.origin.y,  contentView.bounds.size.width, contentView.bounds.size.height + self.tabBarController.tabBar.frame.size.height);
    self.tabBarController.tabBar.hidden = YES;
    
}
@end
