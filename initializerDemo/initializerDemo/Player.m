//
//  Player.m
//  initializerDemo
//
//  Created by Luiz on 3/29/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import "Player.h"

@implementation Player

-(instancetype) init
{
    self= [self initWithInteger:5000];
    return self;
}

-(instancetype) initWithInteger: (int) initialScore
{
    self = [super init];
    if (self) {
        _score = initialScore;
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"The dealloc method is called automatically");
}
@end
