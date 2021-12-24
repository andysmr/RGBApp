//
//  ViewController.swift
//  RGBApp
//
//  Created by Андрей Трушкин on 24.12.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var mainView: UIView!
    @IBOutlet var redNumber: UILabel!
    @IBOutlet var greenNumber: UILabel!
    @IBOutlet var blueNumber: UILabel!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.backgroundColor = UIColor(red: 100/255, green: 200/255, blue: 50/255, alpha: 1)
        // Do any additional setup after loading the view.
    }

    @IBAction func redSliderActivation() {
        redNumber.text = String(Int(redSlider.value))
        mainView.backgroundColor = UIColor(red: CGFloat(Int(redSlider.value))/255, green: CGFloat(Int(greenSlider.value))/255, blue: CGFloat(Int(blueSlider.value))/255, alpha: 1)
    }
    @IBAction func greenSliderActivation() {
        greenNumber.text = String(Int(greenSlider.value))
        mainView.backgroundColor = UIColor(red: CGFloat(Int(redSlider.value))/255, green: CGFloat(Int(greenSlider.value))/255, blue: CGFloat(Int(blueSlider.value))/255, alpha: 1)
    }
    @IBAction func blueSliderActivation() {
        blueNumber.text = String(Int(blueSlider.value))
        mainView.backgroundColor = UIColor(red: CGFloat(Int(redSlider.value))/255, green: CGFloat(Int(greenSlider.value))/255, blue: CGFloat(Int(blueSlider.value))/255, alpha: 1)
    }
}

