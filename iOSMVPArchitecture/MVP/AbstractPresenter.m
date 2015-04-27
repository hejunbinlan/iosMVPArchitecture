//
//  AbstractPresenter.m
//  MVPArchitecture
//
//  Created by Eduardo Vianna on 23/04/15.
//  Copyright (c) 2015 rocketscience. All rights reserved.
//

#import "AbstractPresenter.h"

@implementation AbstractPresenter

- (id)initiWithModel:(AbstractEventer*)mModel andView:(AbstractEventer*)mView{
    self.model = mModel;
    self.view = mView;
    
    return self;
}

-(void)bind{
    
}

@end
