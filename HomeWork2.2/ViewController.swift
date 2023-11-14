//
//  ViewController.swift
//  HomeWork2.2
//
//  Created by Paul Makey on 9.11.23.
//

import UIKit

// 1. IBOutlets
// 2. Properties
// 3. Life Cycle
// 4. Methods
// 5. Action

final class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    // MARK: - Propertires
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    private var currentLight = CurrentLight.green
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
        
        redView.alpha = lightIsOff
        yellowView.alpha = lightIsOff
        greenView.alpha = lightIsOff
    }
    
    // MARK: - IBAction
    @IBAction func buttonAction(_ sender: UIButton) {
        
        if sender.titleLabel?.text == "Start" {
            sender.setTitle("Next", for: .normal)
        }
        
        switch currentLight {
            case .red:
                redView.alpha = lightIsOff
                yellowView.alpha = lightIsOn
                currentLight = .yellow
            case .yellow:
                yellowView.alpha = lightIsOff
                greenView.alpha = lightIsOn
                currentLight = .green
            case .green:
                greenView.alpha = lightIsOff
                redView.alpha = lightIsOn
                currentLight = .red
        }
    }
}
