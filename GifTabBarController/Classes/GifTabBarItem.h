//
//  GifTabBarItem.h
//  GifTabBarController
//
//  Created by felix.lin on 07/13/2016.
//  Copyright (c) 2016 felix.lin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GifTabBarItem : UITabBarItem
@property (nonatomic, assign) UIViewController *viewController;
@property (nonatomic) NSString *tabTitle;
@property (nonatomic) NSString *gifUrlString;
@property (nonatomic) UIImage *normalImage;
@property (nonatomic) UIImage *selectedGifImage;

- (instancetype)initWithTitle:(NSString *)title gifUrlString:(NSString *)gifUrlString viewController:(UIViewController *)viewController;
- (instancetype)initWithTitle:(NSString *)title gifUrlString:(NSString *)gifUrlString viewController:(UIViewController *)viewController normalImage:(UIImage *)normalImage selectedImage:(UIImage *)selectedImage ;
@end
