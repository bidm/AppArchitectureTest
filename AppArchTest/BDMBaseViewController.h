//
//  BDMBaseViewController.h
//  AppArchTest
//
//  Created by bidm on 2019/3/26.
//  Copyright © 2019年 bidm. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^BDMServiceCallback)(NSDictionary *dic);

NS_ASSUME_NONNULL_BEGIN

@interface BDMBaseViewController : UIViewController

@property (nonatomic, copy) BDMServiceCallback serviceCallBack;

@property (nonatomic, strong)NSDictionary *paramaterDict;

@end

NS_ASSUME_NONNULL_END
