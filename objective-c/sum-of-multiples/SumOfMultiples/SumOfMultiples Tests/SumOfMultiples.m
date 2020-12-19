//
//  SumOfMultiples.m
//  SumOfMultiples
//
//  Created by Nadiar Syaripul on 19/12/20.
//

#import "SumOfMultiples.h"
#import "math.h"

@implementation SumOfMultiples

+ (NSNumber *) toLimit:(NSNumber *)end inMultiples:(NSArray<NSNumber *> *)factorOf {
    NSMutableSet *set = [[NSMutableSet alloc] init];
    for (NSNumber *value in factorOf) {
        NSArray *coll = [SumOfMultiples sequence:value until:end];
        [set addObjectsFromArray:coll];
    }
    
    int sum = 0;
    for (NSNumber *value in set) {
        sum += [value intValue];
    }
    
    return [NSNumber numberWithInt:sum];
}

+ (NSArray<NSNumber *> *) sequence:(NSNumber *)nom until:(NSNumber *)limit {
    if ([nom intValue] == 0) {
        return @[@0];
    }
    
    NSMutableArray *arr = [[NSMutableArray alloc] init];
    for (int i=[nom intValue]; i<[limit intValue]; i += [nom intValue]) {
        [arr addObject:[NSNumber numberWithInt:i]];
    }
    
    return arr;
}

@end
