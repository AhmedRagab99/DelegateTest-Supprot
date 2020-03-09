//
//  ViewController.swift
//  passdata
//
//  Created by Ahmed Ragab on 3/9/20.
//  Copyright © 2020 Ahmed Ragab. All rights reserved.
//

import UIKit

class ViewController: UIViewController,MyDataSendToFirstVC {
    

    @IBOutlet weak var receivedDataLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func sendDataToFirstVC(data: String) {
        receivedDataLabel.text = data
    }

    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if  segue.identifier == "getdata" {
            var secondScreen = segue.destination as! SecondVC
            secondScreen.delegate = self
        }
    }


}

