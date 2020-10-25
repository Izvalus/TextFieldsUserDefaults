//
//  NameAndLastname.swift
//  TextFieldsUserDefaults
//
//  Created by Роман Мироненко on 25.10.2020.
//  Copyright © 2020 Роман Мироненко. All rights reserved.
//

import Foundation

class Storage {
    static let example = Storage()
    
    private let keyName = "Storage.keyName"
    private let keyLastname = "Storage.keyLastname"
    
    var name: String {
        set { UserDefaults.standard.set(newValue, forKey: keyName)}
        get { return UserDefaults.standard.string(forKey: keyName) ?? ""}
    }
    
    var lastName: String {
        set { UserDefaults.standard.set(newValue, forKey: keyLastname)}
        get { return UserDefaults.standard.string(forKey: keyLastname) ?? ""}
    }
}
