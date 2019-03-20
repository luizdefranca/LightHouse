//
//  main.m
//  Challege-Chapter11
//
//  Created by Luiz on 3/19/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        long secondsSince1970 = time(NULL);
        long secondsInTheFuture = secondsSince1970 + 4000000;
        
        struct tm futureDate;
        localtime_r(&secondsInTheFuture , &futureDate);
        int futureMonth = futureDate.tm_mon + 1;
        int futureDay = futureDate.tm_mday;
        int futureYear = futureDate.tm_year;
        if (futureDate.tm_year >= 100){
            futureYear -= 100;
        }
        
        NSLog(@"The time in 4 million seconds in the future is %i-%i-%i", futureMonth, futureDay, futureYear);
    }
    return 0;
}
