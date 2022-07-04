//
//  SuguePresnetViewController.swift
//  ScreenTransitionExample
//
//  Created by 박한수 on 2022/07/03.
//

import UIKit

class SuguePresnetViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func tabBackButton(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    

}
