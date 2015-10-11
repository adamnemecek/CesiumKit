//
//  ComputeCommand.swift
//  CesiumKit
//
//  Created by Ryan Walklin on 10/10/2015.
//  Copyright © 2015 Test Toast. All rights reserved.
//

import Foundation

/**
* Represents a command to the renderer for GPU Compute (using old-school GPGPU).
*
* @private
*/
class ComputeCommand: Command {
    
    /**
    * The vertex array. If none is provided, a viewport quad will be used.
    *
    * @type {VertexArray}
    * @default undefined
    */
    let vertexArray: VertexArray? = nil
    
    /**
    * The fragment shader source. The default vertex shader is ViewportQuadVS.
    *
    * @type {ShaderSource}
    * @default undefined
    */
    let fragmentShaderSource: ShaderSource?
    
    /**
    * The shader program to apply.
    *
    * @type {ShaderProgram}
    * @default undefined
    */
    let shaderProgram: ShaderProgram? = nil
    
    /**
    * An object with functions whose names match the uniforms in the shader program
    * and return values to set those uniforms.
    *
    * @type {Object}
    * @default undefined
    */
    let uniformMap: UniformMap? = nil
    
    /**
    * Texture to use for offscreen rendering.
    *
    * @type {Texture}
    * @default undefined
    */
    let outputTexture: Texture? = nil
    
    /**
    * Function that is called immediately before the ComputeCommand is executed. Used to
    * update any renderer resources. Takes the ComputeCommand as its single argument.
    *
    * @type {Function}
    * @default undefined
    */
    let preExecute: ((ComputeCommand) -> ())? = nil
    
    /**
    * Function that is called after the ComputeCommand is executed. Takes the output
    * texture as its single argument.
    *
    * @type {Function}
    * @default undefined
    */
    let postExecute: ((Texture) -> ())? = nil
    
    /**
    * Whether the renderer resources will persist beyond this call. If not, they
    * will be destroyed after completion.
    *
    * @type {Boolean}
    * @default false
    */
    var persists: Bool = false
    
    /**
    * The pass when to render. Always compute pass.
    *
    * @type {Pass}
    * @default Pass.COMPUTE;
    */
    let pass: Pass = .Compute
    
    /**
    * The object who created this command.  This is useful for debugging command
    * execution; it allows us to see who created a command when we only have a
    * reference to the command, and can be used to selectively execute commands
    * with {@link Scene#debugCommandFilter}.
    *
    * @type {Object}
    * @default undefined
    *
    * @see Scene#debugCommandFilter
    */
    //this.owner = options.owner;
    
    
    /**
    * Executes the compute command.
    *
    * @param {Context} context The context that processes the compute command.
    */
    func execute (computeEngine: ComputeEngine) {
        computeEngine.execute(self)
    }
    
}