//
//  ViewController2.swift
//  MultipleScreen
//
//  Created by Le Doan Kien on 8/27/17.
//  Copyright © 2017 ldkien. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    var data:String!
    let bienDB:UserDefaults = UserDefaults()
    @IBOutlet weak var hienThi: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let aa:String = bienDB.object(forKey: "dl") as! String
        hienThi.text = aa

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
