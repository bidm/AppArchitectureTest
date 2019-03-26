//
//  BDMRouter.m
//  AppArchTest
//
//  Created by bidm on 2019/3/26.
//  Copyright © 2019年 bidm. All rights reserved.
//

#import "BDMRouter.h"

@implementation BDMRouter

+ (BDMRouter *)sharedInstance {
    static id sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (id)init {
    self=[super init];
    if (self) {
        _BDMServices=[NSMutableDictionary dictionary];
    }
    return self;
}

- (void)registerModule:(NSString *)moduleName ServiceName:(NSString *)serviceName andServiceHandler:(BDMRouterHandler)handler {
    if (moduleName && serviceName && handler) {
        if (![_BDMServices objectForKey:moduleName]||![[_BDMServices objectForKey:moduleName] isKindOfClass:[NSDictionary class]]) {
            _BDMServices[moduleName]=[NSMutableDictionary dictionary];
        }
        _BDMServices[moduleName][serviceName] = [handler copy];
    }
}

- (id)callModule:(NSString *)moduleName ServiceName:(NSString *)serviceName andParam:(NSDictionary *__nullable)param callBackHandler:(BDMRouterCallBack __nullable)handler {
    if (_BDMServices[moduleName][serviceName]) {
        BDMRouterHandler serviceHandler = _BDMServices[moduleName][serviceName];
        return serviceHandler(param,handler);
        
    } else {
        return nil;
    }
}

@end
