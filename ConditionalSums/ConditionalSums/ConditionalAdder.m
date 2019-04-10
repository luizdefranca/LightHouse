//
//  ConditionalAdder.m
//  ConditionalSums
//
//  Created by Luiz on 3/31/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import "ConditionalAdder.h"

@implementation ConditionalAdder
- (instancetype)initWithNumbers:(NSArray *)numbers
{
  
        self = [super init];
        if (self) {
            _numbers = numbers;
        }
        return self;
   
  
};

- (int)sumWithCondition:(NSString *)condition
{
   
    int result = 0;
    
    if ([condition isEqualToString:@"even"]) {
        for (NSNumber *number  in self.numbers) {
            int numberInteger = [number intValue];
            if(numberInteger % 2 == 0){
                result = result + numberInteger;
            }
        }
    } else {
        for (NSNumber *number  in self.numbers) {
            int numberInteger = [number intValue];
            if(numberInteger % 2 != 0){
                result = result + numberInteger;
            }
        }
    }

    
    return result;
};
@end
