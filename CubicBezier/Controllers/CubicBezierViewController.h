//
//  ViewController.h
//  CubicBezier
//
//  Created by isaced on 15/2/28.
//
//

#import <Cocoa/Cocoa.h>
#import "BezierBoardView.h"
#import "RoundButton.h"
#import "BezierPreviewView.h"

@interface CubicBezierViewController : NSViewController

@property (strong) IBOutlet BezierBoardView *bezierBoardView;

@property (strong) IBOutlet NSTextField *bezierTextField;
@property (strong) IBOutlet BezierPreviewView *bezierPreview1;
@property (strong) IBOutlet BezierPreviewView *bezierPreview2;
@property (weak) IBOutlet NSSlider *speedSlider;

@property (weak) IBOutlet NSTextField *bezierBoardFooterTextField;
@property (weak) IBOutlet NSTextField *bezierBoardLeftTextField;
@property (weak) IBOutlet NSTextField *speedTextField;

@property (assign, readonly) CGPoint bezierDataPoint1;
@property (assign, readonly) CGPoint bezierDataPoint2;

@property (nonatomic, copy) void (^update)(CGPoint, CGPoint);
- (void)setup:(CGPoint)p1 p2:(CGPoint)p2;

- (IBAction)goAnimation:(id)sender;

@end

