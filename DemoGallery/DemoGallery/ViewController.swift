//
//  ViewController.swift
//  DemoGallery
//
//  Created by Le Doan Kien on 8/19/17.
//  Copyright © 2017 ldkien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var arrHinh:Array<String> = ["if__google_talk_2007010-1","if_39_Email_Marketing_1688837-1","if_Instagram_UI-16_2315583-1","if_JD-18_2246839-1"]
    @IBOutlet weak var imgHinh: UIImageView!
    var index:Int = 1;
    
    @IBAction func Previous(_ sender: Any) {
        index=index-1;
        if index<0 {
            index=arrHinh.count-1
        }
        imgHinh.image = UIImage(named: arrHinh[index])
        let alert:UIAlertController = UIAlertController(title: "Thong bao", message: "Xin chao", preferredStyle: UIAlertControllerStyle.alert)
        let btnOk:UIAlertAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel) { (btn) in
            print("Hello")
        }
        let btnHello:UIAlertAction = UIAlertAction(title: "Dang ky", style: UIAlertActionStyle.default) { (btnDangKy) in
            let email:String = alert.textFields![0].text!
            let pass:String = alert.textFields![1].text!
            print(email + pass)
            print(pass)
        }

        alert.addTextField { (txtEmail) in
            txtEmail.placeholder = "Nhap email cua ban"
        }
        alert.addTextField { (txtPass) in
            txtPass.isSecureTextEntry = true
        }
        alert.addAction(btnOk)
        alert.addAction(btnHello)
        present(alert, animated: true, completion: nil)
    }
    @IBAction func Next(_ sender: Any) {
        index = index + 1
        if index>=arrHinh.count{
            index=0;
        }
        imgHinh.image = UIImage(named: arrHinh[index])
        let action:UIAlertController = UIAlertController(title: "Thong bao", message: "Day la thong bao", preferredStyle: UIAlertControllerStyle.actionSheet)
        let btnOk:UIAlertAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel) { (btn) in
            print("action")
        }
        
        action.addAction(btnOk)
        present(action, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        imgHinh.image = UIImage(named: arrHinh[0])
        Timer.scheduledTimer(withTimeInterval: 3, repeats: false) { (time) in
            print("Hello")
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

