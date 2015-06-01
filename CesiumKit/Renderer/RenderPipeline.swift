//
//  RenderPipeline.swift
//  CesiumKit
//
//  Created by Ryan Walklin on 31/05/2015.
//  Copyright (c) 2015 Test Toast. All rights reserved.
//

import Metal

class RenderPipeline {
    
    let state: MTLRenderPipelineState
    
    init (device: MTLDevice, descriptor: MTLRenderPipelineDescriptor) {
        var error: NSError?
        var metalPipeline = device.newRenderPipelineStateWithDescriptor(descriptor, error: &error)
        assert(error == nil, "Metal Error: \(error!.description)")
        self.state = metalPipeline!
    }
}