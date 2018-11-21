//
//  AutoShowLabel.h
//  web调用
//
//  Created by 郭朝顺 on 2018/10/29星期一.
//  Copyright © 2018年 乐乐. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AutoShowLabel : UILabel


/// 每秒移动多少像素
@property(nonatomic) float scrollSpeed;

@property (nonatomic,strong) UIScrollView * scrollView ;
/// 设置完textLabel.text,并且此label已经被加入了父视图中
- (void)startScrollIfNeed ;



@end
