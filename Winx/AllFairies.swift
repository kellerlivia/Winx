//
//  AllFairies.swift
//  Winx
//
//  Created by Livia Carvalho Keller on 27/09/22.
//

import Foundation
import UIKit

class AllFairies {
    
    // criando o array
    static var allArray : Array <Winx>!
    
    // classe para popular o array
    class func populateArray () {
        allArray = Array <Winx> ()
        
        let f1 = Fairies (inpName: "Tecna",
                          inpPower: 10,
                          inpColor: UIColor.purple,
                          inpStatus: WinxState.transformed)
        
        let f2 = Fairies (inpName: "Flora",
                          inpPower: 9,
                          inpColor: UIColor.green,
                          inpStatus: WinxState.transforming)
        
        let f3 = Fairies (inpName: "Laila",
                          inpPower: 7,
                          inpColor: UIColor.brown,
                          inpStatus: WinxState.newbie)
        
        let f4 = Pixies (inpName: "Digit",
                         inpPower: 10,
                         inpColor: UIColor.blue,
                         inpStatus: WinxState.transformed)
        
        allArray.append(f1)
        allArray.append(f2)
        allArray.append(f3)
        allArray.append(f4)
    }
}
