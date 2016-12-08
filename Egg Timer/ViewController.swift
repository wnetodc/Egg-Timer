//
//  ViewController.swift
//  Egg Timer
//
//  Created by wellington neto on 30/11/16.
//  Copyright © 2016 wneto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var remaining = 210

   
    @IBOutlet var labelTime: UILabel!
    
    // funcao contagem do tempo
    func prossedTime(){
        
        if remaining > 0 {
            
            remaining -= 1
            
            labelTime.text = String(remaining)
        
        }else{
            
            timer.invalidate()
            
            labelTime.text = "Egg Boiled"
        }
        
    }
    
    // pausar contagem
    @IBAction func pauseButton(_ sender: Any) {

        timer.invalidate()
    }
    
    // iniciar contagem
    @IBAction func playButton(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(prossedTime), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func addTimeButton(_ sender: Any) {

            remaining += 10
        
    }
    
    @IBAction func subTimeButton(_ sender: Any) {
        
        if remaining - 10 > 0 {
            remaining -= 10
        }
    }
    
    @IBAction func resetTimeButton(_ sender: Any) {
        
        remaining = 210
        
        labelTime.text = String(remaining)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

