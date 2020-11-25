//
//  HelloWorld.m
//  HelloWorld Tests
//
//  Created by Nadiar Syaripul on 24/11/20.
//

#import "HelloWorld.h"

@implementation HelloWorld

-(NSString*) hello:(NSString *)input {
    return [NSString stringWithFormat:@"Hello, %@", input ?: @"World"];
}

@end
