//
//  NSString+UserDefault.m
//  OWIN
//
//  Created by zhourr_ on 16/1/11.
//  Copyright © 2016年 OHS. All rights reserved.
//

#import "NSString+UserDefault.h"

@implementation NSString (UserDefault)

/**
 * NSUserDefaults通用方法（NSData
 */
- (void)setUserDefaultWithData: (NSData *)value{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    if ([userDefaults valueForKey:self])
    {
        [userDefaults removeObjectForKey:self];
    }
    
    if (value)
    {
        [userDefaults setObject:value forKey:self];
        [userDefaults synchronize];
    }
}

- (NSData *)getUserDefaultData{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSData *value = [userDefaults valueForKey:self];
    
    return value;
}

/**
 * NSUserDefaults通用方法（NSString
 */
- (void)setUserDefaultWithString: (NSString *)string{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    if ([userDefaults stringForKey:self])
    {
        [userDefaults removeObjectForKey:self];
    }
    
    if (string)
    {
        [userDefaults setObject:string forKey:self];
        [userDefaults synchronize];
    }
}

- (NSString *)getUserDefaultString{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSString *value = [userDefaults stringForKey:self];
    
    return value;
}

/**
 * NSUserDefaults通用方法（NSObject
 */
- (void)setUserDefaultWithObject: (NSObject *)object{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    if ([userDefaults stringForKey:self])
    {
        [userDefaults removeObjectForKey:self];
    }
    
    if (object)
    {
        [userDefaults setObject:object forKey:self];
        [userDefaults synchronize];
    }
}

- (NSObject *)getUserDefaultObject{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSObject *value = [userDefaults objectForKey:self];
    
    return value;
}

@end
