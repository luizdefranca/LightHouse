//
//  CaseMaker.m
//  CaseMakerII
//
//  Created by Luiz on 4/2/19.
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

- (NSString *)makeCase:(NSArray *)caseStyles
{
    NSString *savedString = [_string copy];
    
    //Testing for upper, lower
    if( [caseStyles containsObject: @"upper"]){
        savedString = [self parseUpper: savedString];
    }else if( [caseStyles containsObject: @"lower"]){
        savedString = [self parseLower: savedString];
    }
    
    //Testing for vowel, consonant
    if( [caseStyles containsObject: @"vowel"]){
        savedString = [self parseUpperVowel: savedString];
    } else if ([caseStyles containsObject: @"consonant"]){
        savedString = [self parseUpperConsonant: savedString];
    }
    
    //Testing for camel, pascal, snake, kebab, title
    if( [caseStyles containsObject: @"camel"]){
        savedString = [self parseCamel: savedString];
    } else if ([caseStyles containsObject: @"pascal"]){
        savedString = [self parsePascal: savedString];
    }else if ([caseStyles containsObject: @"snake"]){
        savedString = [self parseSnake: savedString];
    } else if ([caseStyles containsObject: @"kebab"]){
        savedString = [self parseKebab: savedString];
    } else if ([caseStyles containsObject: @"title"]){
        savedString = [self parseTitle: savedString];
    }
    
    return savedString;
};

- (NSString *) parseUpper: (NSString*) string
{
    return [string uppercaseString];
}

- (NSString*) parseLower: (NSString*) string
{
    return [string lowercaseString];
}

- (NSString*) parseTitle: (NSString*) string
{
    return [string capitalizedString];
}

- (NSString*) parseKebab: (NSString*) string
{
    return [string stringByReplacingOccurrencesOfString:@" " withString:@"-"];
}

- (NSString*) parseSnake: (NSString*) string
{
    return [string stringByReplacingOccurrencesOfString:@" " withString:@"_"];
}

-(NSString*) parsePascal: (NSString*) string
{
     NSString *myString = [string capitalizedString];
    return [myString stringByReplacingOccurrencesOfString:@" " withString:@""];
}

-(NSString*) parseCamel:(NSString*) string
{
    NSRange range = [string rangeOfString:@" "];
    range.length = range.location;
    range.location = 0;
    NSString *myString = [string capitalizedString];
    NSString *firstWordlowerCase = [[string substringWithRange:range] lowercaseString];
    myString = [myString stringByReplacingCharactersInRange:range withString:firstWordlowerCase];
    myString = [myString stringByReplacingOccurrencesOfString:@" " withString:@""];
    return [myString stringByReplacingOccurrencesOfString:@" " withString:@""];
}

-(NSString *) parseUpperVowel: (NSString*) string
{
    NSArray *vowels = @[@"a", @"e", @"i", @"o", @"u"];
    
    NSString *myString = string;
    for (NSString *vowel in vowels) {
        myString = [myString stringByReplacingOccurrencesOfString:vowel withString:  [vowel uppercaseString]];
    }
    return myString;
}

-(NSString *) parseUpperConsonant: (NSString*) string
{
    NSArray *consonants = @[@"b",@"c",@"d",@"e",@"f",@"g",@"h",@"j",@"k",@"l",@"m",@"n",@"p",@"q",@"r",@"s",@"t",@"v",@"w",@"x",@"y",@"z"];
    NSString *myString = string;
    for (NSString *consonant in consonants) {
        myString = [myString stringByReplacingOccurrencesOfString:consonant withString: [consonant uppercaseString]];
    }
    return myString;
}

@end
