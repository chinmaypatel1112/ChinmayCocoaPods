

import Foundation
import UIKit



var appDelegate = (UIApplication.shared.delegate as! AppDelegate)

// MARK:- Global Device Constant

let IS_IPHONE = (UIDevice.current.userInterfaceIdiom == .phone)
let IS_IPAD = (UIDevice.current.userInterfaceIdiom == .pad)
let IS_IPHONE_4 = (IS_IPHONE && UIScreen.main.bounds.size.height == 480.0)
let IS_IPHONE_5 = (IS_IPHONE && UIScreen.main.bounds.size.height == 568.0)
let IS_IPHONE_6 = (IS_IPHONE && UIScreen.main.bounds.size.height == 667.0)
let IS_IPHONE_6plus = (IS_IPHONE && UIScreen.main.bounds.size.height == 736.0)
let IS_IPHONE_X = (IS_IPHONE && UIScreen.main.bounds.size.height >= 812.0)

var screenWidth : CGFloat = UIScreen.main.bounds.size.width
var screenHeight : CGFloat = UIScreen.main.bounds.size.height
let appVersion = Bundle.main.releaseVersionNumber
let systemVersion = UIDevice.current.systemVersion
let deviceType = "2"
var deviceToken = ""
var countryid = ""
var profileServiceCall = "no"
var isGuestUserOrNot = ""

let SHOW = "Show"
let CANCEL = "Cancel"


let ERROR_MESSAGE_GLOBAL = "Something went wrong. Please try again later."
let ERROR_NET_CONNECTION = "Please check your internet connection and try again."
let ALERT_TITLE = "Project Name"
let defaults = UserDefaults.standard
let nc = NotificationCenter.default

let CURRENT_ACCESS_TOKEN = "CURRENT_ACCESS_TOKEN"
let ACCEPTABLE_CHARACTERS_WITHOUTSPACE_Name = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
//Colors

let themeBlueColor = "#0045FF"
let DrakBlueColor = "#1854CF"
let LightBlueColor = "#4490E9"
let ShadowBlackColor = "#000000"
let signinLableColor = "#2A29E8"
let lightGrayColor1 = "#8C8C8C"
let peachColor = "#FF6F61"
let LineColor = "#D9D9D9"
let DarkGrayColor = "#2A2A2A"
let LightGrayColor = "#919191"

// all global usages variables
 
let PinkColor = "#F826C1"
let LightPinkBgColor = "#FFE6F9"
let PinkBorderColor = "#f925bf"
let FORCE_UPDATE_URL = "https://apps.apple.com/us/app/projectname/id1528850000"
let websiteURL = ""

//let appVersion = Bundle.main.infoDictionary?["CFBundleVersion"] as? String
 let databaseName = "projectname.sqlite"
