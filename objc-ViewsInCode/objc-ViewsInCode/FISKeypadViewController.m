//
//  FISKeypadViewController.m
//  objc-ViewsInCode
//
//  Created by Bert Carr on 3/19/15.
//  Copyright (c) 2015 Bert Carr. All rights reserved.
//

#import "FISKeypadViewController.h"

@interface FISKeypadViewController ()

@property (strong, nonatomic) UIButton *imageButton0;
@property (strong, nonatomic) UIButton *imageButton1;
@property (strong, nonatomic) UIButton *imageButton2;
@property (strong, nonatomic) UIButton *imageButton3;
@property (strong, nonatomic) UIButton *imageButton4;
@property (strong, nonatomic) UIButton *imageButton5;
@property (strong, nonatomic) UIButton *imageButton6;
@property (strong, nonatomic) UIButton *imageButton7;
@property (strong, nonatomic) UIButton *imageButton8;
@property (strong, nonatomic) UIButton *imageButton9;
@property (strong, nonatomic) UIButton *imageButtonStar;
@property (strong, nonatomic) UIButton *imageButtonPound;
@property (strong, nonatomic) UIButton *imageButtonCall;

@end

@implementation FISKeypadViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.imageButton0 = [[UIButton alloc] init];
    [self.imageButton0 setImage:[UIImage imageNamed:@"button0.png"] forState:UIControlStateNormal];
    
    self.imageButton1 = [[UIButton alloc] init];
    [self.imageButton1 setImage:[UIImage imageNamed:@"button1.png"] forState:UIControlStateNormal];
    
    self.imageButton2 = [[UIButton alloc] init];
    [self.imageButton2 setImage:[UIImage imageNamed:@"button2.png"] forState:UIControlStateNormal];
    
    self.imageButton3 = [[UIButton alloc] init];
    [self.imageButton3 setImage:[UIImage imageNamed:@"button3.png"] forState:UIControlStateNormal];
    
    self.imageButton4 = [[UIButton alloc] init];
    [self.imageButton4 setImage:[UIImage imageNamed:@"button4.png"] forState:UIControlStateNormal];
    
    self.imageButton5 = [[UIButton alloc] init];
    [self.imageButton5 setImage:[UIImage imageNamed:@"button5.png"] forState:UIControlStateNormal];
    
    self.imageButton6 = [[UIButton alloc] init];
    [self.imageButton6 setImage:[UIImage imageNamed:@"button6.png"] forState:UIControlStateNormal];
    
    self.imageButton7 = [[UIButton alloc] init];
    [self.imageButton7 setImage:[UIImage imageNamed:@"button7.png"] forState:UIControlStateNormal];
    
    self.imageButton8 = [[UIButton alloc] init];
    [self.imageButton8 setImage:[UIImage imageNamed:@"button8.png"] forState:UIControlStateNormal];
    
    self.imageButton9 = [[UIButton alloc] init];
    [self.imageButton9 setImage:[UIImage imageNamed:@"button9.png"] forState:UIControlStateNormal];
    
    self.imageButtonStar = [[UIButton alloc] init];
    [self.imageButtonStar setImage:[UIImage imageNamed:@"buttonStar.png"] forState:UIControlStateNormal];
    
    self.imageButtonPound = [[UIButton alloc] init];
    [self.imageButtonPound setImage:[UIImage imageNamed:@"buttonPound.png"] forState:UIControlStateNormal];
    
    self.imageButtonCall = [[UIButton alloc] init];
    [self.imageButtonCall setImage:[UIImage imageNamed:@"buttonCall.png"] forState:UIControlStateNormal];
    
    [self.view addSubview:self.imageButton0];
    [self.view addSubview:self.imageButton1];
    [self.view addSubview:self.imageButton2];
    [self.view addSubview:self.imageButton3];
    [self.view addSubview:self.imageButton4];
    [self.view addSubview:self.imageButton5];
    [self.view addSubview:self.imageButton6];
    [self.view addSubview:self.imageButton7];
    [self.view addSubview:self.imageButton8];
    [self.view addSubview:self.imageButton9];
    [self.view addSubview:self.imageButtonCall];
    [self.view addSubview:self.imageButtonPound];
    [self.view addSubview:self.imageButtonStar];
    
    unsigned rgbValue = 0;
    NSScanner *scanner = [NSScanner scannerWithString:@"F5F5F5"];

    [scanner scanHexInt:&rgbValue];
    UIColor *backgroundColor = [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:1.0];

    
    [self.view setBackgroundColor:backgroundColor];
    
    [self removeConstraints];
    
    NSLayoutConstraint *twoButtonCenterX =
    [NSLayoutConstraint constraintWithItem:self.imageButton2
                                 attribute:NSLayoutAttributeCenterX
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeCenterX
                                multiplier:1.0
                                  constant:0];
    
    [self.view addConstraint:twoButtonCenterX];
    
    NSLayoutConstraint *fiveButtonCenterX =
    [NSLayoutConstraint constraintWithItem:self.imageButton5
                                 attribute:NSLayoutAttributeCenterX
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeCenterX
                                multiplier:1.0
                                  constant:0];
    
    [self.view addConstraint:fiveButtonCenterX];
    
    NSLayoutConstraint *eightButtonCenterX =
    [NSLayoutConstraint constraintWithItem:self.imageButton8
                                 attribute:NSLayoutAttributeCenterX
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeCenterX
                                multiplier:1.0
                                  constant:0];
    
    [self.view addConstraint:eightButtonCenterX];
    
    NSLayoutConstraint *zeroButtonCenterX =
    [NSLayoutConstraint constraintWithItem:self.imageButton0
                                 attribute:NSLayoutAttributeCenterX
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeCenterX
                                multiplier:1.0
                                  constant:0];
    
    [self.view addConstraint:zeroButtonCenterX];
    
    NSLayoutConstraint *callButtonCenterX =
    [NSLayoutConstraint constraintWithItem:self.imageButtonCall
                                 attribute:NSLayoutAttributeCenterX
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeCenterX
                                multiplier:1.0
                                  constant:0];
    
    [self.view addConstraint:callButtonCenterX];
    
    NSLayoutConstraint *oneButtonHorizontal =
    [NSLayoutConstraint constraintWithItem:self.imageButton1
                                 attribute:NSLayoutAttributeRight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButton2
                                 attribute:NSLayoutAttributeLeft
                                multiplier:1.0
                                  constant:-5];
    
    [self.view addConstraint:oneButtonHorizontal];
    
    NSLayoutConstraint *fourButtonHorizontal =
    [NSLayoutConstraint constraintWithItem:self.imageButton4
                                 attribute:NSLayoutAttributeRight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButton5
                                 attribute:NSLayoutAttributeLeft
                                multiplier:1.0
                                  constant:-5];
    
    [self.view addConstraint:fourButtonHorizontal];
    
    NSLayoutConstraint *sevenButtonHorizontal =
    [NSLayoutConstraint constraintWithItem:self.imageButton7
                                 attribute:NSLayoutAttributeRight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButton8
                                 attribute:NSLayoutAttributeLeft
                                multiplier:1.0
                                  constant:-5];
    
    [self.view addConstraint:sevenButtonHorizontal];
    
    NSLayoutConstraint *starButtonHorizontal =
    [NSLayoutConstraint constraintWithItem:self.imageButtonStar
                                 attribute:NSLayoutAttributeRight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButton0
                                 attribute:NSLayoutAttributeLeft
                                multiplier:1.0
                                  constant:-5];
    
    [self.view addConstraint:starButtonHorizontal];
    
    NSLayoutConstraint *threeButtonHorizontal =
    [NSLayoutConstraint constraintWithItem:self.imageButton3
                                 attribute:NSLayoutAttributeLeft
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButton2
                                 attribute:NSLayoutAttributeRight
                                multiplier:1.0
                                  constant:5];
    
    [self.view addConstraint:threeButtonHorizontal];
    
    NSLayoutConstraint *sixButtonHorizontal =
    [NSLayoutConstraint constraintWithItem:self.imageButton6
                                 attribute:NSLayoutAttributeLeft
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButton5
                                 attribute:NSLayoutAttributeRight
                                multiplier:1.0
                                  constant:5];
    
    [self.view addConstraint:sixButtonHorizontal];
    
    NSLayoutConstraint *nineButtonHorizontal =
    [NSLayoutConstraint constraintWithItem:self.imageButton9
                                 attribute:NSLayoutAttributeLeft
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButton8
                                 attribute:NSLayoutAttributeRight
                                multiplier:1.0
                                  constant:5];
    
    [self.view addConstraint:nineButtonHorizontal];
    
    NSLayoutConstraint *poundButtonHorizontal =
    [NSLayoutConstraint constraintWithItem:self.imageButtonPound
                                 attribute:NSLayoutAttributeLeft
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButton0
                                 attribute:NSLayoutAttributeRight
                                multiplier:1.0
                                  constant:5];
    
    [self.view addConstraint:poundButtonHorizontal];
    
    NSLayoutConstraint *callButtonVertical =
    [NSLayoutConstraint constraintWithItem:self.imageButtonCall
                                 attribute:NSLayoutAttributeBottom
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeBottom
                                multiplier:1.0
                                  constant:-50];
    
    [self.view addConstraint:callButtonVertical];
    
    NSLayoutConstraint *zeroButtonVertical =
    [NSLayoutConstraint constraintWithItem:self.imageButton0
                                 attribute:NSLayoutAttributeBottom
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButtonCall
                                 attribute:NSLayoutAttributeTop
                                multiplier:1.0
                                  constant:-5];
    
    [self.view addConstraint:zeroButtonVertical];
    
    NSLayoutConstraint *eightButtonVertical =
    [NSLayoutConstraint constraintWithItem:self.imageButton8
                                 attribute:NSLayoutAttributeBottom
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButton0
                                 attribute:NSLayoutAttributeTop
                                multiplier:1.0
                                  constant:-5];
    
    [self.view addConstraint:eightButtonVertical];
    
    NSLayoutConstraint *fiveButtonVertical =
    [NSLayoutConstraint constraintWithItem:self.imageButton5
                                 attribute:NSLayoutAttributeBottom
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButton8
                                 attribute:NSLayoutAttributeTop
                                multiplier:1.0
                                  constant:-5];
    
    [self.view addConstraint:fiveButtonVertical];
    
    NSLayoutConstraint *twoButtonVertical =
    [NSLayoutConstraint constraintWithItem:self.imageButton2
                                 attribute:NSLayoutAttributeBottom
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButton5
                                 attribute:NSLayoutAttributeTop
                                multiplier:1.0
                                  constant:-5];
    
    [self.view addConstraint:twoButtonVertical];
    
    NSLayoutConstraint *starButtonVertical =
    [NSLayoutConstraint constraintWithItem:self.imageButtonStar
                                 attribute:NSLayoutAttributeCenterY
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButton0
                                 attribute:NSLayoutAttributeCenterY
                                multiplier:1.0
                                  constant:0];
    
    [self.view addConstraint:starButtonVertical];
    
    NSLayoutConstraint *poundButtonVertical =
    [NSLayoutConstraint constraintWithItem:self.imageButtonPound
                                 attribute:NSLayoutAttributeCenterY
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButton0
                                 attribute:NSLayoutAttributeCenterY
                                multiplier:1.0
                                  constant:0];
    
    [self.view addConstraint:poundButtonVertical];
    
    NSLayoutConstraint *sevenButtonVertical =
    [NSLayoutConstraint constraintWithItem:self.imageButton7
                                 attribute:NSLayoutAttributeCenterY
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButton8
                                 attribute:NSLayoutAttributeCenterY
                                multiplier:1.0
                                  constant:0];
    
    [self.view addConstraint:sevenButtonVertical];
    
    NSLayoutConstraint *nineButtonVertical =
    [NSLayoutConstraint constraintWithItem:self.imageButton9
                                 attribute:NSLayoutAttributeCenterY
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButton8
                                 attribute:NSLayoutAttributeCenterY
                                multiplier:1.0
                                  constant:0];
    
    [self.view addConstraint:nineButtonVertical];
    
    NSLayoutConstraint *fourButtonVertical =
    [NSLayoutConstraint constraintWithItem:self.imageButton4
                                 attribute:NSLayoutAttributeCenterY
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButton5
                                 attribute:NSLayoutAttributeCenterY
                                multiplier:1.0
                                  constant:0];
    
    [self.view addConstraint:fourButtonVertical];
    
    NSLayoutConstraint *sixButtonVertical =
    [NSLayoutConstraint constraintWithItem:self.imageButton6
                                 attribute:NSLayoutAttributeCenterY
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButton5
                                 attribute:NSLayoutAttributeCenterY
                                multiplier:1.0
                                  constant:0];
    
    [self.view addConstraint:sixButtonVertical];
    
    NSLayoutConstraint *oneButtonVertical =
    [NSLayoutConstraint constraintWithItem:self.imageButton1
                                 attribute:NSLayoutAttributeCenterY
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButton2
                                 attribute:NSLayoutAttributeCenterY
                                multiplier:1.0
                                  constant:0];
    
    [self.view addConstraint:oneButtonVertical];
    
    NSLayoutConstraint *threeButtonVertical =
    [NSLayoutConstraint constraintWithItem:self.imageButton3
                                 attribute:NSLayoutAttributeCenterY
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButton2
                                 attribute:NSLayoutAttributeCenterY
                                multiplier:1.0
                                  constant:0];
    
    [self.view addConstraint:threeButtonVertical];
    
    NSLayoutConstraint *callButtonWidth =
    [NSLayoutConstraint constraintWithItem:self.imageButtonCall
                                 attribute:NSLayoutAttributeWidth
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeWidth
                                multiplier:0.25
                                  constant:0];
    
    [self.view addConstraint:callButtonWidth];
    
    NSLayoutConstraint *callButtonHeight =
    [NSLayoutConstraint constraintWithItem:self.imageButtonCall
                                 attribute:NSLayoutAttributeWidth
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButtonCall
                                 attribute:NSLayoutAttributeHeight
                                multiplier:1.0
                                  constant:0];
    
    [self.view addConstraint:callButtonHeight];
    
    NSLayoutConstraint *zeroButtonWidth =
    [NSLayoutConstraint constraintWithItem:self.imageButton0
                                 attribute:NSLayoutAttributeWidth
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButtonCall
                                 attribute:NSLayoutAttributeWidth
                                multiplier:1.0
                                  constant:0];
    
    [self.view addConstraint:zeroButtonWidth];
    
    NSLayoutConstraint *zeroButtonHeight =
    [NSLayoutConstraint constraintWithItem:self.imageButton0
                                 attribute:NSLayoutAttributeHeight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButtonCall
                                 attribute:NSLayoutAttributeHeight
                                multiplier:1.0
                                  constant:0];
    
    [self.view addConstraint:zeroButtonHeight];
    
    NSLayoutConstraint *eightButtonWidth =
    [NSLayoutConstraint constraintWithItem:self.imageButton8
                                 attribute:NSLayoutAttributeWidth
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButtonCall
                                 attribute:NSLayoutAttributeWidth
                                multiplier:1.0
                                  constant:0];
    
    [self.view addConstraint:eightButtonWidth];
    
    NSLayoutConstraint *eightButtonHeight =
    [NSLayoutConstraint constraintWithItem:self.imageButton8
                                 attribute:NSLayoutAttributeHeight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButtonCall
                                 attribute:NSLayoutAttributeHeight
                                multiplier:1.0
                                  constant:0];
    
    [self.view addConstraint:eightButtonHeight];
    
    NSLayoutConstraint *fiveButtonWidth =
    [NSLayoutConstraint constraintWithItem:self.imageButton5
                                 attribute:NSLayoutAttributeWidth
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButtonCall
                                 attribute:NSLayoutAttributeWidth
                                multiplier:1.0
                                  constant:0];
    
    [self.view addConstraint:fiveButtonWidth];
    
    NSLayoutConstraint *fiveButtonHeight =
    [NSLayoutConstraint constraintWithItem:self.imageButton5
                                 attribute:NSLayoutAttributeHeight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButtonCall
                                 attribute:NSLayoutAttributeHeight
                                multiplier:1.0
                                  constant:0];
    
    [self.view addConstraint:fiveButtonHeight];
    
    NSLayoutConstraint *twoButtonWidth =
    [NSLayoutConstraint constraintWithItem:self.imageButton2
                                 attribute:NSLayoutAttributeWidth
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButtonCall
                                 attribute:NSLayoutAttributeWidth
                                multiplier:1.0
                                  constant:0];
    
    [self.view addConstraint:twoButtonWidth];
    
    NSLayoutConstraint *twoButtonHeight =
    [NSLayoutConstraint constraintWithItem:self.imageButton2
                                 attribute:NSLayoutAttributeHeight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButtonCall
                                 attribute:NSLayoutAttributeHeight
                                multiplier:1.0
                                  constant:0];
    
    [self.view addConstraint:twoButtonHeight];
    
    NSLayoutConstraint *starButtonWidth =
    [NSLayoutConstraint constraintWithItem:self.imageButtonStar
                                 attribute:NSLayoutAttributeWidth
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButtonCall
                                 attribute:NSLayoutAttributeWidth
                                multiplier:1.0
                                  constant:0];
    
    [self.view addConstraint:starButtonWidth];
    
    NSLayoutConstraint *starButtonHeight =
    [NSLayoutConstraint constraintWithItem:self.imageButtonStar
                                 attribute:NSLayoutAttributeHeight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButtonCall
                                 attribute:NSLayoutAttributeHeight
                                multiplier:1.0
                                  constant:0];
    
    [self.view addConstraint:starButtonHeight];
    
    NSLayoutConstraint *sevenButtonWidth =
    [NSLayoutConstraint constraintWithItem:self.imageButton7
                                 attribute:NSLayoutAttributeWidth
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButtonCall
                                 attribute:NSLayoutAttributeWidth
                                multiplier:1.0
                                  constant:0];
    
    [self.view addConstraint:sevenButtonWidth];
    
    NSLayoutConstraint *sevenButtonHeight =
    [NSLayoutConstraint constraintWithItem:self.imageButton7
                                 attribute:NSLayoutAttributeHeight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButtonCall
                                 attribute:NSLayoutAttributeHeight
                                multiplier:1.0
                                  constant:0];
    
    [self.view addConstraint:sevenButtonHeight];
    
    NSLayoutConstraint *fourButtonWidth =
    [NSLayoutConstraint constraintWithItem:self.imageButton4
                                 attribute:NSLayoutAttributeWidth
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButtonCall
                                 attribute:NSLayoutAttributeWidth
                                multiplier:1.0
                                  constant:0];
    
    [self.view addConstraint:fourButtonWidth];
    
    NSLayoutConstraint *fourButtonHeight =
    [NSLayoutConstraint constraintWithItem:self.imageButton4
                                 attribute:NSLayoutAttributeHeight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButtonCall
                                 attribute:NSLayoutAttributeHeight
                                multiplier:1.0
                                  constant:0];
    
    [self.view addConstraint:fourButtonHeight];
    
    NSLayoutConstraint *oneButtonWidth =
    [NSLayoutConstraint constraintWithItem:self.imageButton1
                                 attribute:NSLayoutAttributeWidth
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButtonCall
                                 attribute:NSLayoutAttributeWidth
                                multiplier:1.0
                                  constant:0];
    
    [self.view addConstraint:oneButtonWidth];
    
    NSLayoutConstraint *oneButtonHeight =
    [NSLayoutConstraint constraintWithItem:self.imageButton1
                                 attribute:NSLayoutAttributeHeight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButtonCall
                                 attribute:NSLayoutAttributeHeight
                                multiplier:1.0
                                  constant:0];
    
    [self.view addConstraint:oneButtonHeight];
    
    NSLayoutConstraint *poundButtonWidth =
    [NSLayoutConstraint constraintWithItem:self.imageButtonPound
                                 attribute:NSLayoutAttributeWidth
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButtonCall
                                 attribute:NSLayoutAttributeWidth
                                multiplier:1.0
                                  constant:0];
    
    [self.view addConstraint:poundButtonWidth];
    
    NSLayoutConstraint *poundButtonHeight =
    [NSLayoutConstraint constraintWithItem:self.imageButtonPound
                                 attribute:NSLayoutAttributeHeight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButtonCall
                                 attribute:NSLayoutAttributeHeight
                                multiplier:1.0
                                  constant:0];
    
    [self.view addConstraint:poundButtonHeight];
    
    NSLayoutConstraint *nineButtonWidth =
    [NSLayoutConstraint constraintWithItem:self.imageButton9
                                 attribute:NSLayoutAttributeWidth
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButtonCall
                                 attribute:NSLayoutAttributeWidth
                                multiplier:1.0
                                  constant:0];
    
    [self.view addConstraint:nineButtonWidth];
    
    NSLayoutConstraint *nineButtonHeight =
    [NSLayoutConstraint constraintWithItem:self.imageButton9
                                 attribute:NSLayoutAttributeHeight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButtonCall
                                 attribute:NSLayoutAttributeHeight
                                multiplier:1.0
                                  constant:0];
    
    [self.view addConstraint:nineButtonHeight];
    
    NSLayoutConstraint *sixButtonWidth =
    [NSLayoutConstraint constraintWithItem:self.imageButton6
                                 attribute:NSLayoutAttributeWidth
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButtonCall
                                 attribute:NSLayoutAttributeWidth
                                multiplier:1.0
                                  constant:0];
    
    [self.view addConstraint:sixButtonWidth];
    
    NSLayoutConstraint *sixButtonHeight =
    [NSLayoutConstraint constraintWithItem:self.imageButton6
                                 attribute:NSLayoutAttributeHeight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButtonCall
                                 attribute:NSLayoutAttributeHeight
                                multiplier:1.0
                                  constant:0];
    
    [self.view addConstraint:sixButtonHeight];
    
    NSLayoutConstraint *threeButtonWidth =
    [NSLayoutConstraint constraintWithItem:self.imageButton3
                                 attribute:NSLayoutAttributeWidth
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButtonCall
                                 attribute:NSLayoutAttributeWidth
                                multiplier:1.0
                                  constant:0];
    
    [self.view addConstraint:threeButtonWidth];
    
    NSLayoutConstraint *threeButtonHeight =
    [NSLayoutConstraint constraintWithItem:self.imageButton3
                                 attribute:NSLayoutAttributeHeight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.imageButtonCall
                                 attribute:NSLayoutAttributeHeight
                                multiplier:1.0
                                  constant:0];
    
    [self.view addConstraint:threeButtonHeight];
    
}

-(void)removeConstraints
{
    [self.view removeConstraints:self.view.constraints];
    
    for (UIView *view in self.view.subviews)
    {
        [view removeConstraints:[view constraints]];
        [view setTranslatesAutoresizingMaskIntoConstraints:NO];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
