//
//  GifTabImageView.h
//  GifTabBarController
//
//  Created by felix.lin on 07/13/2016.
//  Copyright (c) 2016 felix.lin. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface GifTabImageView : UIImageView
@property (nonatomic) UIImage *normalImage;
@property (nonatomic) UIImage *selectedImage;
-(instancetype)initWithNormalImage:(UIImage *)normalImage selectedImage:(UIImage *)selectedImage;
-(void)stopAnimating;
-(void)startAnimating;
@end
