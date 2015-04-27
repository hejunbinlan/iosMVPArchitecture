//
//  AbstractEventer.m
//  MVPArchitecture
//
//  Created by Eduardo Vianna on 23/04/15.
//  Copyright (c) 2015 rocketscience. All rights reserved.
//

#import "AbstractEventer.h"


@implementation AbstractEventer

- (void) addListener:(handleBlock)block withEnum:(NSString*) listenerType
{
    if (!self.listeners) {
        self.listeners = [NSMutableDictionary new];
    }
    [self.listeners setValue:block forKey:listenerType];
}

- (void) addListenerWithValue:(handleBlockWithValue)block withEnum:(NSString*) listenerType
{
    if (!self.listeners) {
        self.listeners = [NSMutableDictionary new];
    }
    [self.listeners setValue:block forKey:listenerType];
}


- (void) isListenerMap {
    if (!self.listeners || [self.listeners count] == 0) {
        [NSException raise:@"The listeners map was not initialized! Make sure you call addListener() before trying to fire any of them." format:@"Listeners is %lu", (unsigned long)[self.listeners count]];
    }
}

- (void) clearListeners {
    [self.listeners removeAllObjects];
}

-(void) fireListener:(NSObject*)listenerType {
    [self isListenerMap];
    
    handleBlock listener = [self.listeners objectForKey:listenerType];
    if (listener) {
        listener();
    } else {
        [NSException raise:@"The listener with specified enum is not an IListener!" format:@"Listener not IListener"];
    }
}


-(void)fireListener:(NSObject*)listenerType WithValue:(NSObject*) value {
    [self isListenerMap];
    
    handleBlockWithValue listener = [self.listeners objectForKey:listenerType];
    if (listener) {
        NSMutableDictionary* changes = [ NSMutableDictionary new];
        [changes setValue:value forKey:listenerType];
        ChangeEvent* event = [[ChangeEvent alloc] initWithChanges:changes];
        listener([event get:listenerType]);
    } else {
        [NSException raise:@"The listener with specified enum is not an IChangeListener!" format:@"Listener not IChangeListener"];
    }
}


@end
