//
//  main.m
//  Strings
//
//  Created by Luiz on 3/19/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        enum StringManipulator{
            uppercase,
            lowercase,
            stringByAppend,
            stringByReplacing
        };
        NSString * name = @"Luiz";
        
        NSLog(@"Hello, my name is %@", name);
        
        NSUInteger nameLength = [name length];
        
        NSLog(@"My name has %lu characters", (unsigned long)nameLength);
        
        enum StringManipulator manipulator = uppercase;
        switch (manipulator) {
            case uppercase:
                name = [name uppercaseString];
                NSLog(@"My uppercase name is %@", name);
                break;
             
            case lowercase:
                name = [name lowercaseString];
                NSLog(@"My lowercase name is %@", name);
                break;
                
            case stringByAppend:
                name = [name stringByAppendingString: @" Ramos"];
                NSLog(@"My full name is %@", name);
                break;

            default:
                name = [name stringByReplacingOccurrencesOfString: @"Luiz" withString: @"Luca"];
                NSLog(@"My nickname is %@", name);
                break;
        }
        
        NSString *madLib = @"Yesterday, _PERSON_ and I when to the park. On our way to the _ADJECTIVE_1 park, we saw a _ADJECTIVE_2 _NOUN_ on a bike. We also saw big _ADJECTIVE_2 balloons tied to the _NOUN_. Once we got to the _ADJECTIVE_1 park, the sky turned _ADJECTIVE_2. It started to _VERB_. _PERSON_ and I _VERB_ all the way home.";
        
        madLib = [madLib stringByReplacingOccurrencesOfString:@"_PERSON_" withString:@"Sally"];
        madLib = [madLib stringByReplacingOccurrencesOfString:@"_ADJECTIVE_1" withString:@"nice"];
        madLib = [madLib stringByReplacingOccurrencesOfString:@"_ADJECTIVE_2" withString:@"funny"];
        madLib = [madLib stringByReplacingOccurrencesOfString:@"_NOUN_" withString:@"postman"];
        madLib = [madLib stringByReplacingOccurrencesOfString:@"_VERB_" withString:@"smile"];
        
        NSLog(@"%@", madLib);
    }
    return 0;
}
