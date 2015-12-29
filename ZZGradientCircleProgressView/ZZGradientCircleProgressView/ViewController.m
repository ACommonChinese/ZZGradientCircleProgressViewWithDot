//
//  ViewController.m
//  ZZGradientCircleProgressView
//
//  Created by 刘威振 on 12/22/15.
//  Copyright © 2015 LiuWeiZhen. All rights reserved.
//

#import "ViewController.h"
#import "ZZGradientCircleProgressView.h"

@interface ViewController ()

@property (nonatomic) ZZGradientCircleProgressView *progressView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.progressView = [[ZZGradientCircleProgressView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    
    _progressView.backgroundColor = [UIColor yellowColor];
    _progressView.trackColor      = [UIColor whiteColor];
    _progressView.progress        = 0.0f;
    _progressView.progressWidth   = 20;
    // _progressView.gradientColors  = @[[UIColor redColor], [UIColor greenColor]];
    _progressView.gradientColor = [UIColor greenColor];
    _progressView.showProgressIndicator = YES;
    [self.view addSubview:_progressView];
}

- (IBAction)click:(id)sender {
    self.progressView.progress += 0.05;
}

@end
