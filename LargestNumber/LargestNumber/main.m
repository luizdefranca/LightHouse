//
//  main.m
//  LargestNumber
//
//  Created by Luiz on 3/21/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <limits.h>

NSNumber* largestNumberFor(NSArray *array ){
    NSNumber *maxValue =  @INT_MIN ;
    
    for (NSNumber *number in array) {
        if([number isGreaterThanOrEqualTo: maxValue]){
            maxValue = number;
        }
    }
    return maxValue;
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        NSArray *firstInput = @[@3, @7, @6, @8];
        NSArray *secondInput = @[@44, @5, @6];
        NSLog(@"%@", largestNumberFor(firstInput));
        NSLog(@"%@", largestNumberFor(secondInput));
    }
    return 0;
}
