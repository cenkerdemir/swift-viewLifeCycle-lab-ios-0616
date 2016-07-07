//
//  ViewController.swift
//  FunWithViews
//
//  Created by James Campagno on 6/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceView1: UIView!
    @IBOutlet weak var diceView2: UIView!
    @IBOutlet weak var diceView3: UIView!
    @IBOutlet weak var diceView4: UIView!
    @IBOutlet weak var diceView5: UIView!
    @IBOutlet weak var diceView6: UIView!
    @IBOutlet weak var diceView7: UIView!
    
    @IBOutlet weak var diceLabel1: UILabel!
    @IBOutlet weak var diceLabel2: UILabel!
    @IBOutlet weak var diceLabel3: UILabel!
    @IBOutlet weak var diceLabel4: UILabel!
    @IBOutlet weak var diceLabel5: UILabel!
    @IBOutlet weak var diceLabel6: UILabel!
    
    var numberOfRolls : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideViews()
        
        diceLabel1.hidden = true
        diceLabel2.hidden = true
        diceLabel3.hidden = true
        diceLabel4.hidden = true
        diceLabel5.hidden = true
        diceLabel6.hidden = true
    
    }
    
    
    @IBAction func rollTheDice(sender: AnyObject) {
        let dice = randomDiceRoll()
        
        switch dice {
        case 1:
            diceView1.hidden = false
        case 2:
            diceView2.hidden = false
            diceView7.hidden = false
        case 3:
            diceView1.hidden = false
            diceView3.hidden = false
            diceView6.hidden = false
        case 4:
            diceView2.hidden = false
            diceView3.hidden = false
            diceView6.hidden = false
            diceView7.hidden = false
        case 5:
            diceView1.hidden = false
            diceView2.hidden = false
            diceView3.hidden = false
            diceView6.hidden = false
            diceView7.hidden = false
        case 6:
            diceView2.hidden = false
            diceView3.hidden = false
            diceView4.hidden = false
            diceView5.hidden = false
            diceView6.hidden = false
            diceView7.hidden = false
        default:
            print("something went wrong. no valid dice roll")
        }
        
        switch numberOfRolls {
        case 1:
            diceLabel1.hidden = false
            diceLabel1.text = String(dice)
        case 2:
            diceLabel2.hidden = false
            diceLabel2.text = String(dice)
        case 3:
            diceLabel3.hidden = false
            diceLabel3.text = String(dice)
        case 4:
            diceLabel4.hidden = false
            diceLabel4.text = String(dice)
        case 5:
            diceLabel5.hidden = false
            diceLabel5.text = String(dice)
        case 6:
            diceLabel6.hidden = false
            diceLabel6.text = String(dice)
        default:
            diceLabel1.text = diceLabel2.text
            diceLabel2.text = diceLabel3.text
            diceLabel3.text = diceLabel4.text
            diceLabel4.text = diceLabel5.text
            diceLabel5.text = diceLabel6.text
            diceLabel6.text = String(dice)
        }
        
    }
    
    func hideViews() {
        diceView1?.hidden = true
        diceView2?.hidden = true
        diceView3?.hidden = true
        diceView4?.hidden = true
        diceView5?.hidden = true
        diceView6?.hidden = true
        diceView7?.hidden = true
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        numberOfRolls += 1
        hideViews()
        return Int(arc4random_uniform(6) + 1)
    }
}
