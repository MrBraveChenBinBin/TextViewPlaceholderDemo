//
//  ViewController.m
//  TextViewPlaceholderSetting
//
//  Created by 彬彬 on 16/9/21.
//  Copyright © 2016年 陈彬彬. All rights reserved.
//

#import "ViewController.h"
#import "CBBTextView.h"
@interface ViewController ()<UITextViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CBBTextView * textView =[[CBBTextView alloc] initWithFrame:CGRectMake(10, 100, [UIScreen mainScreen].bounds.size.width - 20, 180)];
    textView.backgroundColor = [UIColor whiteColor];
    textView.placeholderColor = [UIColor lightGrayColor];
    textView.placeholder = @"您的意见是我们前进的最大动力，谢谢！";
    textView.font = [UIFont systemFontOfSize:17];
    textView.delegate = self;
    textView.layer.borderWidth =1;
    textView.layer.borderColor =[UIColor redColor].CGColor;
    [textView.layer setCornerRadius:10.0f];
    [self.view addSubview:textView];
    
}

- (void)textViewDidChange:(CBBTextView *)textView

{
    
    if([textView.placeholder length] == 0)
    {
        return;
    }
    if([textView.placeholder length]  == 0)
    {
        [textView.placeHolderLabel setAlpha:1];
    }
    else
    {
        [textView.placeHolderLabel  setAlpha:0];
    }
    
    if ([textView.text isEqualToString:@""]) {
        [textView.placeHolderLabel setAlpha:1];
    }
}

@end
