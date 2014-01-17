//
//  DefaultChannelTool.h
//  STB
//
//  Created by shulianyong on 14-1-17.
//  Copyright (c) 2014年 Chengdu Sifang Information Technology Co.LTD. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Channel.h"

@interface DefaultChannelTool : NSObject

@property (nonatomic,strong) NSString *defaultChannelName;
@property (nonatomic,assign) NSInteger defaultChannelId;

+ (instancetype)shareInstance;
- (void)configDefaultChannel:(Channel*)aChannel;

@end
