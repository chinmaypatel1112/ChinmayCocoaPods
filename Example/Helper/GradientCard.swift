//
//  GradientCard.swift
//  Laytrip
//
//  Created by AJAY MISHRA on 17/08/20.
//  Copyright © 2020 AJAY MISHRA. All rights reserved.
//
import UIKit

class GradientCard : UIView {
    var shadowView : UIView = UIView()
    var cardView : UIView = UIView()
    var gradientLayer : CAGradientLayer = CAGradientLayer()
    
    
     var shadowOpacity1: Float = 0.0 {
        didSet {
           shadowView.layer.shadowOpacity = shadowOpacity1
        }
    }
        
     var shadowRadius1 : CGFloat = 0.0 {
        didSet {
            shadowView.layer.shadowRadius = shadowRadius1
        }
    }
        
     var shadowColor1 : UIColor? {
        didSet {
            shadowView.layer.shadowColor = shadowColor1?.cgColor
        }
    }
        
     var shadowOffset1 : CGSize = .zero {
        didSet {
            shadowView.layer.shadowOffset = shadowOffset1
        }
    }
        
     var cornerRadius1 : CGFloat = 0.0 {
        didSet {
            cardView.layer.cornerRadius = cornerRadius1
            shadowView.layer.cornerRadius = cornerRadius1
        }
    }
    var startPoints : CGPoint = CGPoint(x: 0.0, y: 0.0) {
        didSet {
            gradientLayer.startPoint = startPoints
        }
    }
    var endPoints : CGPoint = CGPoint(x: 1.0, y: 1.0) {
        didSet {
            gradientLayer.endPoint = endPoints
        }
    }
//    var gradientLocations : [NSNumber] = [0,1] {
//        didSet {
//            gradientLayer.locations = gradientLocations
//        }
//    }
       
     
    var gradientColors : [UIColor] = [UIColor.white] {
        didSet {
            var cgColors : [CGColor] = []
            //get cgColor from each
            for color in gradientColors {
                cgColors.append(color.cgColor)
            }
            gradientLayer.colors = cgColors
        }
    }
    
    func setup() {
        self.addSubview(shadowView)
        shadowView.translatesAutoresizingMaskIntoConstraints = false
        shadowView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        shadowView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        shadowView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        shadowView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        shadowView.backgroundColor = UIColor.white
            
        self.addSubview(cardView)
        cardView.translatesAutoresizingMaskIntoConstraints = false
        cardView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        cardView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        cardView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        cardView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        cardView.backgroundColor = UIColor.white
            
        self.sendSubviewToBack(cardView)
        self.sendSubviewToBack(shadowView)
            
        cardView.clipsToBounds = true
        cardView.layer.insertSublayer(gradientLayer, at: 0)
            
        self.backgroundColor = UIColor.clear
    }
        
    override init(frame: CGRect) {
        super.init(frame: frame)
            
        setup()
            
    }
        
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
            
        setup()
            
    }
        
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        gradientLayer.frame = cardView.bounds
//        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.7)
//        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.7)
//        gradientLayer.locations = [0, 1]
    }
    
}
