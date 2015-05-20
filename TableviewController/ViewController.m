//
//  ViewController.m
//  TableviewController
//
//  Created by 刘亮 on 18/5/15.
//  Copyright (c) 2015年 liuliang. All rights reserved.
//

#import "ViewController.h"
#import "SignView.h"
@interface ViewController ()<tapProtocol>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGSize screenSize = [[UIScreen mainScreen] bounds].size;
    
    // Do any additional setup after loading the view, typically from a nib.
    
    NSArray *infoArray = @[@"Weibo",@"QQ",@"Wechat"];
    NSArray *imageArray = @[@"mine_qq",@"mine_weibo",@"mine_weixin"];
    NSArray *colorArr = [NSArray arrayWithObjects:[UIColor redColor],[UIColor greenColor],[UIColor grayColor], nil];
    
    NSInteger count = 3;
    
    for (int i = 0; i < count; i++)
    {
        CGFloat width = (screenSize.width)/count;
        
        SignView *signBtn = [[SignView alloc] initWithFrame:CGRectMake(width*i, 300, width, 110)];
        signBtn.layer.borderWidth = 2;
        signBtn.layer.borderColor = ((UIColor *)colorArr[i]).CGColor;
        signBtn.tag = i;
        signBtn.infoText = infoArray[i];
        signBtn.imageName = imageArray[i];
        signBtn.delegete = self;
        [self.view addSubview:signBtn];
    }
}

- (void)customBtnAction:(NSInteger)index
{
    NSLog(@"%ld",(long)index);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
