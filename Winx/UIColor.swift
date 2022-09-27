//
//  UIColor.swift
//  Winx
//
//  Created by Livia Carvalho Keller on 27/09/22.
//

import Foundation
import UIKit

extension UIColor
{
    var name: String?
    {
        switch self {
        case UIColor.black: return "black"
        case UIColor.red: return "red"
        case UIColor.blue: return "blue"
        case UIColor.green: return "green"
        case UIColor.purple: return "purple"
        case UIColor.brown: return "brown"
        case UIColor.darkGray: return "darkGray"
        case UIColor.lightGray: return "lightGray"
        case UIColor.yellow: return "yellow"
        default: return nil
            
        }
    }
}

