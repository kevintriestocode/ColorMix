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
        sliderColors()
        colorView.layer.borderWidth = 5
        colorView.layer.cornerRadius = 20
        colorView.layer.borderColor = UIColor.black.cgColor
        
        updateControls()
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
        } else {
            updateColor()
        }
        updateControls()
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
        } else {
            red = 0
        }
        if greenSwitch.isOn {
            green = CGFloat(greenSlider.value)
        } else {
            green = 0
        }
        if blueSwitch.isOn {
            blue = CGFloat(blueSlider.value)
        } else {
            blue = 0
        }
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = color
    }
    
    func sliderColors() {
        //var red: CGFloat = 0
        //var green: CGFloat = 0
        //var blue: CGFloat = 0
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        let redSliderColor = UIColor(red: red, green: 0, blue: 0, alpha: 1)
        let greenSliderColor = UIColor(red: 0, green: green, blue: 0, alpha: 1)
        let blueSlidercolor = UIColor(red: 0, green: 0, blue: blue, alpha: 1)
        redSlider.minimumTrackTintColor = redSliderColor
        greenSlider.minimumTrackTintColor = greenSliderColor
        blueSlider.minimumTrackTintColor = blueSlidercolor
    }

    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        sliderColors()
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
        sliderColors()
        updateControls()
    }
    
    func updateControls() {
        redSlider.isEnabled = redSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
    }
    
}

