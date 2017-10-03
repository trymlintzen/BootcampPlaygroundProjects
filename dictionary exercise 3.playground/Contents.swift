//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//: Playground - noun: a place where people can play

import UIKit

//Here is the escaped string...just imagine this is our data retrieved from a server! Like for real!!!
var itemsJSONString = "{\r\n\t\"status\": true,\r\n\t\"message\": \"Success!\",\r\n\t\"date\": 1507038878597,\r\n\t\"data\": [{\r\n\t\t\t\"_id\": \"59d1f9590cf3a2ea732ff73d\",\r\n\t\t\t\"geo\": [0, 0],\r\n\t\t\t\"lng\": 0,\r\n\t\t\t\"lat\": 0,\r\n\t\t\t\"coordinatesNeedCorrection\": true,\r\n\t\t\t\"name\": \"Sand Harbor \",\r\n\t\t\t\"url\": \"\",\r\n\t\t\t\"__v\": 0,\r\n\t\t\t\"siteVerified\": false,\r\n\t\t\t\"country\": \"USA\",\r\n\t\t\t\"region\": null,\r\n\t\t\t\"diveLocation\": null,\r\n\t\t\t\"description\": null,\r\n\t\t\t\"experienceReq\": null,\r\n\t\t\t\"depthMetresString\": 30,\r\n\t\t\t\"visibilityMetresString\": 10,\r\n\t\t\t\"currents\": null,\r\n\t\t\t\"access\": null,\r\n\t\t\t\"videoURLS\": [],\r\n\t\t\t\"imageURLS\": [],\r\n\t\t\t\"imageThumbURLS\": [],\r\n\t\t\t\"marinelifeArray\": [],\r\n\t\t\t\"typeOfDivingArray\": []\r\n\t\t},\r\n\t\t{\r\n\t\t\t\"_id\": \"59d1f9590cf3a2ea732ff73d\",\r\n\t\t\t\"geo\": [0, 0],\r\n\t\t\t\"lng\": 0,\r\n\t\t\t\"lat\": 0,\r\n\t\t\t\"coordinatesNeedCorrection\": true,\r\n\t\t\t\"name\": \"Shark Hole \",\r\n\t\t\t\"url\": \"\",\r\n\t\t\t\"__v\": 0,\r\n\t\t\t\"siteVerified\": false,\r\n\t\t\t\"country\": \"Netherlands\",\r\n\t\t\t\"region\": null,\r\n\t\t\t\"diveLocation\": null,\r\n\t\t\t\"description\": null,\r\n\t\t\t\"experienceReq\": null,\r\n\t\t\t\"depthMetresString\": 40,\r\n\t\t\t\"visibilityMetresString\": 30,\r\n\t\t\t\"currents\": null,\r\n\t\t\t\"access\": null,\r\n\t\t\t\"videoURLS\": [],\r\n\t\t\t\"imageURLS\": [],\r\n\t\t\t\"imageThumbURLS\": [],\r\n\t\t\t\"marinelifeArray\": [],\r\n\t\t\t\"typeOfDivingArray\": []\r\n\t\t},\r\n\t\t{\r\n\t\t\t\"_id\": \"59d1f9590cf3a2ea732ff73d\",\r\n\t\t\t\"geo\": [0, 0],\r\n\t\t\t\"lng\": 0,\r\n\t\t\t\"lat\": 0,\r\n\t\t\t\"coordinatesNeedCorrection\": true,\r\n\t\t\t\"name\": \"Whale Point\",\r\n\t\t\t\"url\": \"\",\r\n\t\t\t\"__v\": 0,\r\n\t\t\t\"siteVerified\": false,\r\n\t\t\t\"country\": \"Portugal\",\r\n\t\t\t\"region\": null,\r\n\t\t\t\"diveLocation\": null,\r\n\t\t\t\"description\": null,\r\n\t\t\t\"experienceReq\": null,\r\n\t\t\t\"depthMetresString\": 40,\r\n\t\t\t\"visibilityMetresString\": 10,\r\n\t\t\t\"currents\": null,\r\n\t\t\t\"access\": null,\r\n\t\t\t\"videoURLS\": [],\r\n\t\t\t\"imageURLS\": [],\r\n\t\t\t\"imageThumbURLS\": [],\r\n\t\t\t\"marinelifeArray\": [],\r\n\t\t\t\"typeOfDivingArray\": []\r\n\t\t}\r\n\t]\r\n}"

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

if let itemsDictionary = itemsJSONString.parseJSONString as? NSDictionary,
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


