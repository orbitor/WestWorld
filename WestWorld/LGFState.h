//
//  LGFState.h
//  WestWorld
//
//  Created by James DeLisle on 7/19/14.
//  Copyright (c) 2014 James DeLisle. All rights reserved.
//

#import <Foundation/Foundation.h>

@class LGFEntityMiner;

@interface LGFState : NSObject

/*TODO: These are all pure virtual methods -- making this class
 * pure virtual in C++ terminology. Come back to this when it
 * makes sense how to do this in ObjC
 */
- (void) enter:(LGFEntityMiner*) miner;
- (void) execute:(LGFEntityMiner*) miner;
- (void) exit:(LGFEntityMiner*) miner;

@end
