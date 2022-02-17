/*
 *  UserDefaults.m
 *  Freenet Controller
 *
 *  Created by Joey Stanford on Wed Feb 12 2003.
 * 
 *
 */

#include "UserDefaults.h"


@implementation NSApplication (ASKAUserDefaults)

- (id)defaultObjectForKey:(NSString *)defaultName
{
    return [[NSUserDefaults standardUserDefaults] objectForKey:defaultName];
}

- (void)setDefaultObject:(id)value forKey:(NSString *)defaultName
{
    [[NSUserDefaults standardUserDefaults] setObject:value forKey:defaultName];
}

- (void)removeDefaultObjectForKey:(NSString *)defaultName
{
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:defaultName];
}

- (void)registerDefaultObjects:(NSArray *)objects forKeys:(NSArray *)keys
{
    [[NSUserDefaults standardUserDefaults] registerDefaults:[NSDictionary dictionaryWithObjects:objects forKeys:keys]];
}

@end


