//
//  ViewController.m
//  syqb
//
//  Created by nooice on 2018/10/23.
//  Copyright © 2018年 sy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationBar.translucent = NO;
    
    self.title = @"盛赢期服";
    
    UIBarButtonItem * leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"主页" style:(UIBarButtonItemStyleDone) target:self action:@selector(leftBarButtonItem:)];
    leftBarButtonItem.tintColor = [UIColor whiteColor];
    self.navigationItem.leftBarButtonItem = leftBarButtonItem;
    
    UIBarButtonItem * rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"刷新" style:(UIBarButtonItemStyleDone) target:self action:@selector(rightBarButtonItem:)];
    leftBarButtonItem.tintColor = [UIColor whiteColor];
    self.navigationItem.rightBarButtonItem = rightBarButtonItem;
    
    NSURL *url = [NSURL URLWithString:@"http://qqb.1688fp.com"];
    [self.webView loadRequest:[NSURLRequest requestWithURL:url]];
    self.webView.scrollView.scrollEnabled = NO;
}

#pragma mark- 按钮点击事件
- (void)leftBarButtonItem:(UIBarButtonItem *)item {
    NSURL *url = [NSURL URLWithString:@"http://qqb.1688fp.com"];
    [self.webView loadRequest:[NSURLRequest requestWithURL:url]];
}

- (void)rightBarButtonItem:(UIBarButtonItem *)item {
    [self.webView reload];
}

@end
