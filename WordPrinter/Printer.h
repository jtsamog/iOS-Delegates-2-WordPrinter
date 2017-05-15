//
//  Printer.h
//  WordPrinter
//
//  Created by Endeavour2 on 5/9/17.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//


#import <Foundation/Foundation.h>
@class Printer;

@protocol PrinterDelegate <NSObject>

-(int)printer:(Printer *)printer numberOfTimesToPrint:(NSString *)word;
-(BOOL)willIstar;

@end


@interface Printer : NSObject

@property (nonatomic, weak) id<PrinterDelegate> delegate;

-(void)printWord:(NSString *)word;

-(void)printWordWithStar:(NSString *)word willIPrint:(BOOL)stars;


@end
