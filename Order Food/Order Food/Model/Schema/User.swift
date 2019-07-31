//
//  User.swift
//  Order Food
//
//  Created by MBA0023 on 7/27/19.
//  Copyright © 2019 MBA0023. All rights reserved.
//

import Foundation

final class User {

    var name = ""
    var phone = ""
    var password = ""

    init() { }

    init(name: String, phone: String, password: String) {
        self.name = name
        self.phone = phone
        self.password = password
    }
}
