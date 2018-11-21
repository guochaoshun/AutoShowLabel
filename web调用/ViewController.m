//
//  ViewController.m
//  web调用
//
//  Created by 郭朝顺 on 2018/4/21星期六.
//  Copyright © 2018年 乐乐. All rights reserved.
//

#import "ViewController.h"

#import "AutoShowLabel.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    AutoShowLabel * label = [[AutoShowLabel alloc] initWithFrame:CGRectMake(50, 100, 200, 40)];
    
    label.text = @"霓为衣兮风为马，云之君兮纷纷而来下。虎鼓瑟兮鸾回车，仙之人兮列如麻。";
    [self.view addSubview:label];
    [label startScrollIfNeed];
    
}





@end
