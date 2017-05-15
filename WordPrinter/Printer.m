//
//  Printer.m
//  WordPrinter
//
//  Created by Endeavour2 on 5/9/17.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Printer.h"

@implementation Printer

-(void)printWord:(NSString *)word{
    int j = [self.delegate printer:self numberOfTimesToPrint:word];
    for(int i = 0 ; i<j ; i++){
        NSLog(@"%@", word);
    }
}

-(void)printWordWithStar:(NSString *)word willIPrint:(BOOL)stars{
    int printTimes = [self.delegate printer:self numberOfTimesToPrint:word];
    for(int i = 0 ; i<printTimes ; i++){
        if([self.delegate willIstar]){
            NSLog(@"* %@ *", word);
        }else{
            NSLog(@"&@", word);
        }
    }
}

@end
