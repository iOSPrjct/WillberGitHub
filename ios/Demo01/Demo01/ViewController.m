//
//  ViewController.m
//  Demo01
//
//  Created by mac on 2018/7/16.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *button;


@end



@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    [self.button mas_makeConstraints:^(MASConstraintMaker *make)
    {
        
        //make.left.equalTo(self.view).offset(20);
        //make.top.equalTo(self.view.mas_top).with.offset(50);
        //make.right.equalTo(self.view).offset(-30);
        make.center.mas_equalTo(self.view);
        make.height.equalTo(@(50));
        make.width.mas_equalTo(@(130));
        
    }];
    
    self.button.backgroundColor=[UIColor redColor];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
