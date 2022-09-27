//
//  ViewController.swift
//  Winx
//
//  Created by Livia Carvalho Keller on 27/09/22.
//

import UIKit

class ViewController: UIViewController {
    
    var curArray : Array <Winx>!
    @IBOutlet weak var textView: UITextView!
    
    func showString (inpTitle: String, inpArray: Array <Winx>) {
        var toShowString = inpTitle
        toShowString.append("\n")
        
        for eachWinx in inpArray
        {
            toShowString.append("\n\t")
            toShowString.append(eachWinx.name.uppercased())
            toShowString.append("\n\t\t")
            toShowString.append("Color: \(eachWinx.color!.name!)")
            toShowString.append("\n\t\t")
            toShowString.append("Max Gear: \(String(eachWinx.power!))")
            toShowString.append("\n\t\t")
            toShowString.append("Status: \(eachWinx.status)")
            toShowString.append("\n")
        }
        textView.text = toShowString
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        AllFairies.populateArray()
    }
    
    @IBAction func addButton(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "toAddSegueId", sender: nil)
        
    }
}

//MARK: - Type Action

extension ViewController {
    
    @IBAction func typeAction(_ sender: UISegmentedControl) {
        let ind = sender.selectedSegmentIndex
        
        curArray = Array <Winx> ()
        
        switch ind
        {
        case 0:
            for anyFairie in AllFairies.allArray {
                if let thisFairie = anyFairie as? Fairies {
                    curArray.append(thisFairie)
                }
            }
            
            showString(inpTitle: "Fairies", inpArray: curArray)
            
        case 1:
            for anyFairie in AllFairies.allArray {
                if let thisPixie = anyFairie as? Pixies {
                    curArray.append(thisPixie)
                }
            }
            
            showString(inpTitle: "Pixies", inpArray: curArray)
            
        default:
            break
        }
    }
}

//MARK: - Status Action

extension ViewController {
    
    @IBAction func statusAction(_ sender: UISegmentedControl) {
        let ind = sender.selectedSegmentIndex
        
        // inicializando o array
        curArray = Array <Winx> ()
        
        switch ind
        {
        case 0:
            for anyFairie in AllFairies.allArray {
                if (anyFairie.status == WinxState.newbie) {
                    curArray.append(anyFairie)
                }
            }
            
            showString(inpTitle: "Newbie", inpArray: curArray)
            
        case 1:
            for anyFairie in AllFairies.allArray {
                if (anyFairie.status == WinxState.transforming) {
                    curArray.append(anyFairie)
                }
            }
            
            showString(inpTitle: "Transforming", inpArray: curArray)
            
        case 2:
            for anyFairie in AllFairies.allArray {
                if (anyFairie.status == WinxState.transformed) {
                    curArray.append(anyFairie)
                }
            }
            
            showString(inpTitle: "Transformed", inpArray: curArray)
            
        default:
            break
        }
    }
}
