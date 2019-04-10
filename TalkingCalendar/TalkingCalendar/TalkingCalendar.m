//
//  TalkingCalendar.m
//  TalkingCalendar
//
//  Created by Luiz on 3/31/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import "TalkingCalendar.h"

@implementation TalkingCalendar


//Custom Initializers
- (instancetype)initWithDate:(NSString *)date
{
    self = [super init];
    if(self)
    {
        _date = date;
    }
    
    return self;
    
};

//Public Methods
- (NSString *)parse
{
    
    //Converting the NSString to a NSDate
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"YYYY/MM/dd"];
    NSDate *dt = [dateFormat dateFromString:self.date];
    

    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *components = [calendar components:NSCalendarUnitYear| NSCalendarUnitMonth | NSCalendarUnitDay fromDate:dt];
    
    NSInteger day = components.day;
    NSInteger month =  components.month;
    NSInteger year = components.year;
    
    NSString *completeMonth = [NSString stringWithFormat:@"%@ %@, %li",
                               [self monthNameFromInt: month],
                               [self ordinaryDayFromInt:day],
                               year ];
   
    return completeMonth;
};


//Private Methods
- (NSString*) monthNameFromInt: (NSInteger) monthInt
{
    NSArray *months = @[@"January", @"February", @"March", @"April", @"May", @"June", @"July", @"August", @"September", @"October", @"November", @"December"];
    
    
    return [months objectAtIndex: monthInt -1];
}

- (NSString*) ordinaryDayFromInt: (NSInteger) dayInt
{
    NSString *dayOfMonth = @"";
    switch (dayInt) {
        case 1:
        case 21:
        case 31:
        {
            dayOfMonth = [NSString stringWithFormat: @"%list", dayInt ];
        }
            break;
        case 2:
        case 22:
        {
            dayOfMonth = [NSString stringWithFormat: @"%lind", dayInt ];
        }
            break;
        case 3:
        case 23:
        {
            dayOfMonth = [NSString stringWithFormat: @"%lird", dayInt ];
        }
            break;
        default:
        {
            dayOfMonth = [NSString stringWithFormat: @"%lith", dayInt ];
        }
            
    }
    
    return dayOfMonth;
}
@end

