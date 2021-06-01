//
//  SaveUserDefault.swift
//  Laytrip
//
//  Created by AjaY.. on 30/06/20.
//  Copyright © 2020 AJAY MISHRA. All rights reserved.
//

import Foundation
//import FirebaseCrashlytics

class SaveUserDefaults: NSObject
{
    class func saveLoginRegisterDetails(_ dict : NSMutableDictionary){
        
        if let MainDict = dict.value(forKey: "user_details")as? NSDictionary{
            if let accesstoken = MainDict.value(forKey: "access_token")as? String{
                defaults.set(accesstoken, forKey: UserDefaultValues.UserAccessToken.rawValue)
            }
            if let id = MainDict.value(forKey: "id")as? String{
//                Crashlytics.crashlytics().setUserID(id)
                defaults.set(id, forKey: UserDefaultValues.UserID.rawValue)
            }
            if let first_name = MainDict.value(forKey: "first_name")as? String{
//                Crashlytics.crashlytics().setCustomValue(first_name, forKey: "first_name")
                defaults.set(first_name, forKey: UserDefaultValues.UserFirstName.rawValue)
            }
            if let last_name = MainDict.value(forKey: "last_name")as? String{
//                Crashlytics.crashlytics().setCustomValue(last_name, forKey: "last_name")
                defaults.set(last_name, forKey: UserDefaultValues.UserLastName.rawValue)
            }
            if let email = MainDict.value(forKey: "email")as? String{
//                Crashlytics.crashlytics().setCustomValue(email, forKey: "email")
                defaults.set(email, forKey: UserDefaultValues.UserEmail.rawValue)
            }
            if let phoneNo = MainDict.value(forKey: "phone_no")as? String{
                defaults.set(phoneNo, forKey: UserDefaultValues.userPhoneNo.rawValue)
            }
            if let profilePic = MainDict.value(forKey: "profile_pic")as? String{
                defaults.set(profilePic, forKey: UserDefaultValues.UserProfile.rawValue)
            }
            if let gender = MainDict.value(forKey: "gender")as? String{
                defaults.set(gender, forKey: UserDefaultValues.UserGender.rawValue)
            }
        }else if let MainDict = dict.value(forKey: "userDetails")as? NSDictionary{
            if let accesstoken = MainDict.value(forKey: "access_token")as? String{
                defaults.set(accesstoken, forKey: UserDefaultValues.UserAccessToken.rawValue)
            }
            if let id = MainDict.value(forKey: "id")as? String{
//                Crashlytics.crashlytics().setUserID(id)
                defaults.set(id, forKey: UserDefaultValues.UserID.rawValue)
            }
            if let first_name = MainDict.value(forKey: "first_name")as? String{
//                Crashlytics.crashlytics().setCustomValue(first_name, forKey: "first_name")
                defaults.set(first_name, forKey: UserDefaultValues.UserFirstName.rawValue)
            }
            if let last_name = MainDict.value(forKey: "last_name")as? String{
//                Crashlytics.crashlytics().setCustomValue(last_name, forKey: "last_name")
                defaults.set(last_name, forKey: UserDefaultValues.UserLastName.rawValue)
            }
            if let email = MainDict.value(forKey: "email")as? String{
//                Crashlytics.crashlytics().setCustomValue(email, forKey: "email")
                defaults.set(email, forKey: UserDefaultValues.UserEmail.rawValue)
            }
            if let phoneNo = MainDict.value(forKey: "phone_no")as? String{
                defaults.set(phoneNo, forKey: UserDefaultValues.userPhoneNo.rawValue)
            }
            if let profilePic = MainDict.value(forKey: "profile_pic")as? String{
                defaults.set(profilePic, forKey: UserDefaultValues.UserProfile.rawValue)
            }
            if let gender = MainDict.value(forKey: "gender")as? String{
                defaults.set(gender, forKey: UserDefaultValues.UserGender.rawValue)
            }
        }
        nc.post(name: Notification.Name("UserDataUpdated"), object: nil)
    }
    
    
    class func saveUserProfile(_ Dict : NSMutableDictionary){
        if let MainDict = Dict.value(forKey: "data")as? NSDictionary{
            let dict1 = MainDict.mutableCopy() as! NSMutableDictionary
            setupProfileData(dict1)
        }else{
            setupProfileData(Dict)
        }
    }
    
