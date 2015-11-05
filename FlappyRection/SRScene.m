//
//  SRScene.m
//  FlappyRection
//
//  Created by magnusxu on 9/20/15.
//  Copyright (c) 2015 LordXuzhiyu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SRScene.h"

@interface SRScene()

@property BOOL contentCreated;

@end

@implementation SRScene

-(void)didMoveToView:(SKView *)view
{
    if (_contentCreated) {
        return;
    }
    
    [self initalize];
    self.contentCreated = YES;
}

-(void)initalize
{
    
}

@end

