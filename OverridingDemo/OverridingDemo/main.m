//
//  main.m
//  OverridingDemo
//
//  Created by Luiz on 3/29/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Article.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Article *a = [[Article alloc]init];
        Article *b = [[Article alloc]init];
        Article *c = [[Article alloc]init];
        
        NSDate *myDate = [NSDate dateWithNaturalLanguageString:@"jan 1st last year" ];
        NSLog(@"mydate: %@", myDate);
        
        NSLog(@"Articles: \n %@\n %@\n %@\n", a,b, c);
        
        NSFileManager *myFM = [[NSFileManager alloc]init];
        NSLog(@"%@", myFM);
        
    }
    return 0;
}
