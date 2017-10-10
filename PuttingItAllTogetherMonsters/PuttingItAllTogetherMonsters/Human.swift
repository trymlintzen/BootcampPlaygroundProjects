//
//  Human.swift
//  PuttingItAllTogetherMonsters
//
//  Created by Trym Lintzen on 06-10-17.
//  Copyright © 2017 Trym Lintzen. All rights reserved.
//

import Foundation


class Human {
    var name: String
    var bones: [Bone]
    
    init(name: String, bones: [Bone]) {
        self.name = name
        self.bones = bones
    }
    
    func talk(word: String)  {
        print(word)
    }
    
}


