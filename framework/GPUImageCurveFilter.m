//
//  ViewController.h
//  Camera
//
//  Created by Oleg Kapitomov on 1.03.12.
//  Copyright (c) 2012 Bnet Inc. All rights reserved.
//
#import "GPUImageCurveFilter.h"

NSString *const kGPUImageCurveFragmentShaderString = SHADER_STRING
(
 varying highp vec2 textureCoordinate;
 
 uniform sampler2D inputImageTexture;
 uniform sampler2D inputImageTexture2;
 
 void main()
 {
     highp vec4 base = texture2D(inputImageTexture, textureCoordinate);
//     highp vec4 texR = texture2D(inputImageTexture2,vec2(0.0,base.r));
//     highp vec4 texG = texture2D(inputImageTexture2,vec2(0.0,base.g));
//     highp vec4 texB = texture2D(inputImageTexture2,vec2(0.0,base.b));

     gl_FragColor = vec4(texture2D(inputImageTexture2,vec2(0.0,base.r)).r,texture2D(inputImageTexture2,vec2(0.0,base.g)).g,texture2D(inputImageTexture2,vec2(0.0,base.b)).b,1.0);
 }
 );

@implementation GPUImageCurveFilter

- (id)init;
{
    if (!(self = [super initWithFragmentShaderFromString:kGPUImageCurveFragmentShaderString]))
    {
		return nil;
    }
    
    return self;
}

@end

