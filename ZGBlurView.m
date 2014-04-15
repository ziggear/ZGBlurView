//
//  ZGBlurView.m
//  AstonMartin
//
//  Created by ziggear on 14-4-14.
//  Copyright (c) 2014年 zingwin. All rights reserved.
//

#import "ZGBlurView.h"
#import "UIImage+ImageEffects.h"

@implementation ZGBlurView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)blur{
    if([self superview] != nil) {
        UIView *superView = [self superview];
        UIImage *viewImage = [self transformViewToImage:superView];
        UIImage *gBlurViewImage = [viewImage applyLightEffect];
        UIView *backgroundView = [[UIView alloc] initWithFrame:self.frame];
        backgroundView.backgroundColor = [UIColor colorWithPatternImage:gBlurViewImage];
        [self addSubview:backgroundView];
        [self createContents];
    }
}

- (void) createContents {
    
}

- (UIImage*)transformViewToImage:(UIView*)view
{
    CGSize size = view.frame.size;
    if([view isKindOfClass:[UIScrollView class]])
    {
        assert(0);
    }
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 2);
    [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *combinationImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return combinationImage;
}

@end
