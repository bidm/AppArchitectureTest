//
//  BDMRouter.h
//  AppArchTest
//
//  Created by bidm on 2019/3/26.
//  Copyright © 2019年 bidm. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^BDMRouterCallBack)(NSDictionary *dict);
typedef id(^BDMRouterHandler)(NSDictionary *dict, BDMRouterCallBack callBackBlock);

NS_ASSUME_NONNULL_BEGIN

@interface BDMRouter : NSObject

{
    NSMutableDictionary *_BDMServices;
}

+ (BDMRouter *)sharedInstance;


- (void)registerModule:(NSString *)moduleName ServiceName:(NSString *)serviceName andServiceHandler:(BDMRouterHandler)handler;


- (id)callModule:(NSString *)moduleName ServiceName:(NSString *)serviceName andParam:(NSDictionary *__nullable)param callBackHandler:(BDMRouterCallBack __nullable)handler;

@end

NS_ASSUME_NONNULL_END
