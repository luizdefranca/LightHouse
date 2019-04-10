//
//  MultiplicationTableBuilder.m
//  MultiplicationTable
//
//  Created by Luiz on 4/2/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import "MultiplicationTableBuilder.h"


@implementation MultiplicationTableBuilder


+ (NSString *)drawTable:(int)maxValue
{
    int numberMaxOfDigits =  (int)[[NSString stringWithFormat: @"%i", maxValue * maxValue ] length];
    NSString *line = @"";
    
    
    for (int i = 1; i <= maxValue; i++) {
        line = [self appendString: line with:[self printHorizontalLineFor: maxValue]] ;
        for( int j= 1; j<= maxValue; j++)
        {
            int multiplication = i * j;
            int numberOfDigits = (int)[[NSString stringWithFormat:@"%i", multiplication] length];
            line = [line stringByAppendingFormat: @"| %i", multiplication ];
            for (int k = 1; k<= numberMaxOfDigits + 1 - numberOfDigits; k++) {
                line = [NSString stringWithFormat: @"%@%@", line, @" " ];
            }
        }
        line = [line stringByAppendingFormat: @"|\n"];
        
    }
    line = [line stringByAppendingString: [self printHorizontalLineFor:maxValue]];
    return line;
};

+ (NSString *) printHorizontalLineFor: (int) numberOfLine{
    
    int squareNumber = numberOfLine * numberOfLine;
    int addDash = log10f(squareNumber);
    NSString *line = @"";
    for (int i = 1 ; i <= numberOfLine; i++) {
        
        line = [NSString stringWithFormat: @"%@%@", line, @"+" ];
        for (int j = 1; j<= addDash + 3; j++) {
            line = [NSString stringWithFormat: @"%@%@", line, @"-" ];
        }
    }
    line = [NSString stringWithFormat: @"%@%@", line, @"+\n" ];
    return line;
}

+ (NSString* ) appendString: (NSString* ) string with: (NSString*) append
{
    return [NSString stringWithFormat: @"%@%@", string, append ];
}


@end
