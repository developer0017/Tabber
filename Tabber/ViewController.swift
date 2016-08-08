//
//  ViewController.swift
//  Tabber
//
//  Created by Administrator on 8/3/16.
//  Copyright © 2016 Administrator. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var segPercent: UISegmentedControl!
    @IBOutlet weak var viewPercent: UIView!
    @IBOutlet weak var txtDollar: UITextField!
    @IBOutlet weak var lblSegmentedChange: UILabel!
    @IBOutlet weak var lblText1: UILabel!
    @IBOutlet weak var lblText2: UILabel!
    @IBOutlet weak var lblText3: UILabel!
    @IBOutlet weak var lblText4: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.txtDollar.delegate = self
        
        txtDollar.addTarget(self, action: #selector(ViewController.textFieldDidChange(_:)), forControlEvents: UIControlEvents.EditingChanged)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onSegmentValueChanged(sender: UISegmentedControl) {
        
        if txtDollar.text == "" {
            lblSegmentedChange.text = "$0.00"
            lblText1.text = "$0.00"
        } else{
        
            let intTxtDollar:Double? = Double(txtDollar.text!)
        
            switch sender.selectedSegmentIndex {
            case 0:
                self.txtDollar.resignFirstResponder()
                let stringValue11:String = String(format:"%.2f", intTxtDollar! * 0.15)
                let stringValue21:String = String(format:"%.2f", intTxtDollar! * 1.15)
                let stringValue31:String = String(format:"%.2f", intTxtDollar! * 1.15 / 2)
                let stringValue41:String = String(format:"%.2f", intTxtDollar! * 1.15 / 3)
                let stringValue51:String = String(format:"%.2f", intTxtDollar! * 1.15 / 4)
                lblSegmentedChange.text = "$" + stringValue11
                lblText1.text = "$" + stringValue21
                lblText2.text = "$" + stringValue31
                lblText3.text = "$" + stringValue41
                lblText4.text = "$" + stringValue51
                break;
            case 1:
                self.txtDollar.resignFirstResponder()
                let stringValue12:String = String(format:"%.2f", intTxtDollar! * 0.2)
                let stringValue22:String = String(format:"%.2f", intTxtDollar! * 1.2)
                let stringValue32:String = String(format:"%.2f", intTxtDollar! * 1.2 / 2)
                let stringValue42:String = String(format:"%.2f", intTxtDollar! * 1.2 / 3)
                let stringValue52:String = String(format:"%.2f", intTxtDollar! * 1.2 / 4)
                lblSegmentedChange.text = "$" + stringValue12
                lblText1.text = "$" + stringValue22
                lblText2.text = "$" + stringValue32
                lblText3.text = "$" + stringValue42
                lblText4.text = "$" + stringValue52
                break;
            case 2:
                self.txtDollar.resignFirstResponder()
                let stringValue13:String = String(format:"%.2f", intTxtDollar! * 0.22)
                let stringValue23:String = String(format:"%.2f", intTxtDollar! * 1.22)
                let stringValue33:String = String(format:"%.2f", intTxtDollar! * 1.22 / 2)
                let stringValue43:String = String(format:"%.2f", intTxtDollar! * 1.22 / 3)
                let stringValue53:String = String(format:"%.2f", intTxtDollar! * 1.22 / 4)
                lblSegmentedChange.text = "$" + stringValue13
                lblText1.text = "$" + stringValue23
                lblText2.text = "$" + stringValue33
                lblText3.text = "$" + stringValue43
                lblText4.text = "$" + stringValue53
                break
            default:
                break;
            }
        }
    }
    
    
    
    // MARK: - textfield delegate
    func textFieldDidChange(textField: UITextField) {
        
        if txtDollar.text == "" {
            lblSegmentedChange.text = "$0.00"
            lblText1.text = "$0.00"
        } else{
        
            let intTxtDollar:Double? = Double(txtDollar.text!)
        
            switch segPercent.selectedSegmentIndex {
            case 0:
                let stringValue11:String = String(format:"%.2f", intTxtDollar! * 0.15)
                let stringValue21:String = String(format:"%.2f", intTxtDollar! * 1.15)
                lblSegmentedChange.text = "$" + stringValue11
                lblText1.text = "$" + stringValue21
                break;
            case 1:
                let stringValue12:String = String(format:"%.2f", intTxtDollar! * 0.2)
                let stringValue22:String = String(format:"%.2f", intTxtDollar! * 1.2)
                lblSegmentedChange.text = "$" + stringValue12
                lblText1.text = "$" + stringValue22
                break;
            case 2:
                let stringValue13:String = String(format:"%.2f", intTxtDollar! * 0.22)
                let stringValue23:String = String(format:"%.2f", intTxtDollar! * 1.22)
                lblSegmentedChange.text = "$" + stringValue13
                lblText1.text = "$" + stringValue23
                break
            default:
                break;
            }
        }
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
//            animateViewMoving(true, moveValue: 100)

        segPercent.hidden = false
        viewPercent.hidden = false
    }
//
//    func textFieldDidEndEditing(textField: UITextField) {
//            animateViewMoving(false, moveValue: 100)
//    }
//    
//    func animateViewMoving (up:Bool, moveValue :CGFloat){
//        let movementDuration:NSTimeInterval = 0.3
//        let movement:CGFloat = ( up ? -moveValue : moveValue)
//        
//        UIView.beginAnimations("animateView", context: nil)
//        UIView.setAnimationBeginsFromCurrentState(true)
//        UIView.setAnimationDuration(movementDuration)
//        
//        self.view.frame = CGRectOffset(self.view.frame, 0, movement)
//        UIView.commitAnimations()
//    }

}

