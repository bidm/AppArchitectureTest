//
//  BDMModuleAExport.m
//  AppArchTest
//
//  Created by bidm on 2019/3/26.
//  Copyright © 2019年 bidm. All rights reserved.
//

#import "BDMModuleAExport.h"

@implementation BDMModuleAExport

+ (void)getModuleAServiceWithParam:(NSDictionary *__nullable)param withSourceVC:(UIViewController *)sourceVC isPresent:(BOOL)isPresent callBackHandler:(BDMRouterCallBack __nullable)handler {
    UIViewController * vc = (UIViewController *)[[BDMRouter sharedInstance] callModule:BDMModuleA ServiceName:BDMModuleAVCService andParam:param callBackHandler:handler];
    isPresent ? [sourceVC presentViewController:vc animated:YES completion:nil] : [sourceVC.navigationController pushViewController:vc animated:YES];
}

@end
