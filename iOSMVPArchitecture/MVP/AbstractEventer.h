//
//  AbstractEventer.h
//  MVPArchitecture
//
//  Created by Eduardo Vianna on 23/04/15.
//  Copyright (c) 2015 rocketscience. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ChangeEvent.h"

@interface AbstractEventer : UIViewController

@property(nonatomic,strong) NSMutableDictionary* listeners;


typedef void (^handleBlock)();
typedef void (^handleBlockWithValue)(id value);

- (void) addListener:(handleBlock)handle withEnum:(NSObject*) listenerType;
- (void) addListenerWithValue:(handleBlockWithValue)handle withEnum:(NSObject*) listenerType;
- (void) isListenerMap;
- (void) clearListeners;
- (void) fireListener:(NSObject*)listenerType;
- (void) fireListener:(NSObject*)listenerType WithValue:(NSObject*) value;

@end
