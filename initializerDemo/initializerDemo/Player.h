//
//  Player.h
//  initializerDemo
//
//  Created by Luiz on 3/29/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Player : NSObject

@property int score;
- (instancetype)initWithInteger: (int) initialScore;
@end

NS_ASSUME_NONNULL_END
