//
//  IDatePicker.swift
//  IPicker
//
//  Created by Yousef on 4/9/20.
//  Copyright © 2020 Yousef. All rights reserved.
//

import UIKit

public class IDatePicker: IPickerView {
    
    private let datePicker = UIDatePicker()
    
    public var pickerMode: UIDatePicker.Mode = .date
    
    private var doneBtnDidTapped: ((Date)-> Void)?
    private var newValueTapped: ((Date)-> Void)?

    private var didCancelled: (()-> Void)?
    
    public var seletorColor: UIColor = .lightGray
    public var fontColor: UIColor = .black
    
    public var selectedDate: Date?
    public var minimumDate: Date?
    public var maximumDate: Date?
    
    override func setupView(parent: UIView) {
        super.setupView(parent: parent)
        
        guard isFirstAppear else {return}
        setupDatePicker()
        
    }
    
    public func onDoneBtnTapped(_ completion: @escaping (Date)-> Void) {
        self.doneBtnDidTapped = completion
    }
    
    public func onValueChcnged(_ completion: @escaping (Date)-> Void) {
           self.newValueTapped = completion
       }
    
    public func onCancelled(_ completion: @escaping ()-> Void) {
        self.didCancelled = completion
    }
    
    private func setupDatePicker() {
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        pickerContainerView.addSubview(datePicker)
        
//        datePicker.centerXAnchor.constraint(equalTo: pickerContainerView.centerXAnchor).isActive = true
//        datePicker.centerYAnchor.constraint(equalTo: pickerContainerView.centerYAnchor).isActive = true
        
        datePicker.constraintCenterX(to: pickerContainerView.centerXAnchor, constant: 0)
        datePicker.constraintCenterY(to: pickerContainerView.centerYAnchor, constant: 0)
        
        datePicker.subviews[0].subviews[1].backgroundColor = seletorColor
        datePicker.subviews[0].subviews[2].backgroundColor = seletorColor
        datePicker.setValue(fontColor, forKeyPath: "textColor")
        
        datePicker.addTarget(self, action: #selector(valuechangednew), for: .valueChanged)
    }
    
    override public func show(inView view: UIView) {
        super.show(inView: view)
        
        datePicker.datePickerMode = pickerMode
        datePicker.date = selectedDate ?? Date()
        datePicker.minimumDate = minimumDate
        datePicker.maximumDate = maximumDate
        
    }
    
    @objc func valuechangednew(){
        selectedDate = datePicker.date
           newValueTapped?(selectedDate!)
    }
    
    override func doneBtnTapped() {
        super.doneBtnTapped()
        selectedDate = datePicker.date
        doneBtnDidTapped?(selectedDate!)
    }
    
    override func upperViewTapped() {
        super.upperViewTapped()
        datePicker.date = selectedDate ?? Date()
        didCancelled?()
    }
    
}
