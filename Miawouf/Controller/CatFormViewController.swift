//
//  CatFormViewController.swift
//  Miawouf
//
//  Created by XenoX on 24/03/2019.
//  Copyright © 2019 XenoX. All rights reserved.
//

import UIKit

class CatFormViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var genderSegmentedControl: UISegmentedControl!
    @IBOutlet weak var majoritySwitch: UISwitch!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var racePickerView: UIPickerView!

    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        nameTextField.resignFirstResponder()
        phoneTextField.resignFirstResponder()
    }

    @IBAction func validate() {
        _ = createPetObject()
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return catRaces.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return catRaces[row]
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    private func createPetObject() -> Pet {
        let gender: Pet.Gender = genderSegmentedControl.selectedSegmentIndex == 0 ? .male : .female
        let race = catRaces[racePickerView.selectedRow(inComponent: 0)]
        let hasMajority = majoritySwitch.isOn
        let phone = phoneTextField.text
        let name = nameTextField.text

        return Pet(name: name, hasMajority: hasMajority, phone: phone, race: race, gender: gender)
    }
}
