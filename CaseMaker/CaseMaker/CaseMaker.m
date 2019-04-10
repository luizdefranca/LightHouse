//
//  CaseMaker.m
//  CaseMaker
//
//  Created by Luiz on 4/1/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import "CaseMaker.h"

@implementation CaseMaker
- (instancetype)initWithString:(NSString *)string
{
    self = [super init];
    if(self){
        _string = string;
    }
    return self;
};

- (NSString *)process
{
    NSString *word = [[NSString alloc]init];
    
    //Spliting the string and storing into a array
    NSMutableArray *splitStringArray = [NSMutableArray arrayWithArray:[_string componentsSeparatedByString: @" "]];
    
    //Getting and Changing the first word to lowercase
    word = [splitStringArray objectAtIndex:0];
    word = [word lowercaseString];
    [splitStringArray replaceObjectAtIndex:0 withObject:word ];

    //Getting and Capitalizing the other words
    for (int i = 1; i< splitStringArray.count; i++) {
        word = [splitStringArray objectAtIndex:i];
        word = [word capitalizedString];
        [splitStringArray replaceObjectAtIndex:i withObject:word ];

    }
    

    return [splitStringArray componentsJoinedByString:@""];
};

@end
