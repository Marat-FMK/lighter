//
//  ViewController.swift
//  lighter
//
//  Created by Marat_FMK on 31.05.2022.
//

import UIKit
enum Currentight { case red, yellow, green}
class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    
    @IBOutlet var yellowView: UIView!
    
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var currentlight = Currentight.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 10
        redView.alpha = lightIsOff
        yellowView.alpha = lightIsOff
        greenView.alpha = lightIsOff
    }
    
    override func viewWillLayoutSubviews() {
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = redView.frame.width / 2
        greenView.layer.cornerRadius = redView.frame.width / 2
    }
    
        @IBAction func startButtonPassed() {
        if startButton.currentTitle == "START"{
            startButton.setTitle("Next", for: .normal)
    }
    
        switch currentlight {
        case .red:
            greenView.alpha = lightIsOff
            redView.alpha = lightIsOn
            currentlight = .yellow
        case .yellow:
            redView.alpha = lightIsOff
            yellowView.alpha = lightIsOn
            currentlight = .green
        case .green:
            yellowView.alpha = lightIsOff
            greenView.alpha = lightIsOn
            currentlight = .red
        }
}
}

