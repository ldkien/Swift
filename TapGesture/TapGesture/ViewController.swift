//
//  ViewController.swift
//  TapGesture
//
//  Created by Le Doan Kien on 8/27/17.
//  Copyright © 2017 ldkien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tapImg: UITapGestureRecognizer!
    @IBOutlet weak var img: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tapImg.numberOfTapsRequired = 2;
        tapImg.numberOfTouchesRequired = 2;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tap_img(_ sender: Any) {
        print("dang tap")
    }
    @IBAction func tap_view(_ sender: Any) {
        let tab:UITapGestureRecognizer = sender as! UITapGestureRecognizer
        let img:UIImageView = UIImageView()
        img.image = #imageLiteral(resourceName: "if__google_talk_2007010")
        img.frame.size = CGSize(width: 50, height: 50)
        img.center = tab.location(in: view)
        view.addSubview(img)
    }

}

