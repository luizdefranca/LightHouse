//
//  Toyota.m
//  Cars_OOP
//
//  Created by Luiz on 3/30/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import "Toyota.h"

@implementation Toyota
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.model = @"Prius";
    }
    return self;
}

@end
