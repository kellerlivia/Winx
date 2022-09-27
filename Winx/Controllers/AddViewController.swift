//
//  AddViewController.swift
//  Winx
//
//  Created by Livia Carvalho Keller on 27/09/22.
//

import UIKit

class AddViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var powerLabel: UILabel!
    @IBOutlet weak var warningLabel: UILabel!
    @IBOutlet weak var colorSlider: UISlider!
    @IBOutlet weak var colorBox: UIView!
    
    
    var colorsArray : Array<UIColor>!
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        warningLabel.isHidden = true
    }
}
