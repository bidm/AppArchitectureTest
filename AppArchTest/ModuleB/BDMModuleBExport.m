//
//  BDMModuleBExport.m
//  AppArchTest
//
//  Created by bidm on 2019/3/26.
//  Copyright © 2019年 bidm. All rights reserved.
//

#import "BDMModuleBExport.h"

@implementation BDMModuleBExport

+ (void)getModuleBServiceWithParam:(NSDictionary *__nullable)param withSourceVC:(UIViewController *)sourceVC isPresent:(BOOL)isPresent callBackHandler:(BDMRouterCallBack __nullable)handler {
    UIViewController * vc = (UIViewController *)[[BDMRouter sharedInstance] callModule:BDMModuleB ServiceName:BDMModuleBVCService andParam:param callBackHandler:handler];
    isPresent ? [sourceVC presentViewController:vc animated:YES completion:nil] : [sourceVC.navigationController pushViewController:vc animated:YES];
}

@end
