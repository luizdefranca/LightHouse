//
//  main.m
//  TimeAfterTime-Chapter13
//
//  Created by Luiz on 3/20/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 We use nil when referring to the value of an empty pointer declared as pointing to an Objective-C
 object type, and NULL when referring to any other pointer, such as to a struct.
 When Objective-C was designed, it was decided that sending a message to nil would be OK; it would simply do nothing. Thus, this code is completely legal:
 Important thing #1: If you are sending messages and nothing is happening, make sure you are not sending messages to a pointer that has been set to nil.
 Important thing #2: If you send a message to nil, the return value is meaningless and should be disregarded.
In general, if you expect a number or a pointer as a result, sending a message to nil will return zero. However, for other types like structs, you will get strange and unexpected return values.
 
 id
 When declaring a pointer to hold the address of an object, most of the time you specify the class of the object that the pointer will refer to:
 NSDate *expiration;
 However, often you need a way to create a pointer without knowing exactly what kind of object the pointer will refer to. For this case, you use the type id to mean “a pointer to some kind of Objective-C object” Here is what it looks like when you use it:
 id delegate;
 Notice that there is no asterisk in this declaration. id implies the asterisk.
 */

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSDate *now = [NSDate date]; //convenience method
        NSDate *now = [[NSDate alloc] init];

        NSLog(@"This NSDate object lives at %p", now);
        NSLog(@"The date is %@", now);
        
        long seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %lo seconds since the start of 1970", seconds);
        
        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"In 100,000 seconds it will be %@", later);
        
        NSCalendar *calendar = [NSCalendar currentCalendar];
        NSLog(@"My calendar is %@", [calendar calendarIdentifier]);
        
        unsigned long day = [calendar ordinalityOfUnit: NSCalendarUnitDay
                                        inUnit:NSCalendarUnitMonth
                                        forDate:now];
        NSLog(@"this is day %lu of the month", day);
    }
    return 0;
}
