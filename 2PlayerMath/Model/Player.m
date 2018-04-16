//
//  Player.m
//  2PlayerMath
//
//  Created by Mike Cameron on 2018-04-16.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if (self) {
        _lives = 3;
        _name = name;
        _answerString = [NSString new];
        _answerString = @"";
    }
    return self;
}

-(void)loseALife {
    self.lives--;
    if (self.lives == 0) {
        
    }
}

-(void)buildAnswer:(NSInteger)ansInt {
    NSString* tempString = [@(ansInt) stringValue];
    NSLog(@"%@", tempString);
    self.answerString = [self.answerString stringByAppendingString:tempString];
    NSLog(@"%@", self.answerString);
}

-(NSInteger)answer {
    return [self.answerString integerValue];
    
}
@end
