//
//  demoViewModel.swift
//  MVVMDemo
//
//  Created by Priyal on 20/11/24.
//

import Foundation

class tblModel : NSObject {
    var name : String = ""
    var image : String = ""
    
    
    init(fromDictionary dictionary: [String:Any]){
        name = dictionary["name"] as? String ?? ""
        image = dictionary["image"] as? String ?? ""
    }
    
    
}

class viewModelData : NSObject {
    var arr : [tblModel] = [tblModel(fromDictionary: ["name": "Item 1", "image": "image1.png"]),
                            tblModel(fromDictionary: ["name": "Item 2", "image": "image2.png"]),
                            tblModel(fromDictionary: ["name": "Item 3", "image": "image3.png"]),
                            tblModel(fromDictionary: ["name": "Item 4", "image": "image3.png"]),
                            tblModel(fromDictionary: ["name": "Item 5", "image": "image3.png"]),
                            tblModel(fromDictionary: ["name": "Item 6", "image": "image3.png"]),
                            tblModel(fromDictionary: ["name": "Item 7", "image": "image3.png"])]
    var numofcount : Int {
        return arr.count
    }
    
    func getCellViewModel( at indexPath: IndexPath ) -> tblModel {
        return arr[indexPath.row]
    }
    
}
