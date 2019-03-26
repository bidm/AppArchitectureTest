//
//  BDMModuleAExport.h
//  AppArchTest
//
//  Created by bidm on 2019/3/26.
//  Copyright © 2019年 bidm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Header.h"

NS_ASSUME_NONNULL_BEGIN

@interface BDMModuleAExport : NSObject

+ (void)getModuleAServiceWithParam:(NSDictionary *__nullable)param withSourceVC:(UIViewController *)sourceVC isPresent:(BOOL)isPresent callBackHandler:(BDMRouterCallBack __nullable)handler;

@end

NS_ASSUME_NONNULL_END
