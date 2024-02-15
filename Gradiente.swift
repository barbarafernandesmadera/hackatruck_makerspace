//
//  Gradiente.swift
//  Tela_inicial
//
//  Created by Student21 on 27/03/23.
//


import Foundation
import UIKit

extension UIView{
    func grandientBackground(colorOne: UIColor,colorTwo: UIColor){
        
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.frame = bounds
        gradientLayer.colors = [colorOne.cgColor,colorTwo.cgColor]
        //gradientLayer.locations = [0.4,1.0]
        gradientLayer.locations = [3.0,0.01]
        gradientLayer.startPoint = CGPoint(x:0.05, y: 0.0)
        //gradientLayer.startPoint = CGPoint(x:0.5, y: 0.0)
        
        layer.insertSublayer(gradientLayer, at: 0)
    }
}
