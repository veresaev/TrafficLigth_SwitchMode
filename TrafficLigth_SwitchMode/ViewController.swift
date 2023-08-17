//
//  ViewController.swift
//  TrafficLigth_SwitchMode
//
//  Created by Sergey Veresaev on 18.8.23..
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var button: UIButton!
    
    let Off: CGFloat = 0.3
    let On: CGFloat = 1
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.alpha = Off
        yellowLight.alpha = Off
        greenLight.alpha = Off
        
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
        button.layer.cornerRadius = button.frame.height / 2
        
        button.setTitle("START", for: .normal)
    }
    
    @IBAction func buttonAction() {
        button.setTitle("NEXT", for: .normal)
        
        switch count {
        case 0:
            redLight.alpha = On
            yellowLight.alpha = Off
            greenLight.alpha = Off
            count = 1
        case 1:
            redLight.alpha = Off
            yellowLight.alpha = On
            greenLight.alpha = Off
            count = 2
        case 2:
            redLight.alpha = Off
            yellowLight.alpha = Off
            greenLight.alpha = On
            count = 0
        default: break
        }
    }
    
}

