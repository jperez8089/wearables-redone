//
//  InterfaceController.swift
//  clickerWatchApp WatchKit Extension
//
//  Created by Javier Perez on 7/19/21.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    var clicker: Int = 0
    
    @IBOutlet weak var reps: WKInterfaceLabel!
    
    @IBOutlet weak var timer: WKInterfaceTimer!
    
    
    
    

    override func awake(withContext context: Any?) {
        // Configure interface objects here.
    }
    @IBAction func clickerTap() {
        
    clicker = clicker + 1
        reps.setText("Repetitions: \(clicker)")
        
       
        timer.start()
        
        
        
    }
    @IBAction func endTimer() {
        
        
        timer.stop()
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        
       
        
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
    }

}
