//
//  Bone.swift
//  PuttingItAllTogetherMonsters
//
//  Created by Trym Lintzen on 06-10-17.
//  Copyright © 2017 Trym Lintzen. All rights reserved.
//

import Foundation

enum boneType {
    case boyBone
    case manBone
    case womanBone
}

class Bone {
    var type: boneType
    var crunched: Bool
    
    init(type: boneType, crunched: Bool) {
        self.type = type
        self.crunched = crunched
    }
}

