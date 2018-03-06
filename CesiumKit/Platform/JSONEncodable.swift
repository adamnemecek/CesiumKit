//
//  JSONEncodable.swift
//  CesiumKit
//
//  Created by Ryan Walklin on 29/02/2016.
//  Copyright © 2016 Test Toast. All rights reserved.
//

protocol JSONEncodable {
    init(fromJSON json: JSON) throws
    func toJSON () -> JSON
}
