//
//  main.m
//  SecondApp
//
//  Created by Luiz on 3/13/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int minutes = 60;
        int hours = 24;
        int days = 365;
        int minutesInAYear = minutes * hours * days;
        NSLog(@"there are %i minutes in a year", minutesInAYear);
    }
    return 0;
}
