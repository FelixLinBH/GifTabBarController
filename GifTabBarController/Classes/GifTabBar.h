//
//  GifTabBar.h
//  GifTabBarController
//
//  Created by felix.lin on 07/13/2016.
//  Copyright (c) 2016 felix.lin. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol GifTabBarDelegate <NSObject>

-(void)selected:(UIViewController *)viewController;

@end

@interface GifTabBar : UITabBar
@property (nonatomic, strong) NSArray *tabItems;
@property (nonatomic, weak) id<GifTabBarDelegate> delegates;
@end