    class func setupProfileData(_ MainDict : NSMutableDictionary){
    if let accesstoken = MainDict.value(forKey: "ziCode")as? String{
        defaults.set(accesstoken, forKey: UserDefaultValues.UserZipcode.rawValue)
    }else if let accesstoken = MainDict.value(forKey: "ziCode")as? NSInteger{
        let str = String(accesstoken)
        defaults.set(str, forKey: UserDefaultValues.UserZipcode.rawValue)
    }
    if let accesstoken = MainDict.value(forKey: "dob")as? String{
        defaults.set(accesstoken, forKey: UserDefaultValues.UserDOB.rawValue)
    }
    if let countryCode = MainDict.value(forKey: "countryCode")as? String{
        defaults.set(countryCode, forKey: UserDefaultValues.UserPhoneCode.rawValue)
    }
    if let accesstoken = MainDict.value(forKey: "address")as? String{
        defaults.set(accesstoken, forKey: UserDefaultValues.UserAddress.rawValue)
    }
    if let id = MainDict.value(forKey: "cityName")as? String{
        defaults.set(id, forKey: UserDefaultValues.UserCity.rawValue)
    }
    if let dict = MainDict.value(forKey: "country")as? NSDictionary{
        if let intId = dict.value(forKey: "id") as? NSInteger{
            defaults.set(intId, forKey: UserDefaultValues.UserCountryid.rawValue)
        }
        if let intId = dict.value(forKey: "name") as? String{
            defaults.set(intId, forKey: UserDefaultValues.UserCountryName.rawValue)
        }
    }
    if let first_name = MainDict.value(forKey: "firstName")as? String{
//        Crashlytics.crashlytics().setCustomValue(first_name, forKey: "first_name")
        defaults.set(first_name, forKey: UserDefaultValues.UserFirstName.rawValue)
    }
    
    if let last_name = MainDict.value(forKey: "lastName")as? String{
//        Crashlytics.crashlytics().setCustomValue(last_name, forKey: "last_name")
        defaults.set(last_name, forKey: UserDefaultValues.UserLastName.rawValue)
    }
    if let email = MainDict.value(forKey: "email")as? String{
//        Crashlytics.crashlytics().setCustomValue(email, forKey: "email")
        defaults.set(email, forKey: UserDefaultValues.UserEmail.rawValue)
    }
    if let phoneNo = MainDict.value(forKey: "phoneNo")as? String{
        defaults.set(phoneNo, forKey: UserDefaultValues.userPhoneNo.rawValue)
    }else if let phoneNo = MainDict.value(forKey: "phoneNo")as? NSInteger{
        let str = String(phoneNo)
        defaults.set(str, forKey: UserDefaultValues.userPhoneNo.rawValue)
    }
        
        if let dict = MainDict.value(forKey: "preferredCurrency")as? NSDictionary{
            if let code = dict.object(forKey: "code")as? String{
                defaults.set(code, forKey: UserDefaultValues.UserCurrencyName.rawValue)
            }
            if let id = dict.object(forKey: "id")as? Int{
                defaults.set(id, forKey: UserDefaultValues.UserCurrencyId.rawValue)
            }
        }
        
        if let dict = MainDict.value(forKey: "preferredLanguage")as? NSDictionary{
            if let name = dict.object(forKey: "name")as? String{
                defaults.set(name, forKey: UserDefaultValues.UserLangName.rawValue)
            }
            
            if let id = dict.object(forKey: "id")as? Int{
                defaults.set(id, forKey: UserDefaultValues.UserLangId.rawValue)
            }
        }
        
