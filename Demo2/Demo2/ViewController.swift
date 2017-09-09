//
//  ViewController.swift
//  Demo2
//
//  Created by Le Doan Kien on 8/19/17.
//  Copyright © 2017 ldkien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgHinh: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let url:URL = URL(string: "http://images.all-free-download.com/images/graphiclarge/blurred_golden_background_192849.jpg")!
        do{
            let data:Data = try Data(contentsOf: url)
            imgHinh.image = UIImage(data: data)
        }catch{
            print("Error")
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

