//
//  ViewController.swift
//  Calculator
//
//  Created by Damiaan on 19-10-16.
//  Copyright © 2016 Damiaan Dufaux. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var firstField: UITextField!
	@IBOutlet weak var operatorSwitch: UISegmentedControl!
	@IBOutlet weak var secondField: UITextField!
	@IBOutlet weak var resultLabel: UILabel!
	
	@IBAction func calculate(_ sender: AnyObject) {
		if let a = Int(firstField.text!), let b = Int(secondField.text!) {
			switch operatorSwitch.selectedSegmentIndex {
			case 0:
				resultLabel.text = "\(a+b)"
			case 1:
				resultLabel.text = "\(a-b)"
			default:
				print("unknown operator selected")
			}
		}
	}

}

