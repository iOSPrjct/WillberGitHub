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
@property (weak, nonatomic) IBOutlet UILabel *oneLab;


@end



@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    [self.button mas_makeConstraints:^(MASConstraintMaker *make)
    {
        
        make.left.equalTo(self.view).offset(20);
        make.top.equalTo(self.view.mas_top).with.offset(50);
        
        make.width.mas_equalTo(@(130));
     
//        make.center.mas_equalTo(self.view);
        make.height.equalTo(@(50));
        
        
    }];
    
    self.button.backgroundColor=[UIColor redColor];
    
    
//    [self.oneLab mas_makeConstraints:^(MASConstraintMaker *make)
//    {
//
//        make.edges.mas_equalTo(self.view).insets(UIEdgeInsetsMake(30, 10, 200, 10));
//
//    }];
    
 
    self.oneLab.backgroundColor=[UIColor blueColor];
    
    [self.button addTarget:self action:@selector(didClickBtn:) forControlEvents:(UIControlEventTouchUpInside)];
    
    self.button.hidden=YES;
//    self.oneLab.hidden=YES;
    
//    [self showView];

    /*
    self.oneLab.numberOfLines=0;
    self.oneLab.lineBreakMode=NSLineBreakByTruncatingTail;
    self.oneLab.text=@"有的人,没事时喜欢在朋友圈里到处点赞,东评论一句西评论一句,比谁都有存在感.等你有事找他了,他就立刻变得很忙,让你再也找不着.真正的朋友,平常很少联系.可一旦你遇上了难处,他会立刻回复你的消息,第一时间站出来帮你.所谓的存在感,不是你有没有出现,而是你的出现有没有价值.存在感,不是刷出来的,也不是说出来的.有存在感,未必是要个性锋芒毕露.甚至锋利扎人.翩翩君子,温润如玉,真正有存在感的人,反而不会刻意去强调他的存在感.他的出现,永远都恰到好处.我所欣赏的存在感,不是长袖善舞巧言令色,而是对他人的真心关照;不是锋芒毕露计较胜负,而是让人相处得舒服;不是时时刻刻聒噪不休,而是关键时刻能挺身而出.别总急着出风头,希望你能有恰到好处的存在感";
    
    [self.oneLab mas_makeConstraints:^(MASConstraintMaker *make)
    {
        
        make.top.equalTo(self.view).offset(56);
        make.left.equalTo(self.view).offset(23);
        make.right.equalTo(self.view).offset(-120);
        
        
    }];*/
    
    
//      self.oneLab.preferredMaxLayoutWidth = [UIScreen mainScreen].bounds.size.width - 20;
    
    
//    UIScrollView *scrollView=[UIScrollView new];
//    [self.view addSubview:scrollView];
//    [scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.edges.equalTo(self.view);
//    }];
//
//
//    [self setUpContentView:scrollView];
    
    UIView *lastView = self.view;
    for (int i = 0; i < 10; i++) {
        UIView *view = UIView.new;
        view.backgroundColor = [UIColor colorWithRed:arc4random() % 256/ 255.0  green:arc4random() % 256 / 255.0 blue:arc4random() % 256 / 255.0 alpha:1.0];
        view.layer.borderColor = UIColor.blackColor.CGColor;
        view.layer.borderWidth = 2;
        [self.view addSubview:view];
        
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(lastView).insets(UIEdgeInsetsMake(35, 10, 15, 20));
        }];
        
        lastView = view;
    }
    
    
    
}



-(void)setUpContentView:(UIScrollView *)scrollView
{
    //约束UIScrollView上contentView
    UIView *contentViews = UIView.new;
    [scrollView addSubview:contentViews];
    
    [contentViews mas_makeConstraints:^(MASConstraintMaker *make) {
     
        make.edges.equalTo(scrollView);
        make.width.equalTo(scrollView); //此处必填 - 关键点
    }];
    
    //添加控件到contentView，约束原理与自动布局相同
    UIView *lastView;
    CGFloat height = 30;
 
    for (int i = 0; i <15; i ++) {
        UIView *view = UIView.new;
        
        
        
        view.backgroundColor = [UIColor colorWithRed:arc4random() % 256/ 255.0  green:arc4random() % 256 / 255.0 blue:arc4random() % 256 / 255.0 alpha:1.0];
        
    
        
        [contentViews addSubview:view];
        
        [view mas_makeConstraints:^(MASConstraintMaker *make)
        {
            make.top.equalTo(lastView ? lastView.mas_bottom : @0);//注意地方
            make.left.equalTo(self.view);
            make.width.equalTo(self.view);
            make.height.equalTo(@(height));
        }];
        
        height += 30;
        lastView = view;
    }
    
    [contentViews mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(lastView);
    }];
    
    
    
    
}

-(void)didClickBtn:(UIButton*)btn
{
    [self.button mas_updateConstraints:^(MASConstraintMaker *make) {
        
    make.width.mas_equalTo(self.oneLab.frame.size.width-100);
    make.height.equalTo(@(33));
    make.top.equalTo(self.view).offset(100);
    make.left.equalTo(self.view).offset(50);
        
    }];
  
    self.button.backgroundColor=[UIColor orangeColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)showView
{
    NSMutableArray *array = [NSMutableArray new];
    for (int i = 0; i < 3; i ++) {
        UIView *view = [UIView new];
        view.backgroundColor = [UIColor greenColor];
        [self.view addSubview:view];
        [array addObject:view]; //保存添加的控件
    }
    
    
    [array mas_distributeViewsAlongAxis:(MASAxisTypeVertical) withFixedSpacing:20 leadSpacing:10 tailSpacing:30];
    
    [array mas_makeConstraints:^(MASConstraintMaker *make)
    {
        make.left.equalTo(self.view).offset(50);
        make.width.equalTo(@(100));
    }];
    
}



@end
