//
//  CardMatchingGame.m
//  CardGame
//
//  Created by Stanislav Kozhemyako on 6/18/16.
//  Copyright © 2016 Stanislav Kozhemyako. All rights reserved.
//

#import "CardMatchingGame.h"

@interface CardMatchingGame ()

@property (nonatomic, readwrite) NSInteger score;
@property (nonatomic, strong) NSMutableArray *cards;
@end

@implementation CardMatchingGame

-(NSMutableArray *)cards{
    if (!_cards)_cards = [[NSMutableArray alloc] init];
    return _cards;
}



@end
