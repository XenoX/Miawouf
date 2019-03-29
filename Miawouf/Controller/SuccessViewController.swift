//
//  SuccessViewController.swift
//  Miawouf
//
//  Created by XenoX on 24/03/2019.
//  Copyright © 2019 XenoX. All rights reserved.
//

import UIKit

class SuccessViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!

    var dog: Pet!

    @IBAction func swipeDownDismiss(_ sender: UISwipeGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setWelcomeLabel()
    }

    private func setWelcomeLabel() {
        guard let name = dog.name else {
            return
        }

        welcomeLabel.text = """
            Wouf de bienvenue à \(name) !

            Vous avez bien été ajouté à notre base de données ! Nous vous enverrons un SMS dès que nous avons une âme soeur à vous proposer !
        """
    }
}
