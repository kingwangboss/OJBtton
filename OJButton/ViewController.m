//
//  ViewController.m
//  OJButton
//
//  Created by One'J on 2017/3/9.
//  Copyright © 2017年 One'J. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+OJButton.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *btn1;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.btn1 layoutButtonWithEdgeInsetsStyle:OJButtonEdgeInsetsStyleTop imageTitleSpace:10];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
