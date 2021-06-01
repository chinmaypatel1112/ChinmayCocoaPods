//
//  SocialLogins.swift
//  ChinmayCocoaPods
//
//  Created by Chinmay Patel.. on 28/05/21.
//  Copyright © 2020 Chinmay Patel. All rights reserved.
//

import Foundation
//import FBSDKLoginKit

//protocol GetFacebookdictDelegate : class{
//    func getFacebookData(_ result: NSDictionary)
//}
//
//class SocialSignins
//{
//    var delegate : GetFacebookdictDelegate?
//
//     func facebookLogin(_ controller : UIViewController){
//        let fbLoginManager : LoginManager = LoginManager()
//               fbLoginManager.logIn( permissions: ["email","public_profile" ], from: controller, handler: { (result, error) -> Void in
//
//                   if (error == nil) {
//                       let fbloginresult : LoginManagerLoginResult = result!
//                       if(fbloginresult.isCancelled) {
//                           //Show Cancel alert
//                       } else if(fbloginresult.grantedPermissions.contains("email")) {
//                           self.returnUserData()
//                        }
//                   }
//               })
//
//    }
//
//    func returnUserData() {
//        let graphRequest : GraphRequest = GraphRequest(graphPath: "me", parameters: ["fields":"email,name,first_name,last_name"])
//        graphRequest.start(completionHandler: { (connection, result, error) -> Void in
//            if ((error) != nil) {
//              } else {
//                let resultDic = result as! NSDictionary
//
//                self.delegate?.getFacebookData(resultDic)
//
//
//
//            }
//        })
//    }
//
//}
