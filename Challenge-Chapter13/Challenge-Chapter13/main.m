//
//  main.m
//  Challenge-Chapter13
//
//  Created by Luiz on 3/20/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        NSDate *now = [NSDate date];
        unsigned long secondsFrom1970ToNow = [now timeIntervalSince1970];
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setDay: 24];
        [comps setMonth: 12];
        [comps setYear: 1997];
        
        NSCalendar * cal = [[NSCalendar alloc] initWithCalendarIdentifier: NSCalendarIdentifierGregorian];
        NSDate *dateOfBirth = [cal dateFromComponents: comps];
        unsigned long secondsFrom1970ToBirth = [dateOfBirth timeIntervalSince1970];
        unsigned long secondsFromBirthToNow = secondsFrom1970ToNow - secondsFrom1970ToBirth;
        NSLog(@"There are %lu seconds from my birth day to now", secondsFromBirthToNow);
        
        
        
        
    }
    return 0;
}
