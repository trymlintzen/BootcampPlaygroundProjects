//
//  main.swift
//  PuttingItAllTogetherMonsters
//
//  Created by Trym Lintzen on 06-10-17.
//  Copyright © 2017 Trym Lintzen. All rights reserved.
//

import Foundation


var boyBones: [Bone] = []
var manBones: [Bone] = []

for _ in 1...10 {
    let BoneAdd = Bone.init(type: .boyBone, crunched: false)
    boyBones.append(BoneAdd)
    
    let manBone = Bone.init(type: .manBone, crunched: false)
    manBones.append(manBone)
}

var theBoy = Boy.init(name: "Trym", bones: boyBones )
var theMan = Man.init(name: "Trym", bones: manBones )
theMan.talk(word: "screams")
var humansArray: [Human] = [theBoy, theMan]
var monster = Monster.init(Age: 22, Name: "Trym", MonsterTeeth: .hoektand)
//monster.eatManyHumans(humans: humansArray)


//var bone1 = Bone.init(type: .boyBone, crunched: false)
//var bone2 = Bone.init(type: .manBone, crunched: false)
//var bone3 = Bone.init(type: .womanBone, crunched: false)
//var bonesArray: [Bone] = [bone1, bone2, bone3]

var bonepod = Monster.init(Age: 22, Name: "Trym", MonsterTeeth: .kies)

var BonesReturned = bonepod.eatHuman(human: theBoy)
monster.eatManyHumans(humans: humansArray)
print(BonesReturned)

