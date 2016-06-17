//
//  PlayingCard.m
//  CardGame
//
//  Created by Stanislav Kozhemyako on 6/17/16.
//  Copyright © 2016 Stanislav Kozhemyako. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

-(NSString *)contents{
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

@synthesize suit = _suit;

-(void)setSuit:(NSString *)suit{
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

-(NSString *)suit{
    return _suit ? _suit : @"?";
}

+(NSArray *)rankStrings{
    return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6",
             @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

+(NSArray *)validSuits{
    return @[@"♥︎", @"♣︎", @"♦︎", @"♠︎"];
}

+(NSUInteger)maxRank{
    return [[self rankStrings] count];
}

@end
