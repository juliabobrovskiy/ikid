//
//  SecondViewController.swift
//  iKid
//
//  Created by Julia Bobrovskiy on 10/23/18.
//  Copyright © 2018 Julia Bobrovskiy. All rights reserved.
//
import UIKit

class NerdyViewController: UIViewController {
    
    @IBOutlet weak var jokeAns: UILabel!
    @IBOutlet var nerdView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    var isOpen = true
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func nerdButn(_ sender: UIButton) {
        if isOpen {
            isOpen = false
            jokeAns.text = ""
            let image = UIImage(named: "sadp")
            imageView.alpha = 1
            if(imageView != nil) {
                imageView.image = image
            }
            sender.setTitle("Back", for: .normal)
            UIView.transition(with: nerdView, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
        }else{
            isOpen = true
            sender.setTitle("Next", for: .normal)
            jokeAns.text = "What did the computer say to the human when he couldn't complete his iOS HW?"
            imageView.alpha = 0
            UIView.transition(with: nerdView, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        }
    }
}

