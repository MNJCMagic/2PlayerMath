//
//  ViewController.m
//  2PlayerMath
//
//  Created by Mike Cameron on 2018-04-16.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import "ViewController.h"
#import "GameModel.h"
#import "Player.h"

@interface ViewController ()
@property (nonatomic, strong) GameModel *gameModel;
@property (weak, nonatomic) IBOutlet UILabel *QuestionLabel;
@property (weak, nonatomic) IBOutlet UILabel *PlayerOneLabel;
@property (weak, nonatomic) IBOutlet UILabel *PlayerTwoLabel;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _gameModel = [GameModel new];
    // Do any additional setup after loading the view, typically from a nib.
    [self updateView];
    
}

-(void)updateView {
    self.PlayerOneLabel.text = [NSString stringWithFormat:@"%ld", (long)self.gameModel.players[0].lives];
    self.PlayerTwoLabel.text = [NSString stringWithFormat:@"%ld", (long)self.gameModel.players[1].lives];
    self.QuestionLabel.text = [NSString stringWithFormat:@"%@: %@", self.gameModel.currentPlayer.name, [self.gameModel generateQuestion]];
}

- (IBAction)numberButtons:(UIButton *)sender {
    NSInteger x = sender.tag;
//    NSLog(@"%ld", x);
//    NSLog(@"%@", self.gameModel.currentPlayer.name);
    [self.gameModel.currentPlayer buildAnswer:x];
}

- (IBAction)enterButton {
    
    [self.gameModel checkAnswer];
    [self updateView];
    
}



@end


