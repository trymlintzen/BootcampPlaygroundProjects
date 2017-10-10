//
//  Women.swift
//  PuttingItAllTogetherMonsters
//
//  Created by Trym Lintzen on 06-10-17.
//  Copyright © 2017 Trym Lintzen. All rights reserved.
//

import Foundation

class Woman: Human {
    
    override func talk(word: String) {
        super.talk(word: "The woman \(word)")
    }
}
