//
//  ViewController.swift
//  ColorMix
//
//  Created by Kevin Wang on 2/12/18.
//  Copyright © 2018 KevinWang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateColor()
        //“The view you see in the storyboard doesn’t change color, because the code isn’t run until the ​ app is run.”
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var colorView: UIView!
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        if sender.isOn {
            updateColor()
        } /*else {
            updateColor()
        }*/
    }
    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    
    func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        if redSwitch.isOn {
            red = CGFloat(redSlider.value)
        }
        if greenSwitch.isOn {
            green = CGFloat(greenSlider.value)
        }
        if blueSwitch.isOn {
            blue = CGFloat(blueSlider.value)
        }
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = color
    }
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBAction func sliderChanged(_ sender: UISlider) {
        updateColor()
    }
    
    @IBAction func reset(_ sender: AnyObject) {
        redSwitch.isOn = false
        redSlider.value = 1
        greenSwitch.isOn = false
        greenSlider.value = 1
        blueSwitch.isOn = false
        blueSlider.value = 1
        
        updateColor()
    }
    
}

