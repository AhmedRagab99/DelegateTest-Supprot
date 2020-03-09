//
//  SecondVC.swift
//  passdata
//
//  Created by Ahmed Ragab on 3/9/20.
//  Copyright © 2020 Ahmed Ragab. All rights reserved.
//

import UIKit
 protocol MyDataSendToFirstVC {
    func sendDataToFirstVC(data:String)
}

class SecondVC: UIViewController {

     @IBOutlet weak var dataToSendTextField: UITextField!
    var delegate:MyDataSendToFirstVC? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
     @IBAction func sendDataButtonClicked(_ sender: Any) {
        if delegate != nil && dataToSendTextField.text != nil{
            guard let dataTransfer = dataToSendTextField.text else { return  }
       self.delegate?.sendDataToFirstVC(data: dataTransfer)
            dismiss(animated: true, completion: nil)
        }
    
    
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
