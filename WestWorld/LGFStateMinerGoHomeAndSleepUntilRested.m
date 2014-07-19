//
//  LGFStateMinerGoHomeAndSleepUntilRested.m
//  WestWorld
//
//  Created by James DeLisle on 7/19/14.
//  Copyright (c) 2014 James DeLisle. All rights reserved.
//

#import "LGFStateMinerGoHomeAndSleepUntilRested.h"
#import "LGFEntityMiner.h"
#import "LGFStateMinerEnterMineAndDigNuggets.h"

@implementation LGFStateMinerGoHomeAndSleepUntilRested

- (void) enter:(LGFEntityMiner *)miner
{
    if (LGF_LT_SHACK != [miner currentLocation])
    {
        NSLog(@"Miner: Walking home");
        [miner setCurrentLocation:LGF_LT_SHACK];
    }
}

- (void) execute:(LGFEntityMiner *)miner
{
    if (NO == [miner isFatigued])
    {
        NSLog(@"Miner: Great nap. Time to find more gold");
        [miner changeState:[[LGFStateMinerEnterMineAndDigNuggets alloc] init]];
    }
    else
    {
        [miner decreaseFatigue];
        NSLog(@"Miner: ZZZZZZZZZ.....");
    }
}

- (void) exit:(LGFEntityMiner *)miner
{
    NSLog(@"Miner: Leaving the house");
}

@end
