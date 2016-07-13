//
//  GifTabBarItem.m
//  GifTabBarController
//
//  Created by felix.lin on 07/13/2016.
//  Copyright (c) 2016 felix.lin. All rights reserved.
//

#import "GifTabBarItem.h"

@implementation GifTabBarItem

- (instancetype)initWithTitle:(NSString *)title gifUrlString:(NSString *)gifUrlString viewController:(UIViewController *)viewController{
    self = [super init];
    if (self) {
        _tabTitle = title;
        _gifUrlString = gifUrlString;
        _viewController = viewController;
    }
    return self;
}


- (instancetype)initWithTitle:(NSString *)title gifUrlString:(NSString *)gifUrlString viewController:(UIViewController *)viewController normalImage:(UIImage *)normalImage selectedImage:(UIImage *)selectedImage {
    self = [super init];
    if (self) {
        _tabTitle = title;
        _gifUrlString = gifUrlString;
        _viewController = viewController;
        _normalImage = normalImage;
        _selectedGifImage = selectedImage;
    }
    return self;
}

@end
