//
//  AddViewController.swift
//  Winx
//
//  Created by Livia Carvalho Keller on 27/09/22.
//

import UIKit

class AddViewController: ViewController, UITextFieldDelegate {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var powerLabel: UILabel!
    @IBOutlet weak var warningLabel: UILabel!
    @IBOutlet weak var colorSlider: UISlider!
    @IBOutlet weak var colorBox: UIView!
    
    var colorsArray : Array<UIColor>!
    var selctedType: String!
    var newFairyDict = Dictionary <String, Any>()
    
    func populateColors () {
        colorsArray = [
            UIColor.black,
            UIColor.red,
            UIColor.blue,
            UIColor.green,
            UIColor.purple,
            UIColor.brown,
            UIColor.darkGray,
            UIColor.lightGray,
            UIColor.yellow
        ]
        
        colorSlider.minimumValue = 0
        colorSlider.maximumValue = Float(colorsArray.count - 1)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        newFairyDict["nameKey"] = textField.text!
        textField.resignFirstResponder()
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextField.delegate = self
        warningLabel.isHidden = true
        populateColors()
    }
    
    @IBAction func changeColor(_ sender: UISlider) {
        let ind : Int = Int (roundf(colorSlider.value))
        colorBox.backgroundColor = colorsArray[ind]
        newFairyDict["colorKey"] = colorsArray[ind].name
    }
    
    @IBAction func changeNumber(_ sender: UIStepper) {
        newFairyDict["powerKey"] = Int(sender.value)
        powerLabel.text = "\(newFairyDict["powerKey"]!)"

    }
    
    @IBAction func changeStatus(_ sender: UISegmentedControl) {
        let selInd = sender.selectedSegmentIndex
        newFairyDict["statusKey"] = "\(WinxState(rawValue: selInd)!)"
    }
    
    @IBAction func changeType(_ sender: UISegmentedControl) {
        let selInd = sender.selectedSegmentIndex
        
        switch selInd {
        case 0:
            selctedType = "Fairies"
        case 1:
            selctedType = "Pixies"
        default:
            break
        }
    }
    
    func validate() -> Bool {
        if (newFairyDict.values.count < 3 || selctedType == nil) {
            warningLabel.isHidden = false
            warningLabel.text = "All fields are mandatory"
            return false
        } else {
            warningLabel.isHidden = true
            return true
        }
    }
    
    func update() {
        if validate() == true {
            if selctedType == "Fairies" {
                var newFairy: Winx!
                newFairy = Fairies (inpDict: newFairyDict)
                if let fairy = newFairy {
                    AllFairies.allArray.append(fairy)
                }
                
            } else if selctedType == "Pixies" {
                var newPixie: Pixies!
                newPixie = Pixies(inpDict: newFairyDict)
                if let pixie = newPixie {
                    AllFairies.allArray.append(pixie)
                }
            }
            
            
            self.dismiss(animated: true, completion: nil)
            
            
        }
    }
    
    @IBAction func addButtonAction(_ sender: UIButton) {
        update()
        
    }
}
