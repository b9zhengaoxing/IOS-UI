//
//  RichTextViewController.m
//  RichText
//
//  Created by tengfei li on 26/1/16.
//  Copyright © 2016年 LYD. All rights reserved.
//

#import "RichTextViewController.h"

@interface RichTextViewController ()

@end

@implementation RichTextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)setRichTextField:(UITextField *)richTextField
{
    //属性函数
    NSDictionary *attri = @{
                            NSForegroundColorAttributeName:[UIColor redColor],
                            NSBackgroundColorAttributeName:[UIColor yellowColor],
                            };
    NSString *string = @"测试";
    NSRange range = NSMakeRange(0, string.length);
    
    
    NSMutableAttributedString *attriString = [[NSMutableAttributedString alloc] initWithString:string];
    [attriString addAttributes:attri range:range];
    
    richTextField.attributedText = [[NSAttributedString alloc] initWithAttributedString:attriString];

}



@end