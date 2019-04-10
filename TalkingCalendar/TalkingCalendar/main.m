//
//  main.m
//  TalkingCalendar
//
//  Created by Luiz on 3/31/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "TalkingCalendar.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TalkingCalendar *calendar1 = [[TalkingCalendar alloc] initWithDate:@"2017/12/02"];
        NSLog(@"%@", [calendar1 parse]);
        TalkingCalendar *calendar2 = [[TalkingCalendar alloc] initWithDate:@"2007/11/11"];
        NSLog(@"%@", [calendar2 parse]);
        TalkingCalendar *calendar3 = [[TalkingCalendar alloc] initWithDate:@"1987/08/24"];
        NSLog(@"%@", [calendar3 parse]);
        
        TalkingCalendar *calendar4 = [[TalkingCalendar alloc] initWithDate:@"1987/08/23"];
        NSLog(@"%@", [calendar4 parse]);
        
        TalkingCalendar *calendar5 = [[TalkingCalendar alloc] initWithDate:@"1987/08/21"];
        NSLog(@"%@", [calendar5 parse]);
        

    }
    return 0;
}
