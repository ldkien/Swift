//
//  ViewController.swift
//  NSTimer
//
//  Created by Le Doan Kien on 8/16/17.
//  Copyright © 2017 ldkien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer=Timer()
    @IBAction func Start(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.Dem), userInfo: nil, repeats: true)
    }
    
    func Dem() {
        var n:Int = Int(lblTime.text!)!
        n=n+1
        lblTime.text=String(n)
    }
    
    @IBAction func Stop(_ sender: Any) {
        timer.invalidate()
    }
    @IBOutlet weak var lblTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

