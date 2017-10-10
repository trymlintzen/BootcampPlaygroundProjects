//
//  Monster.swift
//  PuttingItAllTogetherMonsters
//
//  Created by Trym Lintzen on 06-10-17.
//  Copyright © 2017 Trym Lintzen. All rights reserved.
//


enum teeth {
    case kies
    case voortand
    case hoektand
}

class Monster {
    var Age : Int
    var Name : String
    var MonsterTeeth : teeth
    
    var allCrunchedBones: [Bone] = []
    init(Age: Int, Name: String, MonsterTeeth: teeth) {
        self.Age = Age
        self.Name = Name
        self.MonsterTeeth = MonsterTeeth
        }
 
    func eatHuman(human: Human) -> [Bone] {
        if human is Boy {
            print("It's a boy")
        } else {
            print ("NOT a boy")
        }
        crunchAllBones(bones: human.bones)
        return allCrunchedBones
    }

    
    func eatManyHumans(humans: [Human]) -> [Bone] {
        for human in humans {
            crunchAllBones(bones: human.bones)
        }
        return allCrunchedBones
    }
    
    func crunchAllBones(bones: [Bone]) {
        for currentBone in bones {
            crunchBone(bone: currentBone)
        }
    }
    
    func crunchBone(bone: Bone) {
        bone.crunched = true
        allCrunchedBones.append(bone)
        switch bone.type {
        case .boyBone:
            print("eating boy bone")
        case .manBone:
            print("eating man bone")
        case .womanBone:
            print("eating women bone")
        }
    }
    
}
