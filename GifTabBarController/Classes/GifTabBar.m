//
//  GifTabBar.m
//  GifTabBarController
//
//  Created by felix.lin on 07/13/2016.
//  Copyright (c) 2016 felix.lin. All rights reserved.
//

#import "GifTabBar.h"
#import "GifTabTapGestureRecognizer.h"
#import "GifTabBarItem.h"
#import "FLAnimatedImage.h"

#import "GifTabBarView.h"

@interface GifTabBar()
@property (nonatomic, strong) NSMutableArray *animatedImageViewArray;
@end

@implementation GifTabBar

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)init{
    self = [super init];
    if (self) {
        _animatedImageViewArray = [[NSMutableArray alloc]init];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    CGRect rect = self.bounds;
    CGFloat centerX = rect.size.width / self.items.count / 2;
    CGFloat centerY = rect.size.height / 2 - 5;
    CGFloat spacingX = rect.size.width / self.items.count;
    CGFloat width = rect.size.width / self.items.count;
    for (int i = 0; i < [_animatedImageViewArray count]; i++) {
        GifTabBarView *item = _animatedImageViewArray[i];
        item.frame = CGRectMake(0, 0, width, rect.size.height + 10);
        item.center = CGPointMake(centerX, centerY);
        centerX += spacingX;
        [item stopAnimating];
        [self bringSubviewToFront:item];
        
        
    }
    
}

- (void)updateConstraints{
    
    [super updateConstraints];
}

- (void)setItems:(nullable NSArray<UITabBarItem *> *)items animated:(BOOL)animated{
    for (GifTabBarItem *item in _tabItems) {
        GifTabBarView *tabItemView = [[GifTabBarView alloc]initWithGifTabBarItem:item];
        GifTabTapGestureRecognizer *tap = [[GifTabTapGestureRecognizer alloc]initWithTarget:self action:@selector(tapTabBarItem:)];
        tap.tabBaritem = item;
        [tabItemView addGestureRecognizer:tap];

        [self addSubview:tabItemView];
        [_animatedImageViewArray addObject:tabItemView];
    }
   
    [super setItems:items animated:animated];
    
}

- (void)tapTabBarItem:(GifTabTapGestureRecognizer *)sender{
    FLAnimatedImageView *animatedImageView = (FLAnimatedImageView *)sender.view;
    [animatedImageView startAnimating];
    if (self.delegates && [self.delegates respondsToSelector:@selector(selected:)]) {
        [self.delegates selected:sender.tabBaritem.viewController];
    
    }
    
}

@end
