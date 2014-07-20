//
//  LGFStateMinerQuenchThirst.m
//  WestWorld
//
//  Created by James DeLisle on 7/19/14.
//  Copyright (c) 2014 James DeLisle. All rights reserved.
//

#import "LGFStateMinerQuenchThirst.h"
#import "LGFEntityMiner.h"
#import "LGFStateMinerEnterMineAndDigNuggets.h"

@implementation LGFStateMinerQuenchThirst

- (void) enter:(LGFEntityMiner *)miner
{
    if (LGF_LT_SALOON != [miner currentLocation])
    {
        [miner setCurrentLocation:LGF_LT_SALOON];
        NSLog(@"Miner: Thirsty! Walking to the saloon");
    }
}

- (void) execute:(LGFEntityMiner *)miner
{
    if (YES == [miner isThirsty])
    {
        [miner buyAndDrinkWhiskey];
        NSLog(@"Miner: I wish I didn't like whiskey as much as I do");
        [miner changeState:[[LGFStateMinerEnterMineAndDigNuggets alloc] init]];
    }
    else
    {
        NSLog(@"Oops. Something went wrong");
    }
}

- (void) exit:(LGFEntityMiner *)miner
{
    NSLog(@"Miner: Leaving the saloon. Where did my pants make off to?");
}

@end
