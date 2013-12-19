//
//  ConfirmUtil.m
//  STB
//
//  Created by shulianyong on 13-12-1.
//  Copyright (c) 2013年 Chengdu Sifang Information Technology Co.LTD. All rights reserved.
//

#import "ConfirmUtil.h"

@interface ConfirmUtil ()


@property (nonatomic,strong) dispatch_block_t OKBlock;
@property (nonatomic,strong) dispatch_block_t CancelBlock;

@end

@implementation ConfirmUtil

+ (instancetype)Util
{
    ConfirmUtil *util = [[ConfirmUtil alloc] init];
    return util;
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex==alertView.firstOtherButtonIndex) {
        self.OKBlock();
    }
    else
    {
        self.CancelBlock();
    }
}


- (void)showConfirmWithTitle:(NSString*)aTitle
                 withMessage:(NSString*)aMsg
                 WithOKBlcok:(dispatch_block_t)okBlock
             withCancelBlock:(dispatch_block_t)cancelBlock
{
    self.OKBlock = okBlock;
    self.CancelBlock = cancelBlock;
    UIAlertView *confirmView = [[UIAlertView alloc] initWithTitle:aTitle==nil?MyLocalizedString(@"Alert"):aTitle
                                                          message:aMsg
                                                         delegate:self
                                                cancelButtonTitle:MyLocalizedString(@"Cancel")
                                                otherButtonTitles:MyLocalizedString(@"OK"), nil];
    [confirmView show];
}

@end
