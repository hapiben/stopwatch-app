//
//  ViewController.swift
//  Stopwatch
//
//  Created by Benedict Aluan on 6/12/14.
//  Copyright (c) 2014 Pencil Rocket. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var time: UILabel!
    var timer = NSTimer()
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func result() {
        count++
        time.text = String(count)
    }

    @IBAction func reset(sender: AnyObject) {
        timer.invalidate()
        count = 0
        time.text = "0"
    }
    
    @IBAction func play(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
    }
    
    @IBAction func pause(sender: AnyObject) {
        timer.invalidate()
    }
}

