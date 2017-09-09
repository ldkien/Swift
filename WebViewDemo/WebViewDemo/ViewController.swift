//
//  ViewController.swift
//  WebViewDemo
//
//  Created by Le Doan Kien on 8/25/17.
//  Copyright © 2017 ldkien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wvWeb: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url:URL = URL(string: "http://bongdaplus.vn")!
        let request:URLRequest = URLRequest(url: url)
        wvWeb.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

