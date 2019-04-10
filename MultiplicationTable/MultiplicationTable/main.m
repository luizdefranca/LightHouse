//
//  main.m
//  MultiplicationTable
//
//  Created by Luiz on 4/2/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "MultiplicationTableBuilder.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"\n%@", [MultiplicationTableBuilder drawTable:1]);
        NSLog(@"\n%@", [MultiplicationTableBuilder drawTable:5]);
        NSLog(@"\n%@", [MultiplicationTableBuilder drawTable:10]);
       
    }
    return 0;
}
