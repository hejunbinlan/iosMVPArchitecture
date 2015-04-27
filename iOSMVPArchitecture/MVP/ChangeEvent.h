//
//  ChangeEvent.h
//  MVPArchitecture
//
//  Created by Eduardo Vianna on 23/04/15.
//  Copyright (c) 2015 rocketscience. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ChangeEvent : NSObject{

    NSMutableDictionary* changes;
}

-(id) initWithChanges:(NSMutableDictionary*)changes;
-(id)get:(NSObject*)key;

@end
