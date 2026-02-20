//
//  ViewController.swift
//  CounterApp
//
//  Created by Manyuchi, Carrington C on 2026/02/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var canvas: UIView!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var changeCounterButton: UIButton!
    
    var currentNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeCounterButtonTapped(_ sender: UIButton) {
        currentNumber += 1
        numberLabel.text = "\(currentNumber)"
        if currentNumber > 10 && currentNumber < 20 {
            canvas.backgroundColor = .red
        }
        if currentNumber > 20 && currentNumber < 30{
            canvas.backgroundColor = .blue
        }
        if currentNumber > 30{
            canvas.backgroundColor = .white
            currentNumber  = 0
        }
    }
    
    
    
}

