//
//  main.m
//  Methods
//
//  Created by Luiz on 3/28/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MathUtility.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        MathUtility *util = [[MathUtility alloc] init];
        int result = [util timesTen:55];
        NSLog(@"the result of timesTen: %i", result);
        
        result = [util addNumber:99  toNumber:42];
        NSLog(@"The result of addNumber: toNumber: is %i", result);
        
    }
    return 0;
}
