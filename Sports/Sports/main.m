//
//  main.m
//  Sports
//
//  Created by Luiz on 3/21/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *sports = @[@"Football tennis", @"Footvolley", @"Soccer", @"Tennis", @"Volleyball", @"Basketball", @"Surfing", @"Rock climbing" ];
        NSLog(@"Second sport: %@", sports[2]);
        
        NSMutableArray *mutableSports = [[NSMutableArray alloc] initWithArray:sports];
        
        NSLog(@"Number of sports before a sport removed: %lu", (unsigned long)[mutableSports count]);
        NSString *temporarySport = [mutableSports lastObject];
        NSLog(@"Removed sport: %@", temporarySport);
        [mutableSports removeLastObject];
        NSLog(@"Number of sports after a sport removed: %lu", (unsigned long)[mutableSports count]);
        [mutableSports insertObject: temporarySport atIndex:0];
        NSLog(@"Sport at index 0: %@ - number of elements: %lu", mutableSports[0], [mutableSports count]);
        
        
        
    }
    return 0;
}
