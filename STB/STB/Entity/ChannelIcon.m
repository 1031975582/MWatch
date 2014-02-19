//
//  ChannelIcon.m
//  STB
//
//  Created by shulianyong on 14-2-16.
//  Copyright (c) 2014年 Shanghai Hanfir Enterprise Management Limited. All rights reserved.
//

#import "ChannelIcon.h"

@implementation ChannelIcon

+ (NSString*)iconFolder
{
    static NSString *iconFolder=nil;
    if (iconFolder==nil) {
        iconFolder = [NSString cacheFolderPath];
        iconFolder = [iconFolder stringByAppendingPathComponent:@"IconFolder"];
        if (![[NSFileManager defaultManager] fileExistsAtPath:iconFolder]) {
            NSError *error = nil;
            BOOL result = [[NSFileManager defaultManager] createDirectoryAtPath:iconFolder
                                      withIntermediateDirectories:YES
                                                       attributes:nil
                                                            error:&error];
            if (!result) {
                ERROR(@"Create ICON Folder Error:%@",error);
            }
        }
    }
    return iconFolder;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    NSArray *allKeys = self.propertyKeys;
    id objValue = nil;
    for (NSString *key in allKeys) {
        objValue = [self valueForKey:key];
        [aCoder encodeObject:objValue forKey:key];
    }
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self=[super init];
    if (self) {
        NSArray *allKeys = self.propertyKeys;
        id objValue = nil;
        for (NSString *key in allKeys) {
            objValue = [aDecoder decodeObjectForKey:key];
            [self setValue:objValue forKey:key];
        }
    }
    return self;
}

- (NSString*)iconPath
{
    NSString *iconPath=nil;
    if (_name) {
        NSString *iconName = [_name stringByAppendingPathExtension:@"png"];
        iconPath = [[ChannelIcon iconFolder] stringByAppendingPathComponent:iconName];
        if (![[NSFileManager defaultManager] fileExistsAtPath:iconPath]) {
            iconPath = [[NSBundle mainBundle] pathForResource:_name ofType:@"png"];
        }
    }
    if (iconPath==nil || ![[NSFileManager defaultManager] fileExistsAtPath:iconPath]) {
        iconPath = [[NSBundle mainBundle] pathForResource:@"imgDefaultchannel" ofType:@"png"];
    }
    return iconPath;
}

@end

@implementation ServerChannelIcon



@end
