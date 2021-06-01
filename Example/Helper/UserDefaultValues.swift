//
//  UserDefaultValues.swift
//  Laytrip
//
//  Created by AjaY.. on 30/06/20.
//  Copyright © 2020 AJAY MISHRA. All rights reserved.
//

import Foundation

enum UserDefaultValues :String  {
    case UserAccessToken
    case UserID
    case UserFirstName
    case UserLastName
    case UserEmail
    case UserProfile
    case userPhoneNo
    case UserGender
    case currentUserSigninType
    case UserAddress
    case UserCountryid
    case UserCountryName
    case UserStateid
    case UserStateName
    case UserCity
    case UserZipcode
    case UserPassportNo
    case UserPassportDate
    case UserDOB
    case UserPhoneCode
    case UserTitle
    case LastUserEmail
    case LastUserPassword
    case isGuestUser
    case UserCurrencyName
    case UserCurrencyId
    case UserLangName
    case UserLangId
    
}

enum FlightUserDeafults:String{
    case FromCity
    case FromCityCode
    case ToCity
    case ToCityCode
}

enum WalkThroughDeafults:String{
     case FreshApp
}


enum HotelUserDefaults:String{
    case HotelToken
    case ToCity
    case Latitude
    case Longitude
}
