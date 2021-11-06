//
//  ViewController.swift
//  BathApp
//
//  Created by 伴地慶介 on 2021/11/06.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var kuriemiHeight: NSLayoutConstraint!
        
    @IBOutlet weak var kuriemiBottomConstant: NSLayoutConstraint!
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        if motion != UIEvent.EventSubtype.motionShake {
            return
        }
        
        kuriemiBottomConstant.constant = kuriemiHeight.constant * -1
        
        UIView.animate(withDuration: 1.0, animations: {
            self.view.layoutIfNeeded()
        }, completion: {(finished: Bool) in
            //
        })
        
        
    }


}

