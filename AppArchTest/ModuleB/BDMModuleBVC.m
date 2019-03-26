//
//  BDMModuleBVC.m
//  AppArchTest
//
//  Created by bidm on 2019/3/26.
//  Copyright © 2019年 bidm. All rights reserved.
//

#import "BDMModuleBVC.h"

@interface BDMModuleBVC ()

@end

@implementation BDMModuleBVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"ModuleB";
    
    
    NSLog(@"paramaterDict = %@",self.paramaterDict);
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSDictionary *dict = @{
                               @"callBack":@"ModuleBCallBack"
                               };
        self.serviceCallBack(dict);
    });
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [btn setBackgroundColor:[UIColor redColor]];
    [btn setTitle:@"ModuleB" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)btnClick {
    NSMutableDictionary *paramaters = [NSMutableDictionary dictionary];
    paramaters[@"paramaters"] = @"toModuleB";
    [BDMModuleCExport getModuleCServiceWithParam:paramaters withSourceVC:self isPresent:NO callBackHandler:^(NSDictionary *dict) {
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
