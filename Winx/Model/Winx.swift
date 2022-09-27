//
//  Winx.swift
//  Winx
//
//  Created by Livia Carvalho Keller on 27/09/22.
//

import UIKit

class Winx {
    var name: String!
    var power: Int!
    var color: UIColor!
    var status: WinxState
    
    
    init(inpName: String,
         inpPower: Int,
         inpColor: UIColor,
         inpStatus: WinxState) {
        
        self.name = inpName
        self.power = inpPower
        self.color = inpColor
        self.status = inpStatus
    }
}
