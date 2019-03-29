//
//  ArrayUtility.m
//  LargestNumber
//
//  Created by Luiz on 3/28/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import "ArrayUtility.h"

@implementation ArrayUtility
static NSString *_someString = nil;
+ (NSString *)someString
{
    return _someString;
    
}
+ (void)setSomeString:(NSString *)newString
{
    _someString = newString;
    
}

-(NSNumber*) largestNumber: (NSArray *) numbers
{
    NSNumber *maxValue =  @INT_MIN ;
    
    for (NSNumber *number in numbers) {
        if([number isGreaterThanOrEqualTo: maxValue]){
            maxValue = number;
        }
    }
    return maxValue;
}

-(NSNumber*) smallestNumber: (NSArray *) numbers
{
    NSNumber *minNumber = @INT_MAX ;
    for (NSNumber *number in numbers) {
        if ([number isLessThanOrEqualTo: minNumber]) {
            minNumber = number;
        }
    }
    return minNumber;
}

-(NSNumber*) medianNumber: (NSArray*) numbers
{
    int sum = 0;
    int count = (int)[numbers count];
    
    for (int i = 0; i < numbers.count; i++) {
        NSNumber *intNSNumber = [numbers objectAtIndex:i];
        int number = (int) [intNSNumber integerValue] ;
        sum = sum + number;
        
    }
    
    float median = (float) sum /count;
    NSNumber *medianInNumber = [NSNumber numberWithFloat: median];
    return  medianInNumber;
}
@end
