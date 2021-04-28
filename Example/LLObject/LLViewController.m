//
//  LLViewController.m
//  LLObject
//
//  Created by ruris on 04/28/2021.
//  Copyright (c) 2021 ruris. All rights reserved.
//

#import "LLViewController.h"
#import <LLObject.h>

@interface LLViewController ()

@end

@implementation LLViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.ll_KVMap[@"key"] = @"value";
    NSLog(@"%@", [self ll_ivarList]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"%@", self.ll_KVMap[@"key"]);
}

@end
