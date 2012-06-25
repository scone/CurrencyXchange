//
//  CurrencyXchangeViewController.m
//  CurrencyXchange
//
//  Created by Sam Cleveland on 6/11/12.
//  Copyright (c) 2012 Zombisoft. All rights reserved.
//

#import "CurrencyXchangeViewController.h"

@interface CurrencyXchangeViewController (){
    float _USD_TO_EUR_RATE;
}

@end

@implementation CurrencyXchangeViewController
@synthesize usdAmt;
@synthesize eurAmt;
@synthesize convertBtn;
@synthesize convertDir;

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    _USD_TO_EUR_RATE = 0.792;

}

- (void)viewDidUnload
{
    [self setUsdAmt:nil];
    [self setEurAmt:nil];
    [self setConvertBtn:nil];
    [self setConvertDir:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
        
    [theTextField resignFirstResponder];
    
    return YES;
}

- (IBAction)handleClick:(id)sender{
    
    float convertedAmt;
    
    if(self.convertDir.selectedSegmentIndex == 0){
        NSString *usdString = self.usdAmt.text;
        convertedAmt = [self convertUSDtoEUR: [usdString floatValue]];
        [self.eurAmt setText: [NSString stringWithFormat:@"%f", convertedAmt]];
    }else{
        NSString *eurString = self.eurAmt.text;
        convertedAmt = [self convertEURtoUSD: [eurString floatValue]];
        [self.usdAmt setText: [NSString stringWithFormat:@"%f", convertedAmt]];
    }
    
    
}

- (float)convertEURtoUSD:(float)currency {
    float amt = currency / _USD_TO_EUR_RATE;
    
    return amt;
}

- (float)convertUSDtoEUR:(float)currency {
    float amt = currency * _USD_TO_EUR_RATE;
    
    return amt;
}

- (IBAction)dismissKeyboard:(id)sender {
    [self.view endEditing:YES];
    
}
@end
