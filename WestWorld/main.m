//
//  main.m
//  WestWorld
//
//  Created by James DeLisle on 7/18/14.
//  Copyright (c) 2014 James DeLisle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LGFEntityMiner.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        // insert code here...
        NSLog(@"Hello, World!");

        LGFEntityMiner* miner = [[LGFEntityMiner alloc] init];

        for (int i = 0; i < 70; i++)
        {
            [miner update];
        }
        
        NSLog(@"All Done");

    }
    return 0;
}

