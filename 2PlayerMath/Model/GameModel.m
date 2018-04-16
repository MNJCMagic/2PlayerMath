//
//  GameModel.m
//  2PlayerMath
//
//  Created by Mike Cameron on 2018-04-16.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import "GameModel.h"


@implementation GameModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        Player *player1 = [[Player alloc] initWithName:@"Player One"];
        Player *player2 = [[Player alloc] initWithName:@"Player Two"];
        _players = @[player1, player2];
        _currentPlayer = self.players[0];
        _counter = 0;
    }
    return self;
}

-(NSString*)generateQuestion {
    int x;
    int y;
    self.currentPlayer.answerString = @"";
    x = arc4random_uniform(121);
    y = arc4random_uniform(121);
    self.answer = x + y;
    return [NSString stringWithFormat:@"%d + %d = ?", x, y];
}

-(Player*)currentPlayer {
    //self.currentPlayer
    NSInteger mod = self.counter % [self.players count];

    return self.players[mod];
}

-(void)checkAnswer {
    NSLog(@"%ld  %ld", (long)self.answer, (long)self.currentPlayer.answer);
    if (self.answer != self.currentPlayer.answer) {
        [self.currentPlayer loseALife];
    };
    self.counter++;
}

@end
