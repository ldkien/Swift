//
//  ViewController.swift
//  MultipleScreen
//
//  Created by Le Doan Kien on 8/27/17.
//  Copyright © 2017 ldkien. All rights reserved.
//

import UIKit
var chuoi:String="";

class ViewController: UIViewController {

    var duLieu:UserDefaults = UserDefaults()
    @IBAction func Chuyen(_ sender: Any) {
        chuoi = "Kien"
        duLieu.set("Mit", forKey: "dl")
        let screen = storyboard?.instantiateViewController(withIdentifier: "MH") as! ViewController2
        screen.data = "haha"
        present(screen, animated: true, completion: nil)
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

