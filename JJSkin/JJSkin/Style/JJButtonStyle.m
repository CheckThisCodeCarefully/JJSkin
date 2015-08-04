//
//  JJButtonStyle.m
//  JJSkin
//
//  Created by JJ on 5/29/15.
//  Copyright (c) 2015 JJ. All rights reserved.
//

#import "JJButtonStyle.h"

#import "JJFontStyle.h"
#import "JJSkinManager.h"
#import "JJLabelStyle.h"

@implementation JJButtonStyle

#pragma mark - JJSkinStyleDataSource

+ (id)objectFromStyle:(id)style
{
    JJButtonStyle *buttonStyle = (JJButtonStyle *)style;
    
    UIButtonType type = (UIButtonType)[JJSkinManager getIntegerFromString:buttonStyle.buttonType];
    
    UIButton *button = [UIButton buttonWithType:type];
    [style updateObject:button];
    return button;
}

- (void)updateObject:(id)object
{
    [super updateObject:object];
    
    UIButton *button = (UIButton *)object;
    
    // title label
    if (_labelStyle)
    {
        [_labelStyle updateObject:button.titleLabel];
    }
    
    // title
    if (_titleNormal)
    {
        [button setTitle:NSLocalizedString(_titleNormal, nil) forState:UIControlStateNormal];
    }
    if (_titleDisable)
    {
        [button setTitle:NSLocalizedString(_titleDisable, nil) forState:UIControlStateDisabled];
    }
    if (_titleHighlighted)
    {
        [button setTitle:NSLocalizedString(_titleHighlighted, nil) forState:UIControlStateHighlighted];
    }
    if (_titleSelected)
    {
        [button setTitle:NSLocalizedString(_titleSelected, nil) forState:UIControlStateSelected];
    }
    
    // title color
    if (_titleColorNormal)
    {
        [button setTitleColor:_titleColorNormal forState:UIControlStateNormal];
    }
    if (_titleColorDisable)
    {
        [button setTitleColor:_titleColorDisable forState:UIControlStateDisabled];
    }
    if (_titleColorHighlighted)
    {
        [button setTitleColor:_titleColorHighlighted forState:UIControlStateHighlighted];
    }
    if (_titleColorSelected)
    {
        [button setTitleColor:_titleColorSelected forState:UIControlStateSelected];
    }
    
    // image
    if (_imageNormal)
    {
        [button setImage:_imageNormal forState:UIControlStateNormal];
    }
    if (_imageDisable)
    {
        [button setImage:_imageDisable forState:UIControlStateDisabled];
    }
    if (_imageHighlighted)
    {
        [button setImage:_imageHighlighted forState:UIControlStateHighlighted];
    }
    if (_imageSelected)
    {
        [button setImage:_imageSelected forState:UIControlStateSelected];
    }
    
    // backgournd image
    if (_bgImageNormal)
    {
        [button setBackgroundImage:_bgImageNormal forState:UIControlStateNormal];
    }
    if (_bgImageDisable)
    {
        [button setBackgroundImage:_bgImageDisable forState:UIControlStateDisabled];
    }
    if (_bgImageHighlighted)
    {
        [button setBackgroundImage:_bgImageHighlighted forState:UIControlStateHighlighted];
    }
    if (_bgImageSelected)
    {
        [button setBackgroundImage:_bgImageSelected forState:UIControlStateSelected];
    }
    
    // edge inserts
    if (_contentInsets)
    {
        button.contentEdgeInsets = [JJSkinManager getEdgeInsetsFromString:_contentInsets];
    }
    if (_titleInsets)
    {
        button.titleEdgeInsets = [JJSkinManager getEdgeInsetsFromString:_titleInsets];
    }
    if (_imageInsets)
    {
        button.imageEdgeInsets = [JJSkinManager getEdgeInsetsFromString:_imageInsets];
    }
}

@end
