//
//  LGFStateMinerEnterMineAndDigNuggets.m
//  WestWorld
//
//  Created by James DeLisle on 7/19/14.
//  Copyright (c) 2014 James DeLisle. All rights reserved.
//

#import "LGFStateMinerEnterMineAndDigNuggets.h"
#import "LGFEntityMiner.h"
#import "LGFStateMinerVisitBankAndDepositGold.h"
#import "LGFStateMinerQuenchThirst.h"

@implementation LGFStateMinerEnterMineAndDigNuggets

- (void) enter:(LGFEntityMiner*) miner
{
    if (LGF_LT_GOLDMINE != [miner currentLocation])
    {
        NSLog(@"Miner: Walking to the mine");
        [miner setCurrentLocation: LGF_LT_GOLDMINE];
    }
}

- (void) execute:(LGFEntityMiner*) miner
{
    [miner addToCarriedGold:1];
    [miner increaseFatigue];
    
    NSLog(@"Miner: Picking up a nugget");
    
    if (YES == [miner arePocketsFull])
    {
        [miner changeState:[[LGFStateMinerVisitBankAndDepositGold alloc] init]];
    }
    
    if (YES == [miner isThirsty])
    {
        [miner changeState:[[LGFStateMinerQuenchThirst alloc] init]];
    }
}

- (void) exit:(LGFEntityMiner*) miner
{
    NSLog(@"Miner: Leaving the gold mine with my pockets full of gold");
}

@end
