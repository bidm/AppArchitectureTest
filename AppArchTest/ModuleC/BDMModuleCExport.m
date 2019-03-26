//
//  BDMModuleCExport.m
//  AppArchTest
//
//  Created by bidm on 2019/3/26.
//  Copyright © 2019年 bidm. All rights reserved.
//

#import "BDMModuleCExport.h"

@implementation BDMModuleCExport

+ (void)getModuleCServiceWithParam:(NSDictionary *__nullable)param withSourceVC:(UIViewController *)sourceVC isPresent:(BOOL)isPresent callBackHandler:(BDMRouterCallBack __nullable)handler {
    UIViewController * vc = (UIViewController *)[[BDMRouter sharedInstance] callModule:BDMModuleC ServiceName:BDMModuleCVCService andParam:param callBackHandler:handler];
    isPresent ? [sourceVC presentViewController:vc animated:YES completion:nil] : [sourceVC.navigationController pushViewController:vc animated:YES];
}

@end
