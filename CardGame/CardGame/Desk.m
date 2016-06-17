//
//  Desk.m
//  CardGame
//
//  Created by Stanislav Kozhemyako on 6/17/16.
//  Copyright © 2016 Stanislav Kozhemyako. All rights reserved.
//

#import "Desk.h"

@interface Desk ()

@property (nonatomic, strong) NSMutableArray *cards;

@end

@implementation Desk

-(NSArray *)cards{
    if (!_cards )_cards = [[NSMutableArray alloc] init];
    return _cards;
}

-(void)addCard:(Card *)card atTop:(BOOL)atTop{
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    }else{
        [self.cards addObject:card];
    }
}

-(void)addCard:(Card *)card{
    return [self addCard:card atTop:NO];
}

-(Card *)drawRandomCard{
    Card *randomCard = nil;
    if ([self.cards count]) {
        unsigned index = arc4random() % [self.cards count];
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    return randomCard;
}
@end
