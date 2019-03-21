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
        NSArray *sports = @[@"Football", @"Footvolley", @"Soccer", @"Tennis", @"Volleyball", @"Basketball", @"Surfing", @"Skiing" ];
        NSLog(@"Second sport: %@", sports[2]);
        
        NSMutableArray *mutableSports = [[NSMutableArray alloc] initWithArray:sports];
        
        NSLog(@"Number of sports before a sport removed: %lu", (unsigned long)[mutableSports count]);
        NSString *temporarySport = [mutableSports lastObject];
        NSLog(@"Removed sport: %@", temporarySport);
        [mutableSports removeLastObject];
        NSLog(@"Number of sports after a sport removed: %lu", (unsigned long)[mutableSports count]);
        [mutableSports insertObject: temporarySport atIndex:0];
        NSLog(@"First element of sports: %@ - number of elements: %lu", mutableSports[0], [mutableSports count]);
        
        for (NSString *sport in mutableSports) {
            unsigned long elementNumber =(unsigned long)[mutableSports indexOfObject:sport] + 1;
            NSLog(@"Element %lu - %@", elementNumber, sport);
        }
        
        NSDictionary *sportEmojis = @{@"Football": @"🏈", @"Footvolley": @"🦶", @"Soccer": @"⚽️", @"Tennis": @"🎾", @"Volleyball": @"🏐", @"Basketball": @"🏀", @"Surfing": @"🏄‍♀️", @"Skiing": @"⛷"};

        for (NSString *key in [sportEmojis allKeys]) {
            NSString *value = sportEmojis[key];
            NSLog(@"Key: %@ - Value: %@", key, value);
        }
        
        
    }
    return 0;
}
