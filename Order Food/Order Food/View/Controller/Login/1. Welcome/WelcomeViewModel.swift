//
//  WelcomeViewModel.swift
//  Order Food
//
//  Created by MBA0023 on 7/28/19.
//  Copyright © 2019 MBA0023. All rights reserved.
//

import Foundation
import FirebaseDatabase

final class WelcomeViewModel {

    var ref: DatabaseReference?

    init() {
        ref = Database.database().reference(withPath: "User")
    }

    func loginWithPhoneAndPassword(phone: String, password: String, completion: @escaping Completion) {
        ref?.observe(.value, with: { snapshot in
            guard let passwordLogin = snapshot.childSnapshot(forPath: "\(phone)/Password").value as? String else { return }
            if passwordLogin.elementsEqual(password) {
                completion(.success)
            } else {
                completion(.failure)
            }
        })
    }
}
