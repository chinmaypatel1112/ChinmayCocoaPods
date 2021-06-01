

import UIKit
import Foundation
//import Reachability
//import FirebaseMessaging
//import Material

class UtilityClass: NSObject
{
    
    // MARK:- Check Internet
    class func getIPAddressForCellOrWireless()-> String? {
        
        let WIFI_IF : [String] = ["en0"]
        let KNOWN_WIRED_IFS : [String] = ["en2", "en3", "en4"]
        let KNOWN_CELL_IFS : [String] = ["pdp_ip0","pdp_ip1","pdp_ip2","pdp_ip3"]
        
        var addresses : [String : String] = ["wireless":"",
                                             "wired":"",
                                             "cell":""]
        
        
        var address: String?
        var ifaddr: UnsafeMutablePointer<ifaddrs>? = nil
        if getifaddrs(&ifaddr) == 0 {
            
            var ptr = ifaddr
            while ptr != nil {
                defer { ptr = ptr?.pointee.ifa_next } // memory has been renamed to pointee in swift 3 so changed memory to pointee
                
                let interface = ptr?.pointee
                let addrFamily = interface?.ifa_addr.pointee.sa_family
                if addrFamily == UInt8(AF_INET) || addrFamily == UInt8(AF_INET6) {
                    
                    if let name: String = String(cString: (interface?.ifa_name)!), (WIFI_IF.contains(name) || KNOWN_WIRED_IFS.contains(name) || KNOWN_CELL_IFS.contains(name)) {
                        
                        // String.fromCString() is deprecated in Swift 3. So use the following code inorder to get the exact IP Address.
                        var hostname = [CChar](repeating: 0, count: Int(NI_MAXHOST))
                        getnameinfo(interface?.ifa_addr, socklen_t((interface?.ifa_addr.pointee.sa_len)!), &hostname, socklen_t(hostname.count), nil, socklen_t(0), NI_NUMERICHOST)
                        address = String(cString: hostname)
                        if WIFI_IF.contains(name){
                            addresses["wireless"] =  address
                        }else if KNOWN_WIRED_IFS.contains(name){
                            addresses["wired"] =  address
                        }else if KNOWN_CELL_IFS.contains(name){
                            addresses["cell"] =  address
                        }
                    }
                    
                }
            }
        }
        freeifaddrs(ifaddr)
        
        var ipAddressString : String? = ""
        let wirelessString = addresses["wireless"]
        let wiredString = addresses["wired"]
        let cellString = addresses["cell"]
        if let wirelessString = wirelessString, wirelessString.count > 0{
            ipAddressString = wirelessString
        }else if let wiredString = wiredString, wiredString.count > 0{
            ipAddressString = wiredString
        }else if let cellString = cellString, cellString.count > 0{
            ipAddressString = cellString
        }
        return ipAddressString
    }
    
//    class func isInternetHasConnectivity() -> Bool {
//
////        do {
////            let flag = try Reachability().isReachable
////            return flag
////        }catch{
////            return false
////
////        }
//    }
    
    class func getDirectoryPath() -> String {
        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let documentsDirectory = paths[0]
        return documentsDirectory
    }
    
