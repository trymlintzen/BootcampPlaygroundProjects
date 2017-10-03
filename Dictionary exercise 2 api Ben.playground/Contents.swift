//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//: Playground - noun: a place where people can play

import UIKit

//Here is the escaped string...just imagine this is our data retrieved from a server! Like for real!!!
var itemsJSONString = "{\"status\":true,\"message\":\"success!\",\"date\":1507038878597,\"data\":[{\"_id\":\"59d1f9590cf3a2ea732ff73d\",\"geo\":[0,0],\"lng\":0,\"lat\":0,\"coordinatesNeedCorrection\":true,\"name\":\"Sand Harbor \",\"url\":\"\",\"__v\":0,\"siteVerified\":false,\"country\":\"USA\",\"region\":null,\"diveLocation\":null,\"description\":null,\"experienceReq\":null,\"depthMetresString\":10,\"visibilityMetresString\":8,\"currents\":null,\"access\":null,\"videoURLS\":[],\"imageURLS\":[],\"imageThumbURLS\":[],\"marinelifeArray\":[],\"typeOfDivingArray\":[]}]}"

//The clever parsed, it deserialises the JSON, don't worry about it too much lot of complicated things here
extension String {
    
    var parseJSONString: AnyObject? {
        
        let data = self.data(using: String.Encoding.utf8, allowLossyConversion: false)
        
        if let jsonData = data {
            do {
                let message = try JSONSerialization.jsonObject(with: jsonData, options:.mutableContainers)
                return message as AnyObject?
            }
            catch let error as NSError
            {
                print("An error occurred: \(error)")
                return nil
            }
            
            // Will return an object or nil if JSON decoding fails
        } else {
            // Lossless conversion of the string was not possible
            return nil
        }
    }
}


// Optional binding "if let" schrijven, waardoor je geen ! hoeft te schrijven en dus niet forceerd
// if let dictionary1 = itemsDictionary!["PraxisItemsForSale"] as? NSArray {
    // print(itemsDictionary)


if let itemsDictionary = itemsJSONString.parseJSONString as? NSDictionary, // optional binding
    let status = itemsDictionary["status"] as? Bool,
    let message = itemsDictionary["message"] as? String,
    let data = itemsDictionary["data"] as? NSArray {
    if status {
        for divesite in data{
            if let datadict = divesite as? Dictionary<String,AnyObject>,
            let country = datadict["country"] as? String,
            let name = datadict["name"] as? String,
            let depthMetresString = datadict["depthMetresString"] as? Int,
            let visibilityMetresString = datadict["visibilityMetresString"] as? Int {
                print (status)
                print (message)
                print(country, name, depthMetresString, visibilityMetresString)

            } else {
                print("failed parsing json")
            }
    
        }
    } else {
        print(message)
    }
}
        
