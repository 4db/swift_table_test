//
//  Student.swift
//  tabletest
//
//  Created by aldb on 7/24/17.
//  Copyright © 2017 aldb. All rights reserved.
//

import Foundation

class Student: NSObject, NSCoding {
    
    struct Keys {
        static let Name = "name";
        static let LastName = "lastName";
    }
    
    var s = Keys();
    
    private var _name = "";
    private var _lastName = "";
    
    override init() {}
    
    init(name:String, lastName:String) {
        self._name = name;
        self._lastName = lastName;
    }
    
    required init(coder decoder: NSCoder) {
        if let nameObj = decoder.decodeObject(forKey: Keys.Name) as? String {
            self._name = nameObj
        }
        
        if let lastNameObj = decoder.decodeObject(forKey: Keys.LastName) as? String {
            self._lastName = lastNameObj
        }
        
    }
    
    func encode(with coder: NSCoder) {
        coder.encode(_name, forKey: Keys.Name)
        coder.encode(_lastName, forKey: Keys.LastName)
    }
    
    var Name: String {
        get {
            return _name;
        }
        set {
            _name = newValue;
        }
    }
    
    var LastName: String {
        get {
            return _lastName;
        }
        set {
            _name = newValue;
        }
    }
}
