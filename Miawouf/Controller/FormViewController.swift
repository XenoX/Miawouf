//
//  FormViewController.swift
//  Miawouf
//
//  Created by XenoX on 24/03/2019.
//  Copyright © 2019 XenoX. All rights reserved.
//

import UIKit

class FormViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var genderSegmentedControl: UISegmentedControl!
    @IBOutlet weak var majoritySwitch: UISwitch!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var racePickerView: UIPickerView!

    var dog: Pet!
}

extension FormViewController {
    @IBAction func validate() {
        createPetObject()
        checkPetStatus()
    }

    private func createPetObject() {
        let name = nameTextField.text
        let phone = phoneTextField.text
        let hasMajority = majoritySwitch.isOn
        let gender: Pet.Gender = genderSegmentedControl.selectedSegmentIndex == 0 ? .male : .female
        let race = dogRaces[racePickerView.selectedRow(inComponent: 0)]

        dog = Pet(name: name, hasMajority: hasMajority, phone: phone, race: race, gender: gender)
    }

    private func checkPetStatus() {
        switch dog.status {
        case .accepted:
            performSegue(withIdentifier: "segueToSuccess", sender: nil)
        case .rejected(let error):
            presentAlert(with: error)
        }
    }

    private func presentAlert(with error: String) {
        let alert = UIAlertController(title: "Error", message: error, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)

        alert.addAction(action)

        present(alert, animated: true, completion: nil)
    }
}

extension FormViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dogRaces.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dogRaces[row]
    }
}

extension FormViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        phoneTextField.resignFirstResponder()
        nameTextField.resignFirstResponder()
    }
}

extension FormViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "segueToSuccess" else {
            return
        }

        let successVC = segue.destination as! SuccessViewController
        successVC.dog = dog
    }

}
