//
//  CBBTextView.h
//  TextView -- 详解
//
//  Created by 彬彬 on 16/9/21.
//  Copyright © 2016年 陈彬彬. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CBBTextView : UITextView
@property(nonatomic) UILabel *placeHolderLabel;
@property(nonatomic) NSString *placeholder;
@property(nonatomic) UIColor *placeholderColor;
@end
