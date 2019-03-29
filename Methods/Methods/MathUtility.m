//
//  MathUtility.m
//  Methods
//
//  Created by Luiz on 3/28/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import "MathUtility.h"

@implementation MathUtility
-(int) timesTen: (int) number
{
    NSLog(@"You passed in the value: %i", number);
    return 10 * number;
};
-(int) addNumber: (int) a
        toNumber: (int) b
{
    return a + b;
};

@end
