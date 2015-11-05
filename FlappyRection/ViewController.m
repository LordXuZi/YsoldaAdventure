//
//  ViewController.m
//  FlappyRection
//
//  Created by magnusxu on 9/20/15.
//  Copyright (c) 2015 LordXuzhiyu. All rights reserved.
//

#import "ViewController.h"
#import <SpriteKit/SpriteKit.h>
#import "MainScene.h"

@interface ViewController ()

@property (strong,nonatomic) MainScene *mainScene;

@end

@implementation ViewController

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    SKView *view = (SKView *)self.view;
    view.showsDrawCount = YES;
    view.showsFPS = YES;
    view.showsNodeCount = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.mainScene = [[MainScene alloc] initWithSize:CGSizeMake(self.view.frame.size.width, self.view.frame.size.height)];
    _mainScene.scaleMode = SKSceneScaleModeAspectFit;
    
    SKView *view = (SKView *)self.view;
    [view presentScene:_mainScene];
}

@end
