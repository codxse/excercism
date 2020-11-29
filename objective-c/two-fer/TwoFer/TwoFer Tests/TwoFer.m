//
//  TwoFer.m
//  TwoFer Tests
//
//  Created by Nadiar Syaripul on 29/11/20.
//

#import "TwoFer.h"

@implementation TwoFer

+ (NSString*) twoFerWithName {
    return @"One for you, one for me.";
}

+ (NSString*) twoFerWithName:(NSString*)name {
    return [NSString stringWithFormat:@"One for %@, one for me.", name ?: @"you"];
}

@end
