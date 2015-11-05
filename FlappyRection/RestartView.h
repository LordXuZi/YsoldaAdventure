//
//  RestartView.h
//  FlappyRection
//
//  Created by magnusxu on 9/26/15.
//  Copyright © 2015 LordXuzhiyu. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@class RestartView;
@protocol RestartViewDelegate <NSObject>

-(void)restartView:(RestartView *)restartView didPressRestartButton:(SKSpriteNode *)
     restartButton;

@end

@interface RestartView : SKSpriteNode

@property (weak,nonatomic) id <RestartViewDelegate> delegate;

+(RestartView *)getInstanceWithSize:(CGSize)size;
-(void)dismiss;
-(void)showInScene:(SKScene *)scene;

@end