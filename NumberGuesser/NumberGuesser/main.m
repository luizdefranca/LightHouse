//
//  main.m
//  NumberGuesser
//
//  Created by Luiz on 4/4/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

BOOL validNumber (char *string)
{
    NSString *stringNSString = [NSString stringWithCString: string encoding: NSUTF8StringEncoding];
    
  
    NSScanner *sc = [NSScanner scannerWithString: stringNSString];
    
    BOOL result = [ sc scanFloat:NULL];
    return result;
    
}

NSNumber* parseStringToNumber (char *string){
    NSString *stringNSString = [NSString stringWithCString: string encoding: NSUTF8StringEncoding];
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc]init];
    NSNumber *number = [formatter numberFromString:stringNSString];
    
    return number;
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char typedString[100];
        int randomNumber = arc4random_uniform(10);
        int tries=0;
        NSMutableArray *chosenNumbers = [NSMutableArray array];
        
        BOOL different = YES;
        
        while (different) {
            printf("Guess a number: \n>");
            scanf(" %s", typedString);
        
            if(validNumber(typedString) ){
                NSNumber *number = parseStringToNumber(typedString);
                int typedNumber = [number intValue];
                if(typedNumber == randomNumber){
                    ++tries;
                    break;
                }
                else if([chosenNumbers containsObject:number]){
                    printf("Already Guessed!\n");
                }
                else{
                    ++tries;
                    [chosenNumbers addObject:number];
                    char *message = typedNumber > randomNumber ? "Too High!\n":"Too Low!\n";
                    printf("%s", message);
                }
            } else {
                printf("Not a number! Try again!\n");
            }
        }
        printf("You got it! You took %i attempts!\n", tries);
    }
    return 0;
}
