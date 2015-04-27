//
//  AbstractPresenter.h
//  MVPArchitecture
//
//  Created by Eduardo Vianna on 23/04/15.
//  Copyright (c) 2015 rocketscience. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractEventer.h"

@interface AbstractPresenter : NSObject

@property(nonatomic,strong) AbstractEventer* model;
@property(nonatomic,strong) AbstractEventer* view;


- (id)initiWithModel:(AbstractEventer*)model andView:(AbstractEventer*)view;
- (void)bind;

@end
