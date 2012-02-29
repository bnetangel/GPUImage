//
//  ViewController.h
//  Camera
//
//  For use this filter, u must create gradient texture with color curves, like so:
//
// 1. Create a new 1x256-pixel RGB image in Photoshop.
// 2. Set the foreground and background colors to white and black, respectively.
// 3. Using the Gradient tool, apply a gradient ramp from the leftmost pixel to the rightmost pixel in the image, ranging from black on the left to white on the right. (Save this gradient as a reference: you may need it later.)
// 4. Now apply your saved ".acv" Curves file to the gradient file. If you have applied different adjustments to each color channel, the previously gray ramp will now show color banding.
// 5. Save the texture
//
//  Created by Oleg Kapitomov on 1.03.12.
//  Copyright (c) 2012 Bnet Inc. All rights reserved.
//

#import "GPUImageFilter.h"

@interface GPUImageCurveFilter : GPUImageFilter

@end
