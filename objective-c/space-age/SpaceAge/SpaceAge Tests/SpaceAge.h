//
//  SpaceAge.h
//  SpaceAge
//
//  Created by Nadiar Syaripul on 21/12/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SpaceAge : NSObject

@property double seconds;

- (id) initWithSeconds:(double)seconds;

- (double) onEarth;

- (double) onMercury;

- (double) onVenus;

- (double) onMars;

- (double) onJupiter;

- (double) onSaturn;

- (double) onUranus;

- (double) onNeptune;

@end

NS_ASSUME_NONNULL_END
