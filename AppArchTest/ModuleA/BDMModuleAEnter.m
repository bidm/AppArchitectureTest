//
//  BDMModuleAEnter.m
//  AppArchTest
//
//  Created by bidm on 2019/3/26.
//  Copyright © 2019年 bidm. All rights reserved.
//

#import "BDMModuleAEnter.h"
#import "Header.h"

@implementation BDMModuleAEnter

+ (void)load {
    [[BDMRouter sharedInstance] registerModule:BDMModuleA ServiceName:BDMModuleAVCService andServiceHandler:^id(NSDictionary *dic, BDMRouterCallBack responseCallback) {
        BDMModuleAVC *controller = [[BDMModuleAVC alloc]init];
        controller.serviceCallBack = responseCallback;
        controller.paramaterDict = dic;
        return controller;
    }];
}

@end
