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
        colorView.backgroundColor = .black
        //“The view you see in the storyboard doesn’t change color, because the code isn’t run until the ​ app is run.”
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var colorView: UIView!
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        colorView.backgroundColor = .red
    }
}

