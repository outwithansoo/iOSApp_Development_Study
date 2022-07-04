//
//  CodePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by 박한수 on 2022/07/04.
//

import UIKit

protocol SendDataDelegate: AnyObject {
    func sendData(name: String)
}

class CodePresentViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    weak var delegate: SendDataDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()

        }
    }
    @IBAction func tabBackButton(_ sender: UIButton) {
        self.delegate?.sendData(name: "Hansoo")
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
