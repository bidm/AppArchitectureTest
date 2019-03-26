//
//  BDMModuleCEnter.m
//  AppArchTest
//
//  Created by bidm on 2019/3/26.
//  Copyright © 2019年 bidm. All rights reserved.
//

#import "BDMModuleCEnter.h"

@implementation BDMModuleCEnter

+ (void)load {
    [[BDMRouter sharedInstance] registerModule:BDMModuleC ServiceName:BDMModuleCVCService andServiceHandler:^id(NSDictionary *dic, BDMRouterCallBack responseCallback) {
        BDMModuleCVC *controller = [[BDMModuleCVC alloc]init];
        controller.serviceCallBack = responseCallback;
        controller.paramaterDict = dic;
        return controller;
    }];
}

@end
