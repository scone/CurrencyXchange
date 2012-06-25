//
//  CurrencyXchangeViewController.h
//  CurrencyXchange
//
//  Created by Sam Cleveland on 6/11/12.
//  Copyright (c) 2012 Zombisoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CurrencyXchangeViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *usdAmt;
@property (weak, nonatomic) IBOutlet UITextField *eurAmt;
@property (weak, nonatomic) IBOutlet UIButton *convertBtn;
@property (weak, nonatomic) IBOutlet UISegmentedControl *convertDir;

- (IBAction)handleClick:(id)sender;
- (IBAction)dismissKeyboard:(id)sender;

@end
