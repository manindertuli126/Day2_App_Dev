//
//  ViewController.swift
//  Day2_App_Dev
//
//  Created by MacStudent on 2019-03-05.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var switchPosition: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onOffSwitch(_ sender: UISwitch)
    {
        if sender.isOn {
            self.switchPosition.text = "ON"
        }else{
            self.switchPosition.text = "OFF"
        }
    }
    
    @IBAction func showAlert2(_ sender: UIButton) {
        let alert = UIAlertController(title: "Alert", message: "How are you ??", preferredStyle: .actionSheet)
        let action1 = UIAlertAction(title: "Good", style: .default, handler: nil)
        let action3 = UIAlertAction(title: "Bad", style: .destructive, handler: nil)
        let action2 = UIAlertAction(title: "Fine", style: .cancel, handler: {(action:UIAlertAction)in print("Why?")})
        alert.addAction(action1)
        alert.addAction(action2)
        alert.addAction(action3)
        self.present(alert, animated: true)
    }
    @IBAction func showAlertBtn(_ sender: UIButton) {
        let alert = UIAlertController(title: "Alert", message: "How are you ??", preferredStyle: .alert)
        let action1 = UIAlertAction(title: "Good", style: .default, handler: nil)
        let action3 = UIAlertAction(title: "Bad", style: .destructive, handler: nil)
        let action2 = UIAlertAction(title: "Fine", style: .cancel, handler: {(action:UIAlertAction)in print("Why?")})
        alert.addAction(action1)
        alert.addAction(action2)
        alert.addAction(action3)
        self.present(alert, animated: true)
    }
}