    class func json(from object:Any) -> String? {
        guard let data = try? JSONSerialization.data(withJSONObject: object, options: []) else {
            return nil
        }
        return String(data: data, encoding: String.Encoding.utf8)
    }
    
//    class func getFirebaseToken()
//    {
//        if let tokenStr = Messaging.messaging().fcmToken
//        {
//            deviceToken = tokenStr
//            self.myPrint(deviceToken)
//        }
//    }
    class func SetupAttributeString(MainText: String,Range : String, type: String, color: UIColor?, size: CGFloat, fontname : String? = "Poppins-Light") -> NSAttributedString{
        let underlineAttriString = NSMutableAttributedString(string: MainText)
        let range1 = (MainText as NSString).range(of: Range)
        if type == "underline" && color != nil{
            underlineAttriString.addAttribute(NSAttributedString.Key.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: range1)
            underlineAttriString.addAttribute(NSAttributedString.Key.foregroundColor, value:color!, range: range1)
        }else if type == "font" && color != nil{
            underlineAttriString.addAttribute(NSAttributedString.Key.font, value:  UIFont.init(name: fontname!, size: size) as Any, range: range1)
            underlineAttriString.addAttribute(NSAttributedString.Key.foregroundColor, value:color!, range: range1)
        }else if type == "underline" && color == nil{
            underlineAttriString.addAttribute(NSAttributedString.Key.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: range1)
        }else if type == "foreground color"{
            underlineAttriString.addAttribute(NSAttributedString.Key.foregroundColor, value:color!, range: range1)
        }
        else if type == "strike" && color != nil{
            underlineAttriString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: range1)
            underlineAttriString.addAttribute(NSAttributedString.Key.strikethroughColor, value: color!, range: range1)
            underlineAttriString.addAttribute(NSAttributedString.Key.foregroundColor, value:color!, range: range1)
        }
        else if type == "strike" && color == nil{
            underlineAttriString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: range1)
        }
        return underlineAttriString
        
    }
    
    class  func createDottedLine(_ view: UIView,_ width: CGFloat, _ color: CGColor) {
        let caShapeLayer = CAShapeLayer()
        caShapeLayer.strokeColor = color
        caShapeLayer.lineWidth = width
        caShapeLayer.lineDashPattern = [3,4]
        let cgPath = CGMutablePath()
        let cgPoint = [CGPoint(x: 0, y: 0), CGPoint(x: view.frame.width, y: 0)]
        cgPath.addLines(between: cgPoint)
        caShapeLayer.path = cgPath
        view.layer.addSublayer(caShapeLayer)
    }
    
    class  func createDottedLineVertical(_ view: UIView,_ width: CGFloat, _ color: CGColor) {
        let caShapeLayer = CAShapeLayer()
        caShapeLayer.strokeColor = color
        caShapeLayer.lineWidth = width
        caShapeLayer.lineDashPattern = [3,4]
        let cgPath = CGMutablePath()
        let cgPoint = [CGPoint(x: 0, y: 0), CGPoint(x: 0, y: view.frame.height)]
        cgPath.addLines(between: cgPoint)
        caShapeLayer.path = cgPath
        view.layer.addSublayer(caShapeLayer)
    }
    
//    class func SetupTextField(_ textfield: TextField, _ name : String)
//    {
//        textfield.placeholder = name
//        textfield.textColor =  UIColor.init(hexString: DarkGrayColor)
//        textfield.isClearIconButtonEnabled = false
//        textfield.isPlaceholderUppercasedWhenEditing = false
//        textfield.placeholderAnimation = .default
//        textfield.placeholderActiveColor = UIColor.init(hexString: LightGrayColor)!
//        textfield.dividerActiveColor = UIColor.init(hexString: DrakBlueColor)!
//        textfield.dividerNormalColor = UIColor.init(hexString: "#DCDCDC")!
//        textfield.dividerActiveHeight = 2.0
//        textfield.dividerNormalHeight = 2.0
//        
//        
//        textfield.placeholderNormalColor = UIColor.init(hexString: "#9E9E9E")!
//        textfield.autocorrectionType = .no
//        
//        textfield.placeholderLabel.font =  UIFont.init(name: "Poppins-Regular", size: 12)
//        textfield.font =  UIFont.init(name: "Poppins-Medium", size: 14)
//        if textfield.tag == 123{
//            textfield.placeholderLabel.font =  UIFont.init(name: "Poppins-Regular", size: 10)
//        }
//        textfield.minimumFontSize = 8
//        
//    }
    
//    class func goToDashboard(){
//        let mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
//        let redViewController = mainStoryBoard.instantiateViewController(withIdentifier: "TabBarController") as! TabBarController
//        let navigationVC = UINavigationController.init(rootViewController: redViewController)
//        navigationVC.navigationBar.isTranslucent = false
//        navigationVC.isNavigationBarHidden = true
//
//        ViewPresenter.replaceRootView(for: navigationVC)
//    }
//
//    class func goToLoginScreen(){
//        let mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
//        let redViewController = mainStoryBoard.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
//        let navigationVC = UINavigationController.init(rootViewController: redViewController)
//        navigationVC.navigationBar.isTranslucent = false
//        navigationVC.isNavigationBarHidden = true
//
//        ViewPresenter.replaceRootView(for: navigationVC)
//    }
    
    class func openURL(_ str : String){
        guard let url = URL(string: str) else { return }
        UIApplication.shared.open(url)
    }
    
