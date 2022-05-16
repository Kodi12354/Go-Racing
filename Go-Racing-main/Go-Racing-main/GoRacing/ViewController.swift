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
    var semaforLabel: UILabel!
    var intervalTimer: Timer!
    
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
                semaforLabel.text = "STOP"
            semaforLabel.textColor = .red
            case 2 :
                semaforLabel.text = "GO"
            semaforLabel.textColor = .green
            default:
                break
        }
        @IBAction func startGame(_ sender: UIButton) {
            semaforLabel.isHidden = false
            
            timerGame = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(intrevalTimer), userInfo: nil, repeats: true)
            timerPc = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(pcDrive), userInfo: nil, repeats: true)
            }
          
        @IBAction  func driveGame(_ sender: UIButton) {
            if stateSemafor == 2 {
                userCar.center.x += 10
            } else if stateSemafor == 1 {
                userCar.center.x -= 10
            }
            if userCar.center.x > lineFinish.center.x {
                resultLable.isHidden = false
                resultLable.text = "YOU WIN"
                resultLable.textColor = .green
                timerPc.invalidate()
            }
            
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }


}

