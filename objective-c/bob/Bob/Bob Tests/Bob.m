//
//  Bob.m
//  Bob Tests
//
//  Created by Nadiar Syaripul on 08/12/20.
//

#import "Bob.h"

@implementation Bob

- (NSString*) hey:(NSString *)word {
    if (word != nil && [word length] > 0) {
        unichar lastChar = [word characterAtIndex:[word length] - 1];
        
        NSString* UPPER = [word uppercaseString];
        if ([word length] > 2 && [UPPER isEqualToString:word] && (lastChar == '?' || lastChar == '!')) {
            return @"Whoa, chill out!";
        }
        
        if (lastChar == '?') return @"Sure.";
        
        NSCharacterSet *whitespace = [NSCharacterSet whitespaceCharacterSet];
        if ([[word stringByTrimmingCharactersInSet:whitespace] length] == 0) {
            return @"Fine. Be that way!";
        }
        
        if (lastChar == '.') return @"Whatever.";
        
        if ([UPPER isEqualToString:word]) return @"Whoa, chill out!";
        
        return @"Whatever.";
    }
    if ([word length] == 0) return @"Fine. Be that way!";
    return @"Whatever.";
}

@end
