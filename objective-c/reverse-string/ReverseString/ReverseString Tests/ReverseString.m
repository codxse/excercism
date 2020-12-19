//
//  ReverseString.m
//  ReverseString
//
//  Created by Nadiar Syaripul on 19/12/20.
//

#import "ReverseString.h"

@implementation NSString (ReverseString)

- (NSString *)reverseString {
    
    NSMutableString *reversed = [NSMutableString string];
    int length = (int)[self length];
    
    for (int i=length; i>0; i--) {
        NSString *nextString = [self substringWithRange:NSMakeRange(i-1, 1)];
        [reversed appendString:nextString];
    }
    
    return reversed;
}

@end
