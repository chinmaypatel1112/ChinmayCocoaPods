//
//  WebServiceCalling.swift
//  Laytrip
//
//  Created by AjaY.. on 28/06/20.
//  Copyright © 2020 AJAY MISHRA. All rights reserved.
//

//import Alamofire
//import SwiftyJSON

//class AlmofireServices: NSObject {
//    
//    class func request(type: RequireType, data parameters: [String : Any] = [:],  success: ((_ response: Any) -> ())? = nil, errorr: ((_ response: String) -> ())? = nil) {
//        
//        if !UtilityClass.isInternetHasConnectivity(){
//            errorr!(ERROR_NET_CONNECTION.localized())
//        }
//        else{
//            
//            UtilityClass.myPrint(type.url,type.httpMethod,type.encoding,type.headers as Any)
//            AF.request(type.url, method: type.httpMethod, parameters: parameters, encoding: type.encoding, headers: type.headers)
//                .responseJSON { response in
//                    switch response.result {
//                        
//                    case .success(_):
//                        if let dict = response.value{
//                            UtilityClass.myPrint(dict)
//                            if let code = response.response?.statusCode {
//                                if code == 200{
//                                    if let dictt = dict as? NSDictionary{
//                                        
//                                        let Maindict = dictt.mutableCopy() as! NSMutableDictionary
//                                        Maindict.setValue(code, forKey: "statusCode")
//                                        success!(Maindict)
//                                        
//                                        
//                                    }else{
//                                        success!(dict)
//                                    }
//                                    
//                                }else{
//                                    if let dict12 = dict as? NSDictionary{
//                                        
//                                        let dict = NSMutableDictionary()
//                                        dict.setValue(code, forKey: "statusCode")
//                                        if let msg = dict12.value(forKey: "message")as? String{
//                                            dict.setValue(msg, forKey: "message")
//                                        }
//                                        var dict1 = NSDictionary()
//                                        dict1 = dict
//                                        success!(dict1)
//                                    }else{
//                                        let dict = NSMutableDictionary()
//                                        dict.setValue(code, forKey: "statusCode")
//                                        dict.setValue(ERROR_MESSAGE_GLOBAL, forKey: "message")
//                                        var dict1 = NSDictionary()
//                                        dict1 = dict
//                                        
//                                        success!(dict1)
//                                    }
//                                }
//                            }else{
//                               let dict = NSMutableDictionary()
//                                dict.setValue(ERROR_MESSAGE_GLOBAL, forKey: "message")
//                                var dict1 = NSDictionary()
//                                dict1 = dict
//                                success!(dict1)
//                            }
//                        }
//                        break
//                    case .failure(let error):
//                        UtilityClass.myPrint( error)
//                        errorr!(error.localizedDescription)
//                        break
//                    }
//            }
//        }
//    }
//    
//    class func FlightRequest(type: RequireType, data parameters: [String : Any] = [:],  success: ((_ response: Any) -> ())? = nil, errorr: ((_ response: String) -> ())? = nil) {
//        
//        if !UtilityClass.isInternetHasConnectivity(){
//            errorr!(ERROR_NET_CONNECTION.localized())
//        }
//        else{
//            
//            UtilityClass.myPrint(type.url,type.httpMethod,type.encoding,type.headers as Any)
//            AF.request(type.url, method: type.httpMethod, parameters: parameters, encoding: type.encoding, headers: type.headers)
//                .responseJSON { response in
//                    switch response.result {
//                        
//                    case .success(_):
//                        if let dict = response.value{
//                            UtilityClass.myPrint(dict)
//                            if let code = response.response?.statusCode {
//                                if code == 200{
//                                    if let dictt = dict as? NSDictionary{
//                                        
//                                        let Maindict = dictt.mutableCopy() as! NSMutableDictionary
//                                        Maindict.setValue(code, forKey: "statusCode")
//                                        var dict1 = NSDictionary()
//                                        dict1 = Maindict
//                                        success!(dict1)
//                                    }
//                                   
//                                    else{
//                                        success!(dict)
//                                    }
//                                    
//                                }else{
//                                    if let dict12 = dict as? NSDictionary{
//                                        
//                                        let dict = NSMutableDictionary()
//                                        dict.setValue(code, forKey: "statusCode")
//                                        if let msg = dict12.value(forKey: "message")as? String{
//                                            dict.setValue(msg, forKey: "message")
//                                        }
//                                        var dict1 = NSDictionary()
//                                        dict1 = dict
//                                        success!(dict1)
//                                    }else{
//                                        let dict = NSMutableDictionary()
//                                        dict.setValue(code, forKey: "statusCode")
//                                        dict.setValue(ERROR_MESSAGE_GLOBAL, forKey: "message")
//                                        var dict1 = NSDictionary()
//                                        dict1 = dict
//                                        
//                                        success!(dict1)
//                                    }
//                                }
//                            }else{
//                                let dict = NSMutableDictionary()
//                                dict.setValue(ERROR_MESSAGE_GLOBAL, forKey: "message")
//                                var dict1 = NSDictionary()
//                                dict1 = dict
//                                success!(dict1)
//                            }
//                        }
//                        break
//                    case .failure(let error):
//                        UtilityClass.myPrint( error)
//                        errorr!(error.localizedDescription)
//                        break
//                    }
//            }
//        }
//    }
//    
//    
//    class func RequestNew(type: RequireType, data parameters: [String : Any] = [:],  success: ((_ response: Any) -> ())? = nil, errorr: ((_ response: String) -> ())? = nil) {
//        
//        if !UtilityClass.isInternetHasConnectivity(){
//            errorr!(ERROR_NET_CONNECTION.localized())
//        }
//        else{
//            
//            UtilityClass.myPrint(type.url,type.httpMethod,type.encoding,type.headers as Any)
//            AF.request(type.url, method: type.httpMethod, parameters: parameters, encoding: type.encoding, headers: type.headers)
//                .responseJSON { response in
//                    switch response.result {
//                        
//                    case .success(_):
//                        if let dict = response.value{
//                            UtilityClass.myPrint(dict)
//                            if let code = response.response?.statusCode {
//                                if code == 200
//                                {
//                                    if let dictt = dict as? NSDictionary{
//                                        
//                                        let Maindict = dictt.mutableCopy() as! NSMutableDictionary
//                                        Maindict.setValue(code, forKey: "statusCode")
//                                        
//                                        var dict1 = NSDictionary()
//                                        dict1 = Maindict
//                                        success!(dict1)
//                                        
//                                    }else{
//                                        success!(dict)
//                                    }
//                                    
//                                }else{
//                                    if let dict12 = dict as? NSDictionary{
//                                        
//                                        let dict = NSMutableDictionary()
//                                        dict.setValue(code, forKey: "statusCode")
//                                        if let msg = dict12.value(forKey: "message")as? String{
//                                            dict.setValue(msg, forKey: "message")
//                                        }
//                                        var dict1 = NSDictionary()
//                                        dict1 = dict
//                                        success!(dict1)
//                                    }else{
//                                        let dict = NSMutableDictionary()
//                                        dict.setValue(code, forKey: "statusCode")
//                                        dict.setValue(ERROR_MESSAGE_GLOBAL, forKey: "message")
//                                        var dict1 = NSDictionary()
//                                        dict1 = dict
//                                        
//                                        success!(dict1)
//                                    }
//                                }
//                            }else{
//                                let dict = NSMutableDictionary()
//                                dict.setValue(ERROR_MESSAGE_GLOBAL, forKey: "message")
//                                var dict1 = NSDictionary()
//                                dict1 = dict
//                                success!(dict1)
//                            }
//                        }
//                        break
//                    case .failure(let error):
//                        UtilityClass.myPrint( error)
//                        errorr!(error.localizedDescription)
//                        break
//                    }
//            }
//        }
//    }
//      
//    class func Getrequest(type: RequireType, data parameters: String,  success: ((_ response: Any) -> ())? = nil, errorr: ((_ response: String) -> ())? = nil) {
//        
//        if !UtilityClass.isInternetHasConnectivity(){
//            errorr!(ERROR_NET_CONNECTION.localized())
//        }
//        else{
//            if type.httpMethod == .get {
//                var url = type.url
//                if parameters.count > 0{
//                    let  url1 =  type.url.absoluteString + parameters
//                    let urlString = url1.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
//                    UtilityClass.myPrint(urlString as Any)
//                    
//                    url = URL(string: urlString)!
//                    UtilityClass.myPrint(url)
//                    
//                }
//                
//                UtilityClass.myPrint(type.url,type.httpMethod,type.encoding,type.headers as Any)
//                AF.request(url, method: type.httpMethod, encoding: type.encoding, headers: type.headers)
//                    .responseJSON { response in
//                        switch response.result {
//                            
//                        case .success(_):
//                            if let dict = response.value{
//                                UtilityClass.myPrint(dict)
//                                if let code = response.response?.statusCode {
//                                    if code == 200{
//                                        if let dictt = dict as? NSDictionary{
//                                            
//                                            let Maindict = dictt.mutableCopy() as! NSMutableDictionary
//                                            Maindict.setValue(code, forKey: "statusCode")
//                                            var dict1 = NSDictionary()
//                                            dict1 = Maindict
//                                            success!(dict1)
//                                            
//                                            
//                                        }else{
//                                            success!(dict)
//                                        }
//                                        
//                                    }else{
//                                        if let dictt = dict as? NSDictionary{
//                                            if let msg = dictt.object(forKey: "message")as? String{
//                                                success!(msg)
//                                            }else{
//                                                success!(ERROR_MESSAGE_GLOBAL)
//                                            }
//                                        }else{
//                                            success!(ERROR_MESSAGE_GLOBAL)
//                                        }
//                                    }
//                                }else{
//                                    success!(ERROR_MESSAGE_GLOBAL)
//                                }
//                            }
//                            break
//                        case .failure(let error):
//                            UtilityClass.myPrint( error)
//                            errorr!(error.localizedDescription)
//                            break
//                        }
//                }
//            }
//        }
//    }
//    
//    class func GetNewRequest(type: RequireType, data parameters: String,  success: ((_ response: Any) -> ())? = nil, errorr: ((_ response: String) -> ())? = nil) {
//        
//        if !UtilityClass.isInternetHasConnectivity(){
//            errorr!(ERROR_NET_CONNECTION.localized())
//        }
//        else{
//            if type.httpMethod == .get {
//                var url = type.url
//                if parameters.count > 0{
//                    let  url1 =  type.url.absoluteString + parameters
//                    let urlString = url1.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
//                    UtilityClass.myPrint(urlString as Any)
//                    
//                    url = URL(string: urlString)!
//                    UtilityClass.myPrint(url)
//                    
//                }
//                
//                UtilityClass.myPrint(type.url,type.httpMethod,type.encoding,type.headers as Any)
//                AF.request(url, method: type.httpMethod, encoding: type.encoding, headers: type.headers)
//                    .responseJSON { response in
//                        switch response.result {
//                            
//                        case .success(_):
//                            if let dict = response.value{
//                                UtilityClass.myPrint(dict)
//                                if let code = response.response?.statusCode {
//                                    if code == 200{
//                                        if let dictt = dict as? NSDictionary{
//                                            
//                                            let Maindict = dictt.mutableCopy() as! NSMutableDictionary
//                                            Maindict.setValue(code, forKey: "statusCode")
//                                            
//                                            var dict1 = NSDictionary()
//                                            dict1 = Maindict
//                                            success!(dict1)
//                                            
//                                            
//                                        }else{
//                                            success!(dict)
//                                        }
//                                        
//                                    }else{
//                                        if let dict12 = dict as? NSDictionary{
//                                            
//                                            let dict = NSMutableDictionary()
//                                            dict.setValue(code, forKey: "statusCode")
//                                            if let msg = dict12.value(forKey: "message")as? String{
//                                                dict.setValue(msg, forKey: "message")
//                                            }
//                                            var dict1 = NSDictionary()
//                                            dict1 = dict
//                                            success!(dict1)
//                                        }else{
//                                            let dict = NSMutableDictionary()
//                                            dict.setValue(code, forKey: "statusCode")
//                                            dict.setValue(ERROR_MESSAGE_GLOBAL, forKey: "message")
//                                            var dict1 = NSDictionary()
//                                            dict1 = dict
//                                            
//                                            success!(dict1)
//                                        }
//                                    }
//                                }else{
//                                    let dict = NSMutableDictionary()
//                                    dict.setValue(ERROR_MESSAGE_GLOBAL, forKey: "message")
//                                    var dict1 = NSDictionary()
//                                    dict1 = dict
//                                    
//                                    success!(dict1)
//                                }
//                            }
//                            break
//                        case .failure(let error):
//                            UtilityClass.myPrint( error)
//                            errorr!(error.localizedDescription)
//                            break
//                        }
//                }
//            }
//        }
//    }
//    
//    class func PutRequest(type: RequireType, data parameters: [String : Any] = [:], lastPath userID: String ,  success: ((_ response: Any) -> ())? = nil, errorr: ((_ response: String) -> ())? = nil) {
//        
//        if !UtilityClass.isInternetHasConnectivity(){
//            errorr!(ERROR_NET_CONNECTION.localized())
//        }
//        else{
//            if type.httpMethod == .put {
//                var url = type.url
//                if userID.count > 0{
//                    let  url1 =  type.url.absoluteString + userID
//                    let urlString = url1.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
//                    UtilityClass.myPrint(urlString as Any)
//                    
//                    url = URL(string: urlString)!
//                    UtilityClass.myPrint(url)
//                    
//                }
//                
//                UtilityClass.myPrint(url,type.httpMethod,type.encoding,type.headers as Any)
//                AF.request(url, method: type.httpMethod, parameters: parameters, encoding: type.encoding, headers: type.headers)
//                    .responseJSON { response in
//                        switch response.result {
//                            
//                        case .success(_):
//                            if let dict = response.value{
//                                UtilityClass.myPrint(dict)
//                                if let code = response.response?.statusCode {
//                                    if code == 200{
//                                        
//                                        if let dictt = dict as? NSDictionary{
//                                            
//                                            let Maindict = dictt.mutableCopy() as! NSMutableDictionary
//                                            Maindict.setValue(code, forKey: "statusCode")
//                                            success!(Maindict)
//                                            
//                                            
//                                        }else{
//                                            success!(dict)
//                                        }
//                                        
//                                    }else{
//                                        if let dict12 = dict as? NSDictionary{
//                                            if let str = dict12.value(forKey: "message")as? String{
//                                                success!(str)
//                                            }
//                                        }else{
//                                            success!(ERROR_MESSAGE_GLOBAL)
//                                        }
//                                    }
//                                }else{
//                                    success!(ERROR_MESSAGE_GLOBAL)
//                                }
//                            }
//                            break
//                        case .failure(let error):
//                            UtilityClass.myPrint( error)
//                            errorr!(error.localizedDescription)
//                            break
//                        }
//                }
//                
//            }
//        }
//    }
//    
//    class func DeleteRequest(type: RequireType, data parameters: [String : Any] = [:], lastPath userID: String ,  success: ((_ response: Any) -> ())? = nil, errorr: ((_ response: String) -> ())? = nil) {
//        
//        if !UtilityClass.isInternetHasConnectivity(){
//            errorr!(ERROR_NET_CONNECTION.localized())
//        }
//        else{
//            if type.httpMethod == .delete {
//                var url = type.url
//                if userID.count > 0{
//                    let  url1 =  type.url.absoluteString + userID
//                    let urlString = url1.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
//                    UtilityClass.myPrint(urlString as Any)
//                    
//                    url = URL(string: urlString)!
//                    UtilityClass.myPrint(url)
//                    
//                }
//                
//                UtilityClass.myPrint(url,type.httpMethod,type.encoding,type.headers as Any)
//                AF.request(url, method: type.httpMethod, parameters: parameters, encoding: type.encoding, headers: type.headers)
//                    .responseJSON { response in
//                        switch response.result {
//                            
//                        case .success(_):
//                            if let dict = response.value{
//                                UtilityClass.myPrint(dict)
//                                if let code = response.response?.statusCode {
//                                    if code == 200{
//                                        
//                                        if let dictt = dict as? NSDictionary{
//                                            
//                                            let Maindict = dictt.mutableCopy() as! NSMutableDictionary
//                                            Maindict.setValue(code, forKey: "statusCode")
//                                            
//                                            var dict1 = NSDictionary()
//                                            dict1 = Maindict
//                                            success!(dict1)
//                                            
//                                            
//                                        }
//                                        else if let dictt = dict as? NSMutableDictionary{
//                                            
////                                            let Maindict = dictt.mutableCopy() as! NSMutableDictionary
//                                            dictt.setValue(code, forKey: "statusCode")
//                                            success!(dictt)
//                                            
//                                            
//                                        }
//                                        else{
//                                            success!(dict)
//                                        }
//                                        
//                                    }else{
//                                        
//                                            if let dict12 = dict as? NSDictionary{
//                                                
//                                                let dict = NSMutableDictionary()
//                                                dict.setValue(code, forKey: "statusCode")
//                                                if let msg = dict12.value(forKey: "message")as? String{
//                                                    dict.setValue(msg, forKey: "message")
//                                                }
//                                                var dict1 = NSDictionary()
//                                                dict1 = dict
//                                                success!(dict1)
//                                            }else{
//                                                let dict = NSMutableDictionary()
//                                                dict.setValue(code, forKey: "statusCode")
//                                                dict.setValue(ERROR_MESSAGE_GLOBAL, forKey: "message")
//                                                var dict1 = NSDictionary()
//                                                dict1 = dict
//                                                success!(dict1)
//                                            }
//                                        
//                                    }
//                                }else{
//                                    let dict = NSMutableDictionary()
//                                    dict.setValue(ERROR_MESSAGE_GLOBAL, forKey: "message")
//                                    var dict1 = NSDictionary()
//                                    dict1 = dict
//                                    success!(dict1)
//                                }
//                            }
//                            break
//                        case .failure(let error):
//                            UtilityClass.myPrint( error)
//                            errorr!(error.localizedDescription)
//                            
//                            break
//                        }
//                }
//                
//            }
//        }
//    }
//    
//    
//    //MARK:- For Hotel
//    class func HotelRequest(type: RequireType, data parameters: [String : Any] = [:],  success: ((_ response: Any) -> ())? = nil, errorr: ((_ response: String) -> ())? = nil) {
//        
//        if !UtilityClass.isInternetHasConnectivity(){
//            errorr!(ERROR_NET_CONNECTION.localized())
//        }
//        else{
//            
//            UtilityClass.myPrint(type.url,type.httpMethod,type.encoding,type.headers as Any)
//            AF.request(type.url, method: type.httpMethod, parameters: parameters, encoding: type.encoding, headers: type.headers)
//                .responseJSON { response in
//                    switch response.result {
//                        
//                    case .success(_):
//                        if let dict = response.value{
//                            UtilityClass.myPrint(dict)
//                            if let code = response.response?.statusCode {
//                                if code == 200{
//                                    if let dictt = dict as? NSDictionary{
//                                        
//                                        let Maindict = dictt.mutableCopy() as! NSMutableDictionary
//                                        Maindict.setValue(code, forKey: "statusCode")
//                                        var dict1 = NSDictionary()
//                                        dict1 = Maindict
//                                        success!(dict1)
//                                    }
//                                   
//                                    else{
//                                        success!(dict)
//                                    }
//                                    
//                                }else{
//                                    if let dict12 = dict as? NSDictionary{
//                                        
//                                        let dict = NSMutableDictionary()
//                                        dict.setValue(code, forKey: "statusCode")
//                                        if let msg = dict12.value(forKey: "message")as? String{
//                                            dict.setValue(msg, forKey: "message")
//                                        }
//                                        var dict1 = NSDictionary()
//                                        dict1 = dict
//                                        success!(dict1)
//                                    }else{
//                                        let dict = NSMutableDictionary()
//                                        dict.setValue(code, forKey: "statusCode")
//                                        dict.setValue(ERROR_MESSAGE_GLOBAL, forKey: "message")
//                                        var dict1 = NSDictionary()
//                                        dict1 = dict
//                                        
//                                        success!(dict1)
//                                    }
//                                }
//                            }else{
//                                let dict = NSMutableDictionary()
//                                dict.setValue(ERROR_MESSAGE_GLOBAL, forKey: "message")
//                                var dict1 = NSDictionary()
//                                dict1 = dict
//                                success!(dict1)
//                            }
//                        }
//                        break
//                    case .failure(let error):
//                        UtilityClass.myPrint( error)
//                        errorr!(error.localizedDescription)
//                        break
//                    }
//            }
//        }
//    }
//
//}

