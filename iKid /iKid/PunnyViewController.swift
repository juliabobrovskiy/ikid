//
//  FirstViewController.swift
//  iKid
//
//  Created by Julia Bobrovskiy on 10/23/18.
//  Copyright © 2018 Julia Bobrovskiy. All rights reserved.
//

import UIKit

class PunnyViewController: UIViewController {
    
//    @IBOutlet weak var jokeAns: UILabel!
//    @IBOutlet var nerdView: UIView!
    
    @IBOutlet var punView: UIView!
    @IBOutlet weak var jokeAns: UILabel!
    
    var isOpen = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func punButn(_ sender: UIButton) {
        if isOpen {
            isOpen = false
            jokeAns.text =  "A receding hairline."
            sender.setTitle("Back", for: .normal)
            UIView.transition(with: punView, duration: 0.5, options: .transitionFlipFromRight, animations: nil, completion: nil)
        }else{
            isOpen = true
            sender.setTitle("Next", for: .normal)
            jokeAns.text = "What do you call a line of rabbits marching backwards?"
            UIView.transition(with: punView, duration: 0.5, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        }
    }
}

