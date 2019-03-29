//
//  CatFormViewController.swift
//  Miawouf
//
//  Created by XenoX on 24/03/2019.
//  Copyright © 2019 XenoX. All rights reserved.
//

import UIKit

class CatFormViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var genderSegmentedControl: UISegmentedControl!
    @IBOutlet weak var majoritySwitch: UISwitch!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var racePickerView: UIPickerView!

    var cat: Pet!
}

extension CatFormViewController {
    @IBAction func validate() {
        createPetObject()
        checkPetStatus()
    }

    private func createPetObject() {
        let gender: Pet.Gender = genderSegmentedControl.selectedSegmentIndex == 0 ? .male : .female
        let race = catRaces[racePickerView.selectedRow(inComponent: 0)]
        let hasMajority = majoritySwitch.isOn
        let phone = phoneTextField.text
        let name = nameTextField.text

        cat = Pet(name: name, hasMajority: hasMajority, phone: phone, race: race, gender: gender)
    }

    private func checkPetStatus() {
        switch cat.status {
        case .accepted:
            performSegue(withIdentifier: "segueToCatSuccess", sender: nil)
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

extension CatFormViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return catRaces.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return catRaces[row]
    }
}

extension CatFormViewController: UITextFieldDelegate {
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        nameTextField.resignFirstResponder()
        phoneTextField.resignFirstResponder()
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

extension CatFormViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "segueToCatSuccess" else {
            return
        }

        let successVC = segue.destination as! CatSuccessViewController
        successVC.cat = cat
    }
}
