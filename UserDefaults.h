/*
 *  UserDefaults.h
 *  Freenet Controller
 *
 *  Created by Joey Stanford on Wed Feb 12 2003.
 *
 */

#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>

@interface NSApplication (ASKAUserDefaults)

- (id)defaultObjectForKey:(NSString *)defaultName;
- (void)setDefaultObject:(id)value forKey:(NSString *)defaultName;
- (void)removeDefaultObjectForKey:(NSString *)defaultName;
- (void)registerDefaultObjects:(NSArray *)objects forKeys:(NSArray *)keys;

@end


