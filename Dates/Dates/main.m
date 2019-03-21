//
//  main.m
//  Dates
//
//  Created by Luiz on 3/20/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSNumber *age = [NSNumber numberWithInt:48];
        NSLog(@"The age is %@", age);
        int ageInInt = [age intValue];
        int incremetedAgeInInt = ++ageInInt ;
        NSNumber *incremetedAge = [NSNumber numberWithInt:incremetedAgeInInt];
        NSLog(@"The incremented age is %@", incremetedAge);
        
        NSDate *now = [NSDate date];
        NSLog(@"Today is %@", now);
        
        NSDateComponents * comp = [[NSDateComponents alloc] init];
        [comp setDay:1];
        NSCalendar * calendar = [NSCalendar currentCalendar];
        NSDate *tomorrow = [calendar dateByAddingComponents:comp toDate:now options: NSCalendarMatchNextTime];
        NSLog(@"Tomorrow is %@", tomorrow);
        
    
        
        NSDateFormatter * formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:  @"yyyy-MM-dd"];
        
        NSDate * formattedDate = [formatter dateFromString: @"1997-11-24" ];
        NSLog(@"The new formatted date is %@", formattedDate);
        NSString *formattedStringDate = [formatter stringFromDate:formattedDate];
        NSLog(@"%@", formattedStringDate);
        
        NSTimeInterval secondsFromBirthToNow = [formattedDate timeIntervalSinceNow];
        
        NSLog(@"Time in seconds from Birth %f", secondsFromBirthToNow);
        
    }
    return 0;
}
