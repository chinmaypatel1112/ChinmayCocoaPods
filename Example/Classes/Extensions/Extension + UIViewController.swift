//
//  Extension + UIViewController.swift
//  ChinmayCocoaPods
//
//  Created by Chinmay's Mac on 28/05/21.
//  Copyright © 2021 Chinmay Patel . All rights reserved.

import Foundation
import UIKit



extension UIViewController{
    
    func hideKeyboardWhenTapArround(){
        
        let tap : UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc  func dismissKeyboard(){
        
        view.endEditing(true)
    }
}

/*
extension UIViewController  : UITextFieldDelegate
{
    public func textFieldDidBeginEditing(_ textField: UITextField) {
        
        if IS_IPHONE_4 || IS_IPHONE_5 {
            animatedTextField(textField: textField, up: true)
        }
        
        
    }
    
    public func textFieldDidEndEditing(_ textField: UITextField) {
        if IS_IPHONE_4 || IS_IPHONE_5 {
            animatedTextField(textField: textField, up: false)
        }
    }
    
    func animatedTextField(textField : UITextField , up : Bool) -> Void {
        let movementDistance = 30; // tweak as needed
        let movementDuration = 0.3; // tweak as needed
        
        let movement = (up ? -movementDistance : movementDistance)
        
        UIView.beginAnimations("anim", context: nil)
        UIView.setAnimationBeginsFromCurrentState(true)
        UIView.setAnimationDuration(movementDuration)
        self.view.frame = self.view.frame.offsetBy(dx: 0, dy: CGFloat(movement))
        UIView.commitAnimations()
        
    }
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
*/
