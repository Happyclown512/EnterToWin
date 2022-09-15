//
//  ViewController.swift
//  EnterToWin
//
//  Created by Caden on 9/14/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var EmailTF: UITextField!
    
    @IBAction func SubmitButton(_ sender: Any) {
        print(EmailTF.text!)
        if(EmailTF.text!.isEmpty){
            print("empty")
            performLabTextFieldShakeAnimation()
        } else {
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "congratulations") as! CongratulationsViewController
            self.present(nextViewController, animated:true, completion:nil)
        }
    }
    private func performLabTextFieldShakeAnimation(){
        UIView.animate(withDuration: 0.1, animations: {
            let rightTransform = CGAffineTransform(translationX: 20, y: 0)
            self.EmailTF.transform = rightTransform
        }) { (_) in
            UIView.animate(withDuration: 0.1, animations: {
                self.EmailTF.transform = CGAffineTransform.identity
            })
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

