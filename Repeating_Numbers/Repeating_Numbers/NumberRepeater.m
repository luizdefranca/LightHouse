//
//  NumberRepeater.m
//  Repeating_Numbers
//
//  Created by Luiz on 3/30/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import "NumberRepeater.h"

@implementation NumberRepeater
//Custom Initializers
- (instancetype)initWithNumbers:(NSArray *)array
{
    self = [super init];
    if(self){
        _array = array;
    }
    return self;
};

//Methods
- (NSString *)process
{
   
    NSMutableArray *exit = [[NSMutableArray alloc]init];
    int number = 0;
    int times = 0;
    
    for (NSArray *elementInArray in _array) {
         NSMutableString *word = [NSMutableString string];
        number = (int)[[elementInArray objectAtIndex:0] integerValue];
        times = (int)[[elementInArray objectAtIndex:1] integerValue];
        
        for (int i = 0; i < times; i++) {
            [word appendFormat:@"%i", number];
        }
        [exit addObject: word];
      
    }

    NSString *bye = [exit componentsJoinedByString:@", "];
    return bye;
};
@end
