//
//  FirebaseManager.swift
//  Order Food
//
//  Created by MBA0023 on 7/28/19.
//  Copyright © 2019 MBA0023. All rights reserved.
//

import Foundation

typealias Completion = (FirebaseResult) -> Void

enum FirebaseResult {
    case success
    case failure
}
