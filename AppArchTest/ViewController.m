//
//  ViewController.m
//  AppArchTest
//
//  Created by bidm on 2019/3/26.
//  Copyright © 2019年 bidm. All rights reserved.
//

#import "ViewController.h"
#import "Header.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)btnClick:(id)sender {
    NSMutableDictionary *paramaters = [NSMutableDictionary dictionary];
    paramaters[@"paramaters"] = @"toModuleA";
    [BDMModuleAExport getModuleAServiceWithParam:paramaters withSourceVC:self isPresent:NO callBackHandler:^(NSDictionary *dict) {
        NSLog(@"callBack = %@",dict);
    }];
}

- (IBAction)btnBClick:(id)sender {
    NSMutableDictionary *paramaters = [NSMutableDictionary dictionary];
    paramaters[@"paramaters"] = @"toModuleB";
    [BDMModuleBExport getModuleBServiceWithParam:paramaters withSourceVC:self isPresent:NO callBackHandler:^(NSDictionary *dict) {
        NSLog(@"callBack = %@",dict);
    }];
}

- (IBAction)btnCClick:(id)sender {
    NSMutableDictionary *paramaters = [NSMutableDictionary dictionary];
    paramaters[@"paramaters"] = @"toModuleB";
    [BDMModuleCExport getModuleCServiceWithParam:paramaters withSourceVC:self isPresent:NO callBackHandler:^(NSDictionary *dict) {
        NSLog(@"callBack = %@",dict);
    }];
}

@end
