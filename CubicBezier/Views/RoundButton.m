//
//  RoundButton.m
//  CubicBezier
//
//  Created by isaced on 15/2/28.
//
//

#import "RoundButton.h"

@implementation RoundButton

-(instancetype)init{
    if ([super init]) {
        [self initUI];
    }
    return self;
}

-(instancetype)initWithFrame:(NSRect)frameRect{
    if ([super initWithFrame:frameRect]) {
        [self initUI];
    }
    return self;
}

-(void)initUI{
    self.wantsLayer = YES;
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = RoundButtonDiameter / 2.0;
    self.backgroundColor = [NSColor whiteColor];
    
    [self.window invalidateCursorRectsForView:self];
}

-(void)drawRect:(NSRect)dirtyRect{
    [self.backgroundColor setFill];
    NSRectFill(dirtyRect);
}

-(void)setShowBorder:(BOOL)showBorder{
    _showBorder = showBorder;
    if (showBorder) {
        self.layer.borderWidth = 1.0;
        self.layer.borderColor = [NSColor lightGrayColor].CGColor;
    }else{
        self.layer.borderWidth = 0;
    }
}

-(void)resetCursorRects {
    [super resetCursorRects];
    [self addCursorRect:self.bounds cursor:[NSCursor pointingHandCursor]];
}

@end
