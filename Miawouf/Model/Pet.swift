//
//  Pet.swift
//  Miawouf
//
//  Created by XenoX on 27/03/2019.
//  Copyright © 2019 XenoX. All rights reserved.
//

import Foundation

struct Pet {
    enum Gender {
        case male, female
    }

    var name: String?
    var hasMajority: Bool
    var phone: String?
    var race: String?
    var gender: Gender
}
