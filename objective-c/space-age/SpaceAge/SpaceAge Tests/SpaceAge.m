//
//  SpaceAge.m
//  SpaceAge
//
//  Created by Nadiar Syaripul on 21/12/20.
//

#import "SpaceAge.h"

@implementation SpaceAge

- (id) initWithSeconds:(double)earthSeconds {
    self = [super init];
    if (self) {
        [self setSeconds:earthSeconds];
    }
    return self;
}

- (double) onEarth {
    return [self seconds] / 31557600;
}

- (double) onMars {
    return [self onEarth] / 1.8808158;
}

- (double) onVenus {
    return [self onEarth] / 0.61519726;
}

- (double) onSaturn {
    return [self onEarth] / 29.447498;
}

- (double) onUranus {
    return [self onEarth] / 84.016846;
}

- (double) onJupiter {
    return [self onEarth] / 11.862615;
}

- (double) onMercury {
    return [self onEarth] / 0.2408467;
}

- (double) onNeptune {
    return [self onEarth] / 164.79132 ;
}

@end
