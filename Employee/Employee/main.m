//
//  main.m
//  Employee
//
//  Created by Luiz on 3/22/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Employee *fred = [[Employee alloc] init];
        [fred setFirstName: @"Fred"];
        [fred setSecondName: @"Allen"];
        
        [fred someMethod];
        
        
    }
    return 0;
}
