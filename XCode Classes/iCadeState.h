/*
 Copyright (C) 2011 by Rafael Saraceni
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.
 */

typedef enum iCadeState {
    
    iCadeJoystickUpPress        = 0x077,
    iCadeJoystickUpRelease      = 0x065,
    iCadeJoystickLeftPress      = 0x061,
    iCadeJoystickLeftRelease    = 0x071,
    iCadeJoystickRightPress     = 0x064,
    iCadeJoystickRightRelease   = 0x063,
    iCadeJoystickDownPress      = 0x078,
    iCadeJoystickDownRelease    = 0x07A,
    iCadeJoystickAPress         = 0x075,
    iCadeJoystickARelease       = 0x066,
    iCadeJoystickBPress         = 0x068,
    iCadeJoystickBRelease       = 0x072,
    iCadeJoystickCPress         = 0x079,
    iCadeJoystickCRelease       = 0x074,
    iCadeJoystickDPress         = 0x06A,
    iCadeJoystickDRelease       = 0x06E
    
    
} iCadeState;
