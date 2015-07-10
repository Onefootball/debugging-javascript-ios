//
//  Copyright (c) 2015 Onefootball GmbH. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()  <UIWebViewDelegate, UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURL *url = [[NSURL alloc] initWithString:<#@"insert your url"#>];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    self.textField.delegate = self;
    
    
    [self.webView loadRequest:request];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    NSURL *url = [[NSURL alloc] initWithString:textField.text];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    
    [self.webView loadRequest:request];
    
    return YES;
}

@end
