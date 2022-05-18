//
//  UserInformation.swift
//  projactB.SignUp
//
//  Created by 박호현 on 2022/05/17.
//

import Foundation

class UserInformation {
    static let shared: UserInformation = UserInformation()
    
    var name: String?
    var passward: String?
}
