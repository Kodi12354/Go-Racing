//
//  ViewController.swift
//  GoRacing
//
//  Created by Гость on 26.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var pcCar: UIImageView!
    @IBOutlet weak var userCar: UIImageView!
    @IBOutlet weak var resultLable: UILabel!
    @IBOutlet weak var lineFinish: UIImageView!
    
    var stateSemafor: Int = 1
    var timerGame: Timer!
    var timerPc: Timer!
    
    @objc func pcDrive() {
        if stateSemafor == 2 {
            pcCar.center.x += 10
        }
        if pcCar.center.x > lineFinish.center.x {
            resultLable.isHighlighted = false
            resultLable.text = "YOU LOSE!"
            resultLable.textColor = .red
            timerPc.invalidate()
            timerGame.invalidate()
        }
        @objc func intrevalTimer() {
            stateSemafor += 1
            if stateSemafor > 2 {
            }
        switch stateSemafor {
            case 1 :
                semaforLabel.txt = "STOP"
                semaforLabel.textColor = .red
                
            }
                
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }


}

