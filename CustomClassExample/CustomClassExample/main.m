//
//  main.m
//  CustomClassExample
//
//  Created by Luiz on 3/18/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "MathUtility.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Employee *fred = [[Employee alloc] init];
        [fred someMethod];
        [fred setName: @"Fred Smith"];
        
        MathUtility *util = [[MathUtility alloc] init];
        int timesTen = [util timesTen: 20];
        int sum = [util addNumber:20 toNumber: 30];
        
        
        
    }
    return 0;
}
