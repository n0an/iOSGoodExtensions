//
//  PickersAccessoryViews.swift
//  ECommerceApp
//
//  Created by Anton Novoselov on 03/12/2017.
//  Copyright © 2017 Anton Novoselov. All rights reserved.
//

import Foundation

// MARK: - UITextFieldDelegate
extension AddPropertyViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.activeField = textField
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.activeField = nil
    }
    
    //    override func becomeFirstResponder() -> Bool {
    //        self.activeField = textField
    //        return true
    //    }
}

// MARK: - UIPickerViewDataSource
extension AddPropertyViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    
    func setupPickers() {
        yearPicker.delegate = self
        propertyTypePicker.delegate = self
        advertisementTypePicker.delegate = self
        datePicker.datePickerMode = .date
        
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let flexibleBarButtonItem = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(self.toolbarDonePressed))
        
        toolbar.setItems([flexibleBarButtonItem, doneButton], animated: true)
        
        // !!!IMPORTANT!!!
        // DatePicker and UIPicker for textFields
        buildYearTextField.inputAccessoryView = toolbar
        buildYearTextField.inputView = yearPicker
        
        availableFromTextField.inputAccessoryView = toolbar
        availableFromTextField.inputView = datePicker
        
        propertyTypeTextField.inputAccessoryView = toolbar
        propertyTypeTextField.inputView = propertyTypePicker
        
        advertisementTypeTextField.inputAccessoryView = toolbar
        advertisementTypeTextField.inputView = advertisementTypePicker
        
    }
    
    @objc func toolbarDonePressed() {
        self.view.endEditing(true)
}

}
