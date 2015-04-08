//
//  ViewController.m
//  MovieGame
//
//  Created by Jim Campagno on 4/7/15.
//  Copyright (c) 2015 Gamesmith, LLC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) UIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    CGFloat heightOfIphone =[[UIScreen mainScreen] bounds].size.height;
    CGFloat widthOfIphone = [[UIScreen mainScreen] bounds].size.width;
    CGRect rectOfWebView = CGRectMake(0.0, 0.0, widthOfIphone, heightOfIphone);
    self.webView = [[UIWebView alloc] initWithFrame:rectOfWebView];
    [self.view addSubview:self.webView];
    self.webView.delegate = self;
    
    NSString *defaultLoginURLString = [NSString stringWithFormat:@"http://www.imdb.com"];
    NSURL *loginURL = [NSURL URLWithString:defaultLoginURLString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:loginURL];
    [self.webView loadRequest:urlRequest];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
