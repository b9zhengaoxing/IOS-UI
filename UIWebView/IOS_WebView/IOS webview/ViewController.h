//
//  ViewController.h
//  IOS webview
//
//  Created by h92 on 14/12/15.
//  Copyright (c) 2014年 李腾飞. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;
- (IBAction)testLoadHTMLString:(id)sender;
- (IBAction)textLoadData:(id)sender;
- (IBAction)testLoadRequest:(id)sender;




@end