//    class func addshadowAndRadius(_ view1 : UIView, _ radius : CGFloat){
//        view1.layer.cornerRadius = radius
//
//        view1.addShadow(ofColor: (UIColor.init(hexString: ShadowBlackColor)?.withAlphaComponent(0.29))!, radius: 3.5, offset:CGSize(width: 0, height: 3), opacity: 0.5)
//    }
    
    class func addImageOnLabel(_ img : String) -> NSAttributedString{
        let imageAttachment = NSTextAttachment()
        imageAttachment.image = UIImage(named:img)
        let imageOffsetY: CGFloat = 0.0
        imageAttachment.bounds = CGRect(x: 0, y: imageOffsetY, width: imageAttachment.image!.size.width, height: imageAttachment.image!.size.height)
        let attachmentString = NSAttributedString(attachment: imageAttachment)
        return attachmentString
    }
    
//    class func setupButtons(_ btn1 : UIButton, _ btn2 : UIButton, _ btn3 : UIButton, _ str1 : String,_ str2 : String, _ str3 : String, _ forList : String){
//        btn1.backgroundColor = UIColor.init(hexString: "#F7E7EC")
//        btn2.backgroundColor = UIColor.init(hexString: "#F6F6FC")
//        btn3.backgroundColor = UIColor.init(hexString: "#F6F6FC")
//
//        btn2.layer.borderColor =  UIColor.init(hexString: "#CAD1DE")?.cgColor
//        btn2.layer.borderWidth = 1
//
//        btn3.layer.borderColor =  UIColor.init(hexString: "#CAD1DE")?.cgColor
//        btn3.layer.borderWidth = 1
//        btn1.layer.borderWidth = 0
//
//        btn1.setTitleColor(UIColor.init(hexString: peachColor), for: .normal)
//        btn3.setTitleColor(UIColor.init(hexString: "#7E7E99"), for: .normal)
//        btn2.setTitleColor(UIColor.init(hexString: "#7E7E99"), for: .normal)
//
//        btn1.setImage(UIImage.init(named: str1), for: .normal)
//        btn2.setImage(UIImage.init(named: str2), for: .normal)
//        btn3.setImage(UIImage.init(named: str3), for: .normal)
//        if forList == "List"{
//            btn1.backgroundColor = UIColor.init(hexString: "#F6F6FC")
//            btn1.layer.borderColor =  UIColor.init(hexString: "#CAD1DE")?.cgColor
//            btn1.layer.borderWidth = 1
//            btn1.setTitleColor(UIColor.init(hexString: "#7E7E99"), for: .normal)
//
//        }
//    }
    
    class func BasicSpringAnimation(_ view : UIView, _ duration : TimeInterval? = 1 ,_ delay : TimeInterval? = 0, _ dumping : CGFloat? = 0.5, _ valocity : CGFloat? = 5){
        UIView.animate(withDuration: duration!, delay: delay!, usingSpringWithDamping: dumping!, initialSpringVelocity: valocity!, options: .curveEaseInOut, animations: {
            view.layoutIfNeeded()
            
        })
    }
    
    
    
    
    class func changeImageviewColor(_ imgView:UIImageView, _ color: UIColor, _ image:UIImage)
    {
        imgView.image = image.withRenderingMode(.alwaysTemplate)
        imgView.tintColor = color
    }
    
    class func changeButtonColor(_ button:UIButton, _ color: UIColor, _ image:UIImage)
    {
        button.setImage(image.withRenderingMode(.alwaysTemplate), for: .normal)
        button.imageView?.tintColor = color
    }
    
    class func labelKerning(_ kern:CGFloat, _ label: UILabel){
        let attributes = [NSAttributedString.Key.kern: kern]
        let attributedString = NSAttributedString(string: label.text!, attributes: attributes)
        label.attributedText = attributedString
    }
    class func textFieldKerning(_ kern:CGFloat, _ textField: UITextField){
        textField.defaultTextAttributes.updateValue(kern,forKey: NSAttributedString.Key.kern)
    }
           
    
  //  #if DEBUG
    class func myPrint(_ items: Any..., separator: String = " ", terminator: String = "\n") {
        Swift.print(items[0], separator:separator, terminator: terminator)
    }
   // #endif
    
    class func callLogoutWebService(){
//        let logoutModel = LoginViewModel()
//        logoutModel.LogoutWebService()
    }
    
}


