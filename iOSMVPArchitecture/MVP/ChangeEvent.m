//
//  ChangeEvent.m
//  MVPArchitecture
//
//  Created by Eduardo Vianna on 23/04/15.
//  Copyright (c) 2015 rocketscience. All rights reserved.
//

#import "ChangeEvent.h"

@implementation ChangeEvent

-(id)initWithChanges:(NSMutableDictionary*)changeObject{
    changes = changeObject;
    return self;
}

-(id)get:(NSObject*)key{
    return [changes objectForKey:key];
}

@end
