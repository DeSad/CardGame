//
//  ViewController.m
//  CardGame
//
//  Created by Stanislav Kozhemyako on 6/17/16.
//  Copyright © 2016 Stanislav Kozhemyako. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardDesk.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipsCount;
@property (nonatomic, strong) Desk *desk;

@end

@implementation ViewController

-(void)setFlipsCount:(int)flipsCount{
    _flipsCount = flipsCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipsCount];
    NSLog(@"flipCount changed to %d", self.flipsCount);
}

-(Desk *)desk{
    if (!_desk)_desk = [self createDesk];
    return _desk;
}

-(Desk *)createDesk{
    return [[PlayingCardDesk alloc] init];
}

- (IBAction)touchCardButton:(UIButton *)sender {
    
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }else{
        Card *randomCard = [self.desk drawRandomCard];
        if (randomCard) {
            [sender setBackgroundImage:[UIImage imageNamed:@"cardfont"]
                              forState:UIControlStateNormal];
            [sender setTitle:randomCard.contents forState:UIControlStateNormal];
            self.flipsCount++;
        }
    }
}


@end
