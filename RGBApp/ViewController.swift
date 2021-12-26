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
        mainView.layer.cornerRadius = 20
        redSlider.minimumTrackTintColor = .red
        redSlider.thumbTintColor = .systemGray4
        greenSlider.minimumTrackTintColor = .green
        greenSlider.thumbTintColor = .systemGray4
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.thumbTintColor = .systemGray4
        // Do any additional setup after loading the view.
    }
    func colorView() {
        mainView.backgroundColor = UIColor(red: CGFloat(Int(redSlider.value))/255, green: CGFloat(Int(greenSlider.value))/255, blue: CGFloat(Int(blueSlider.value))/255, alpha: 1)
    }

    @IBAction func redSliderActivation() {
        redNumber.text = String(Int(redSlider.value))
        colorView()
    }
    @IBAction func greenSliderActivation() {
        greenNumber.text = String(Int(greenSlider.value))
        colorView()
    }
    @IBAction func blueSliderActivation() {
        blueNumber.text = String(Int(blueSlider.value))
        colorView()
    }
}

