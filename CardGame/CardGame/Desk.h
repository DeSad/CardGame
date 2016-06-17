//
//  Desk.h
//  CardGame
//
//  Created by Stanislav Kozhemyako on 6/17/16.
//  Copyright © 2016 Stanislav Kozhemyako. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Desk : NSObject

-(void)addCard:(Card *)card atTop:(BOOL)atTop;
-(void)addCard:(Card *)card;

-(Card *)drawRandomCard;

@end
