//
//  Credentials.swift
//  Etsy.swift
//
//  Created by Nicholas Spencer on 4/17/19.
//

import Foundation

enum Credentials {
    case api(key: String, secret: String)
    case user(username: String, password: String)
}