    if let profilePic = MainDict.value(forKey: "profilePic")as? String{
        defaults.set(profilePic, forKey: UserDefaultValues.UserProfile.rawValue)
    }
    if let gender = MainDict.value(forKey: "gender")as? String{
        defaults.set(gender, forKey: UserDefaultValues.UserGender.rawValue)
    }
    if let dict = MainDict.value(forKey: "state")as? NSDictionary{
        if let intId = dict.value(forKey: "id") as? NSInteger{
            defaults.set(intId, forKey: UserDefaultValues.UserStateid.rawValue)
        }
        if let intId = dict.value(forKey: "name") as? String{
            defaults.set(intId, forKey: UserDefaultValues.UserStateName.rawValue)
        }
    }
    if let gender = MainDict.value(forKey: "zipCode")as? String{
        defaults.set(gender, forKey: UserDefaultValues.UserZipcode.rawValue)
    }
    if let gender = MainDict.value(forKey: "title")as? String{
        defaults.set(gender, forKey: UserDefaultValues.UserTitle.rawValue)
    }
    
    if let gender = MainDict.value(forKey: "passportNumber")as? String{
        defaults.set(gender, forKey: UserDefaultValues.UserPassportNo.rawValue)
    }
    if let gender = MainDict.value(forKey: "passportExpiry")as? String{
        defaults.set(gender, forKey: UserDefaultValues.UserPassportDate.rawValue)
    }
        
    nc.post(name: Notification.Name("UserDataUpdated"), object: nil)
    }
    
    class func removeAllDefaults(){
        
//        Freshchat.sharedInstance().resetUser {
//            
//        }
        
        defaults.setValue(nil, forKey: UserDefaultValues.UserAccessToken.rawValue)
        defaults.setValue(nil, forKey: UserDefaultValues.UserID.rawValue)
        defaults.setValue(nil, forKey: UserDefaultValues.UserFirstName.rawValue)
        defaults.setValue(nil, forKey: UserDefaultValues.UserLastName.rawValue)
        defaults.setValue(nil, forKey: UserDefaultValues.UserEmail.rawValue)
        defaults.setValue(nil, forKey: UserDefaultValues.UserProfile.rawValue)
        defaults.setValue(nil, forKey: UserDefaultValues.userPhoneNo.rawValue)
        defaults.setValue(nil, forKey: UserDefaultValues.UserGender.rawValue)
        defaults.setValue(nil, forKey: UserDefaultValues.currentUserSigninType.rawValue)
        
        defaults.setValue(nil, forKey: UserDefaultValues.UserAddress.rawValue)
        defaults.setValue(nil, forKey: UserDefaultValues.UserCountryid.rawValue)
        defaults.setValue(nil, forKey: UserDefaultValues.UserCountryName.rawValue)
        defaults.setValue(nil, forKey: UserDefaultValues.UserStateid.rawValue)
        defaults.setValue(nil, forKey: UserDefaultValues.UserStateName.rawValue)
        defaults.setValue(nil, forKey: UserDefaultValues.UserCity.rawValue)
        defaults.setValue(nil, forKey: UserDefaultValues.UserZipcode.rawValue)
        defaults.setValue(nil, forKey: UserDefaultValues.UserPassportNo.rawValue)
        
        defaults.setValue(nil, forKey: UserDefaultValues.UserPassportDate.rawValue)
        defaults.setValue(nil, forKey: UserDefaultValues.UserDOB.rawValue)
        defaults.setValue(nil, forKey: UserDefaultValues.UserPhoneCode.rawValue)
        defaults.setValue(nil, forKey: UserDefaultValues.UserTitle.rawValue)
        defaults.setValue(nil, forKey: UserDefaultValues.isGuestUser.rawValue)
        
        defaults.setValue(nil, forKey: FlightUserDeafults.FromCityCode.rawValue)
        defaults.setValue(nil, forKey: FlightUserDeafults.FromCity.rawValue)
        defaults.setValue(nil, forKey: FlightUserDeafults.ToCityCode.rawValue)
        defaults.setValue(nil, forKey: FlightUserDeafults.ToCity.rawValue)


    }
}
