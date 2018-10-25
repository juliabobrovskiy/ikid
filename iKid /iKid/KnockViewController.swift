//
//  KnockViewController.swift
//  iKid
//
//  Created by Julia Bobrovskiy on 10/23/18.
//  Copyright © 2018 Julia Bobrovskiy. All rights reserved.
//

import Foundation
import UIKit

class KnockViewController: UIViewController {
    
    var isOpen = true
    var isOpen1 = false
    var isOpen2 = false
    var isOpen3 = false
    var isOpen4 = false
    
    @IBOutlet var knockView: UIView!
    @IBOutlet weak var jokeAns: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func knockButn(_ sender: UIButton) {
        if isOpen {
            isOpen = false
            isOpen1 = true
            jokeAns.text = "Whos There?"
            UIView.transition(with: knockView, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
            
        }else  if isOpen1 {
            isOpen1 = false
            isOpen2 = true
            jokeAns.text = "Java"
            UIView.transition(with: knockView, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        }else if isOpen2{
            isOpen2 = false
            isOpen3 = true
            jokeAns.text = "Java who?"
            UIView.transition(with: knockView, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
        } else if isOpen3{
            isOpen3 = false
            isOpen4 = true
            jokeAns.text = "Java a Dog? I can hear one barking"
            sender.setTitle("Back", for: .normal)
            UIView.transition(with: knockView, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        }else if isOpen4{
            isOpen4 = false
            isOpen = true
            sender.setTitle("Next", for: .normal)
            jokeAns.text = "Knock Knock"
            UIView.transition(with: knockView, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
        }
        
    }
    
}
