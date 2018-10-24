//
//  ViewController.h
//  calculator-ios
//
//  Created by jinsong5 on 2018/10/24.
//  Copyright © 2018年 jinsong5. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
-(IBAction)count;
@property(nonatomic,weak)IBOutlet UITextField * textfield1;
@property(nonatomic,weak)IBOutlet UITextField * textfield2;

@property(nonatomic,weak)IBOutlet UILabel *result;
@end

