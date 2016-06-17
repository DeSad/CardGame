//
//  Card.m
//  CardGame
//
//  Created by Stanislav Kozhemyako on 6/17/16.
//  Copyright © 2016 Stanislav Kozhemyako. All rights reserved.
//

#import "Card.h"

@implementation Card

-(int)match:(NSArray *)otherCards{
    int score = 0;
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    return score;
}

@end
