//
//  Model.swift
//  MVVMDemo
//
//  Created by Priyal on 21/11/24.
//

import Foundation

class Model : NSObject {
    
    var name : String = ""
    var id : String = ""
    var img : String = ""
    
    init(fromDictionary dictionary: [String:Any]){
        name = dictionary["name"] as? String ?? ""
        id = dictionary["id"] as? String ?? ""
        img = dictionary["img"] as? String ?? ""
    }
}
