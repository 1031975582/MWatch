//
//  DownLoadUtil.h
//  STB
//
//  Created by shulianyong on 13-11-30.
//  Copyright (c) 2013年 Chengdu Sifang Information Technology Co.LTD. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"
#import "UploadSoft.h"



typedef void(^DownLoadProcess)(float aProcessValue);

@interface DownLoadUtil : NSObject

+ (void)downFile:(NSString*)aFileName
 withLocFileName:(NSString*)aLocFileName
withProcessBlock:(DownLoadProcess)processBlock
withDownSuccessBlock:(dispatch_block_t)successBlock
withDownFailBlck:(dispatch_block_t)failBlock;

@end
