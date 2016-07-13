//
//  GifTabBarController.m
//  GifTabBarController
//
//  Created by felix.lin on 07/13/2016.
//  Copyright (c) 2016 felix.lin. All rights reserved.
//

#import "GifTabBarController.h"
#import "GifTabBarItem.h"
#import "GifTabBar.h"
@interface GifTabBarController ()<GifTabBarDelegate>

@end

@implementation GifTabBarController

- (instancetype)initWithTabItems:(NSArray *)array{
    self = [super init];
    if (self) {
        GifTabBar *tabbar = [[GifTabBar alloc]init];
        tabbar.tabItems = array;
        tabbar.delegates = self;
        [self setValue:tabbar forKey:@"tabBar"];
        [self setTabItems:array];
    }
    return self;
}

- (void)setTabItems:(NSArray *)tabItems{
    for (GifTabBarItem *item in tabItems) {
        item.viewController.tabBarItem.titlePositionAdjustment = UIOffsetMake(0, 50);
        [self addChildViewController:item.viewController];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - GifTabBarDelegate

- (void)selected:(UIViewController *)viewController{
    [self setSelectedViewController:viewController];
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
