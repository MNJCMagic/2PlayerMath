//
//  Player.h
//  2PlayerMath
//
//  Created by Mike Cameron on 2018-04-16.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Player : NSObject

@property (nonatomic, assign) NSInteger lives;
@property (nonatomic, assign) NSInteger answer;
@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) NSString* answerString;
//-(void)generateQuestion;
-(void)loseALife;
-(instancetype)initWithName:(NSString*)name;
-(void)buildAnswer:(NSInteger)ansInt;



@end
