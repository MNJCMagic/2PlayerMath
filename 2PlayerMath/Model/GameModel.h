//
//  GameModel.h
//  2PlayerMath
//
//  Created by Mike Cameron on 2018-04-16.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface GameModel : NSObject

@property (nonatomic, assign) NSInteger answer;
@property (nonatomic, strong) NSArray<Player*>* players;
@property (nonatomic, strong) Player* currentPlayer;
@property (nonatomic, assign) NSInteger counter;


-(void)checkAnswer;
-(NSString*)generateQuestion;


@end
