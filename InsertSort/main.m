//
//  main.m
//  InsertSort
//
//  Created by wzzyinqiang on 16/4/29.
//  Copyright © 2016年 wzzyinqiang. All rights reserved.
//

#import <Foundation/Foundation.h>

void log_time_interval() {
    NSLog(@"%f",[[NSDate date] timeIntervalSince1970]);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        
        NSInteger number = 5000;
        
        NSMutableArray * the_array = [NSMutableArray array];
        
        for (NSInteger i = 0; i < number; i++) {
            [the_array addObject:[NSNumber numberWithInteger:number - i]];
        }
        
        
        NSDate * start_date = [NSDate date];
        
        
        for (NSInteger j = 1; j < the_array.count; j++) {
            NSInteger key = [the_array[j] integerValue];
            
            NSInteger i = j - 1;
            
            while (i >= 0 && [the_array[i] integerValue] > key) {
                the_array[i + 1] = the_array[i];
                
                i = i - 1;
            }
            
            the_array[i + 1] = [NSNumber numberWithInteger:key];
        }
        
        
        NSDate * end_date = [NSDate date];
        
        NSLog(@"%f",[end_date timeIntervalSinceDate:start_date]);
        
//        for (NSNumber * number in the_array) {
//            NSLog(@"%li",(long)[number integerValue]);
//        }
    }
    return 0;
}
