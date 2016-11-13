//
//  iCadeUnityLink.m
//  Unity-iPhone
//
//  Created by Matthew Klundt on 12/11/12.
//
//

#import "iCadeUnityLink.h"
#import "iCadeState.h"
#include "UnityInterface.h"

@implementation iCadeUnityLink

enum JoystickButtonNumbers
{
    BTN_UP_PRESSED = 0,
    BTN_UP_RELEASED = 1,
    BTN_LEFT_PRESSED = 2,
    BTN_LEFT_RELEASED = 3,
    BTN_RIGHT_PRESSED = 4,
    BTN_RIGHT_RELEASED = 5,
    BTN_DOWN_PRESSED = 6,
    BTN_DOWN_RELEASED = 7,
    
    BTN_A_PRESSED = 8,
    BTN_A_RELEASED = 9,
    BTN_B_PRESSED = 10,
    BTN_B_RELEASED = 11,
    BTN_C_PRESSED = 12,
    BTN_C_RELEASED = 13,
    BTN_D_PRESSED = 14,
    BTN_D_RELEASED = 15,
};

- (id) init {
    self = [super init];
    
    joystickNum = 0; // 0=any, or 1-4 for a specific player
    
    return self;
}


- (void) stateChanged:(iCadeState)state {
    //NSLog(@"State Changed!");
    
}

- (void) setJoystickButton:(int)buttonNum state:(bool)state {
    char buf[128];
    if (joystickNum > 0) {
        // send to specific joystick
        sprintf (buf, "joystick %d button %d", joystickNum, buttonNum);
        UnitySetKeyState (UnityStringToKey (buf), state);
    }
    
    // Mirror button input into virtual joystick 0
    sprintf (buf, "joystick button %d", buttonNum);
    UnitySetKeyState (UnityStringToKey (buf), state);
}

- (void) buttonDown:(iCadeState)button {
    switch (button) {
        case iCadeJoystickUpPress:
            NSLog(@"iCadeJoystickUpPress");
            [self setJoystickButton:BTN_UP_PRESSED state:true];
            break;
        case iCadeJoystickLeftPress:
            NSLog(@"iCadeJoystickLeftPress");
            [self setJoystickButton:BTN_LEFT_PRESSED state:true];
            break;
        case iCadeJoystickRightPress:
            NSLog(@"iCadeJoystickRightPress");
            [self setJoystickButton:BTN_RIGHT_PRESSED state:true];
            break;
        case iCadeJoystickDownPress:
            NSLog(@"iCadeJoystickDownPress");
            [self setJoystickButton:BTN_DOWN_PRESSED state:true];
            break;
        case iCadeJoystickAPress:
            NSLog(@"iCadeJoystickAPress");
            [self setJoystickButton:BTN_A_PRESSED state:true];
            break;
        case iCadeJoystickBPress:
            NSLog(@"iCadeJoystickBPress");
            [self setJoystickButton:BTN_B_PRESSED state:true];
            break;
        case iCadeJoystickCPress:
            NSLog(@"iCadeJoystickCPress");
            [self setJoystickButton:BTN_C_PRESSED state:true];
            break;
        case iCadeJoystickDPress:
            NSLog(@"iCadeJoystickDPress");
            [self setJoystickButton:BTN_D_PRESSED state:true];
            break;
        default:
            break;
    }
}

- (void) buttonUp:(iCadeState)button {
    switch (button) {
        case iCadeJoystickUpRelease:
            NSLog(@"iCadeJoystickUpRelease");
            [self setJoystickButton:BTN_UP_RELEASED state:true];
            break;
        case iCadeJoystickLeftRelease:
            NSLog(@"iCadeJoystickLeftRelease");
            [self setJoystickButton:BTN_LEFT_RELEASED state:true];
            break;
        case iCadeJoystickRightRelease:
            NSLog(@"iCadeJoystickRightRelease");
            [self setJoystickButton:BTN_RIGHT_RELEASED state:true];
            break;
        case iCadeJoystickDownRelease:
            NSLog(@"iCadeJoystickDownRelease");
            [self setJoystickButton:BTN_DOWN_RELEASED state:true];
            break;
        case iCadeJoystickARelease:
            NSLog(@"iCadeJoystickARelease");
            [self setJoystickButton:BTN_A_RELEASED state:true];
            break;
        case iCadeJoystickBRelease:
            NSLog(@"iCadeJoystickBRelease");
            [self setJoystickButton:BTN_B_RELEASED state:true];
            break;
        case iCadeJoystickCRelease:
            NSLog(@"iCadeJoystickCRelease");
            [self setJoystickButton:BTN_C_RELEASED state:true];
            break;
        case iCadeJoystickDRelease:
            NSLog(@"iCadeJoystickDRelease");
            [self setJoystickButton:BTN_D_RELEASED state:true];
            break;
        default:
            break;
    }
}

@end
