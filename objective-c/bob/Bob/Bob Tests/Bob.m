//
//  Bob.m
//  Bob Tests
//
//  Created by Nadiar Syaripul on 08/12/20.
//  Coppied from https://exercism.io/tracks/objective-c/exercises/bob/solutions/73776820e34b43c4be4f3c1629bd2caf

#import "Bob.h"

@implementation Bob

static NSString *const BOBResponseQuestion = @"Sure.";
static NSString *const BOBResponseYelling = @"Whoa, chill out!";
static NSString *const BOBResponseNothing = @"Fine. Be that way!";
static NSString *const BOBREsponseWhareverElse = @"Whatever.";

- (NSString *) hey:(NSString *)word {

    // check saying nothing first as could be nil and therefore
    // pointless checking other stuff
    if ([self isResponseToNothing:word]) return BOBResponseNothing;
    if ([self isYelling:word]) return BOBResponseYelling;
    if ([self isQuestion:word]) return BOBResponseQuestion;
    return BOBREsponseWhareverElse;
}

# pragma mark - Helpers

/**
 Helper method to work out if the specified input contains a question
 
 @param word String to check
 @pre input cannot be nil
 @return YES if input looks like a question; NO otherwise
 */
- (BOOL) isQuestion: (NSString *)word {
    NSAssert(word != nil, @"Input can't be nil");
    
    BOOL result = [word hasSuffix:@"?"];
    return result;
}

/**
 Helper method to work out if the specified input contains a question
 
 @param word String to check
 @pre input cannot be nil
 @return YES if input looks a bit shouty; NO otherwise
 */
- (BOOL) isYelling: (NSString *)word {
    NSAssert(word != nil, @"Input can't be nil");
    
    BOOL hasLowerChar = [word rangeOfCharacterFromSet:[NSCharacterSet lowercaseLetterCharacterSet]].location != NSNotFound;
    BOOL hasUpperChar = [word rangeOfCharacterFromSet:[NSCharacterSet uppercaseLetterCharacterSet]].location != NSNotFound;
    
    if (hasLowerChar && hasUpperChar) return NO;
    if (hasUpperChar) return YES;
    return NO;
}

/**
 Helper method to work out if the specified input contains a question
 
 @param word String to check
 @return YES if input appears to be empty
 */
- (BOOL) isResponseToNothing: (NSString *)word {
    if ([word length] < 1) return YES;
    if ([word stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]].length < 1) return YES;
    return NO;
}

@end
