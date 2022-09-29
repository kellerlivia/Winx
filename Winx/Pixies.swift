//
//  Pixies.swift
//  Winx
//
//  Created by Livia Carvalho Keller on 27/09/22.
//

import UIKit

class Pixies: Winx {
    var curPower : Int = 0
    
    
    convenience init? (inpDict: Dictionary <String, Any>) {
        guard let name = inpDict ["nameKey"] as? String,
              let power = inpDict ["powerKey"] as? Int,
              let colorStr = inpDict ["colorKey"] as? String,
              let statusStr = inpDict ["statusKey"] as? String
        else {
            return nil
        }
        
        
        var status = WinxState.newbie
        for anyCase in WinxState.allCases {
            if (statusStr == "\(anyCase)") {
                status = anyCase
            }
        }
        
        
        self.init(inpName: name,
                  inpPower: power,
                  inpColor: colorStr.colors!,
                  inpStatus: status)
    }
}


//MARK: - String + Colored

extension String {
    var colors: UIColor? {
        
        switch self {
        case "black": return UIColor.black
        case "red": return UIColor.red
        case "blue": return UIColor.blue
        case "green": return UIColor.green
        case "purple": return UIColor.purple
        case "brown": return UIColor.brown
        case "darkGray": return UIColor.darkGray
        case "lightGray": return UIColor.lightGray
        case "yellow": return UIColor.yellow
        default: return nil
            
        }
    }
}

