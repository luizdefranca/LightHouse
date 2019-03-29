//
//  main.m
//  LargestNumber
//
//  Created by Luiz on 3/21/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <limits.h>
#import "ArrayUtility.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        ArrayUtility *util = [[ArrayUtility alloc]init];
        
        NSArray *firstInput = @[@3, @7, @6, @8];
        NSArray *secondInput = @[@44, @5, @6];
        NSLog(@"The largest number of the firstInput is %@", [util largestNumber:firstInput]);
        NSLog(@"The largest number of the secondInput is %@", [util largestNumber:secondInput]);
        
        NSLog(@"The smallest number of the firstInput is %@", [util smallestNumber: firstInput]);
        NSLog(@"The smallest number of the secondInput is %@", [util smallestNumber:secondInput]);
        
        NSNumber *medianInNumber =  [util medianNumber: firstInput];
        float median = [medianInNumber floatValue];
        NSLog(@"The median of the firstInput is %.2f", median);
        
        medianInNumber =[util medianNumber:secondInput];
        median = [medianInNumber floatValue];
        NSLog(@"The median number of the secondInput is %.2f", median);
        
    }
    return 0;
}
