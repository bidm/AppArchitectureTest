//
//  BDMModuleAVC.m
//  AppArchTest
//
//  Created by bidm on 2019/3/26.
//  Copyright © 2019年 bidm. All rights reserved.
//

#import "BDMModuleAVC.h"

@interface BDMModuleAVC ()

@end

@implementation BDMModuleAVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"ModuleA";
    
    
    NSLog(@"paramaterDict = %@",self.paramaterDict);
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSDictionary *dict = @{
                               @"callBack":@"ModuleACallBack"
                               };
        self.serviceCallBack(dict);
    });
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [btn setBackgroundColor:[UIColor redColor]];
    [btn setTitle:@"ModuleA" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)btnClick {
    NSMutableDictionary *paramaters = [NSMutableDictionary dictionary];
    paramaters[@"paramaters"] = @"toModuleB";
    [BDMModuleBExport getModuleBServiceWithParam:paramaters withSourceVC:self isPresent:NO callBackHandler:^(NSDictionary *dict) {
        NSLog(@"callBack = %@",dict);
    }];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
