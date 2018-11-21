//
//  AutoShowLabel.m
//  web调用
//
//  Created by 郭朝顺 on 2018/10/29星期一.
//  Copyright © 2018年 乐乐. All rights reserved.
//

#import "AutoShowLabel.h"

@implementation AutoShowLabel

- (id)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        
        [self commonInit];
    }
    return self;
    
}


- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self commonInit];
    }
    return self;
}


- (void)commonInit {
    
    self.scrollSpeed = 80 ;

}

- (void)awakeFromNib {
    [super awakeFromNib];
    [self startScrollIfNeed];
}



- (void)startScrollIfNeed {
   
    CGRect oldFrame = self.frame;
    
    [self sizeToFit];
    if (self.bounds.size.width > oldFrame.size.width) {
        
        self.scrollView.frame = oldFrame;
        self.frame = CGRectMake(0, 0, self.bounds.size.width, oldFrame.size.height) ;

        self.scrollView.contentSize = self.bounds.size;
        [self animationScroll];
    }
    
    
    
}
- (void)animationScroll {
    
    self.scrollView.contentOffset = CGPointMake(-self.scrollView.bounds.size.width, 0);
    
    [UIView animateWithDuration:self.frame.size.width/self.scrollSpeed delay:0 options:UIViewAnimationOptionCurveLinear |UIViewAnimationOptionRepeat animations:^{
        
        self.scrollView.contentOffset = CGPointMake(self.scrollView.contentSize.width + self.scrollView.bounds.size.width * 0.2, 0);

    } completion:^(BOOL finished) {
        
        
    }];
    
    
}


- (UIScrollView *)scrollView {
    if (_scrollView == nil) {
        _scrollView = [[UIScrollView alloc] initWithFrame:self.frame];
        _scrollView.scrollEnabled = NO ;
        _scrollView.backgroundColor = self.backgroundColor;
        [self.superview addSubview:_scrollView];
        self.frame = CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height);
        [_scrollView addSubview:self];
    }
    return _scrollView;
}






@end
