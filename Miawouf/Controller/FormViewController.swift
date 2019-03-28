//
//  FormViewController.swift
//  Miawouf
//
//  Created by XenoX on 24/03/2019.
//  Copyright © 2019 XenoX. All rights reserved.
//

import UIKit

class FormViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var genderSegmentedControl: UISegmentedControl!
    @IBOutlet weak var majoritySwitch: UISwitch!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var racePickerView: UIPickerView!

    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        phoneTextField.resignFirstResponder()
        nameTextField.resignFirstResponder()
    }

    @IBAction func validate() {
        _ = createPetObject()
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dogRaces.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dogRaces[row]
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    private func createPetObject() -> Pet {
        let name = nameTextField.text
        let phone = phoneTextField.text
        let hasMajority = majoritySwitch.isOn
        let gender: Pet.Gender = genderSegmentedControl.selectedSegmentIndex == 0 ? .male : .female
        let race = dogRaces[racePickerView.selectedRow(inComponent: 0)]

        return Pet(name: name, hasMajority: hasMajority, phone: phone, race: race, gender: gender)
    }
}
