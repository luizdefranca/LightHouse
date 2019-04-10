//
//  main.m
//  SquareCode
//
//  Created by Luiz on 4/5/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

NSString* encryptMessage (NSString *message){
    message = [message stringByReplacingOccurrencesOfString:@" " withString:@""];
    int lenght = (int)[message length];
    int row = (int) floor(sqrt(lenght));
    int column = (int)ceil(sqrt(lenght));
    int multiplication = row * column;
    
    while(multiplication < lenght){
        if(row < column){
            ++row;
        }else {
            ++column;
        }
        multiplication = row * column;
    }
    
    NSMutableString *encryptedMessage = [NSMutableString string];
    
    int count = 0;
    for (int i = 0; i < column; i=i+1) {
        for (int j = 0; j < row; j=j+1) {
            if(count < lenght){
                int value = column * j + i;
                if(value > lenght-1){
                    break;
                }
                unichar character = [message characterAtIndex:value];
                [ encryptedMessage appendFormat:@"%c", character ];
                count++;
            }
        }
        if (i < column - 1){                //just to make sure there is no garbage
            [ encryptedMessage appendFormat:@"%@", @" " ];
        }
    }
    
    return encryptedMessage;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"%@", encryptMessage(@"If man was meant to stay on the ground god would have given us roots"));
        //output: imtgdvs fearwer mayoogo anouuio ntnnlvt wttddes aohghn sseoau
        NSLog(@"%@", encryptMessage(@"haveaniceday"));
        //output: hae and via ecy
        NSLog(@"%@", encryptMessage(@"feedthedog"));
        //output: fto ehg ee dd
        NSLog(@"%@", encryptMessage(@"chillout"));
        //output: clu hlt io
    }
    return 0;
}

