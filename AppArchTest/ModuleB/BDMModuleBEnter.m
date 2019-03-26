//
//  BDMModuleBEnter.m
//  AppArchTest
//
//  Created by bidm on 2019/3/26.
//  Copyright © 2019年 bidm. All rights reserved.
//

#import "BDMModuleBEnter.h"

@implementation BDMModuleBEnter

+ (void)load {
    [[BDMRouter sharedInstance] registerModule:BDMModuleB ServiceName:BDMModuleBVCService andServiceHandler:^id(NSDictionary *dic, BDMRouterCallBack responseCallback) {
        BDMModuleBVC *controller = [[BDMModuleBVC alloc]init];
        controller.serviceCallBack = responseCallback;
        controller.paramaterDict = dic;
        return controller;
    }];
}

@end
