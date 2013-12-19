//
//  SingleAlert.h
//  STB
//
//  Created by shulianyong on 13-12-16.
//  Copyright (c) 2013年 Chengdu Sifang Information Technology Co.LTD. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SingleAlert : NSObject

@property (nonatomic,strong) UIAlertView *alertView;

+ (SingleAlert*)shareInstance;

+ (void)showMessage:(NSString*)aMessgae;

@end
