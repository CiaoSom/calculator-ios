//
//  ViewController.m
//  calculator-ios
//
//  Created by jinsong5 on 2018/10/24.
//  Copyright © 2018年 jinsong5. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)count{
    NSString *text1 = self.textfield1.text;
    NSString *text2 = self.textfield2.text;
    int num1 = [text1 intValue];
    int num2 = [text2 intValue];
    int diff = 0;
    if(num1>num2||num2==num1){
        diff = num1-num2;
        self.result.text = [NSString stringWithFormat:@"%d",diff];
    }else{
        //小于的话去弹框，提示错误
        UIAlertController *alertVc = [UIAlertController alertControllerWithTitle:@"警告" message:@"骚年，你有点皮啊" preferredStyle:UIAlertControllerStyleAlert];
        
        [alertVc addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil]];
        [self presentViewController:alertVc animated:YES completion:nil];
    }
    
    
    
    [self.view endEditing:YES];
    
}
@end
