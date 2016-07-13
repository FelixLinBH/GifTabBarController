//
//  GifTabBarView.m
//  GifTabBarController
//
//  Created by felix.lin on 07/13/2016.
//  Copyright (c) 2016 felix.lin. All rights reserved.
//

#import "GifTabBarView.h"
#import "GifTabImageView.h"
#import "FLAnimatedImage.h"
#import "Masonry.h"

@interface GifTabBarView()
@property (nonatomic) FLAnimatedImageView *animatedImageView;
@property (nonatomic) GifTabImageView *tabImageView;
@property (nonatomic) UILabel *titleLabel;
@end

@implementation GifTabBarView

-(instancetype)initWithGifTabBarItem:(GifTabBarItem *)item{
    self = [super init];
    if (self) {
        _animatedImageView = [[FLAnimatedImageView alloc]init];
        _animatedImageView.userInteractionEnabled = YES;
        _animatedImageView.animatedImage = [FLAnimatedImage animatedImageWithGIFData:[NSData dataWithContentsOfURL:[NSURL URLWithString:item.gifUrlString]]];
        
        _tabImageView = [[GifTabImageView alloc]initWithNormalImage:item.normalImage selectedImage:item.selectedGifImage];
        
        [_animatedImageView setHidden:(item.normalImage != nil)];
        
    
        __weak GifTabBarView *weakSelf = self;
        _animatedImageView.loopCompletionBlock = ^(NSUInteger loopCountRemaining){
            [weakSelf stopAnimating];
        };
        _titleLabel = [[UILabel alloc]init];
        _titleLabel.font = [UIFont systemFontOfSize:11.0];
        _titleLabel.text = item.tabTitle;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:_animatedImageView];
        [self addSubview:_tabImageView];
        [self addSubview:_titleLabel];
        [self setNeedsUpdateConstraints];

    }
    return self;
}

- (void)updateConstraints{
    [_animatedImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.mas_centerX);
        make.height.and.width.mas_equalTo(30);
        make.centerY.equalTo(self.mas_centerY).with.offset(0);
    }];
    [_tabImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.mas_centerX);
        make.height.and.width.mas_equalTo(30);
        make.centerY.equalTo(self.mas_centerY).with.offset(0);
    }];
    [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(13);
        make.left.equalTo(self.mas_left);
        make.right.equalTo(self.mas_right);
        make.bottom.equalTo(self.mas_bottom);
    }];
    [super updateConstraints];

}

-(void)stopAnimating{
    [_animatedImageView stopAnimating];
    if (_tabImageView.selectedImage != nil) {
        [_animatedImageView setHidden:YES];
        [_tabImageView stopAnimating];
    }
    
}

-(void)startAnimating{
    [_tabImageView startAnimating];
    [_animatedImageView setHidden:NO];
    [_animatedImageView startAnimating];
}

@end
