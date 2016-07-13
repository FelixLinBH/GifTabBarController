//
//  GifTabTapGestureRecognizer.h
//  GifTabBarController
//
//  Created by felix.lin on 07/13/2016.
//  Copyright (c) 2016 felix.lin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GifTabBarItem.h"
@interface GifTabTapGestureRecognizer : UITapGestureRecognizer
@property (nonatomic, assign) GifTabBarItem *tabBaritem;
@end
