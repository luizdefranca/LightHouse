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
        
        
        
    }
    return 0;
}
