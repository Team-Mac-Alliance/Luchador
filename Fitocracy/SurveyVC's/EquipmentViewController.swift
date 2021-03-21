//
//  EquipmentViewController.swift
//  Fitocracy
//
//  Created by riddhi gupta on 20/03/21.
//

import UIKit

class EquipmentViewController: UIViewController {
    
    var fullGympressed = false
    var barbellPressed = false
    var dumbellPressed = false
    var ropePressed = false
    var noEquipPressed = false
    

    let image1 = UIImage(named: "gym")
    let image2 = UIImage(named: "barbell")
    let image3 = UIImage(named: "dumbell")
    let image4 = UIImage(named: "skipping")
    let image5 = UIImage(named: "noequip")
    
    @IBOutlet weak var img1: UIButton!
    @IBOutlet weak var img2: UIButton!
    @IBOutlet weak var img3: UIButton!
    @IBOutlet weak var img4: UIButton!
    @IBOutlet weak var img5: UIButton!
    @IBOutlet weak var nexxt: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        let imageName = "Diet.png"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        imageView.contentMode = .scaleAspectFill
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
        nexxt.layer.cornerRadius = 15
        nexxt.clipsToBounds = true

        // Do any additional setup after loading the view.
    }
    
    @IBAction func fullGYm(_ sender: Any) {
        if fullGympressed == false {
            img1.setImage(image2, for: UIControl.State.normal)
            fullGympressed = true
        }
        else {
            img1.setImage(image1, for: UIControl.State.normal)
            fullGympressed = false
        }
    
    }
    
    @IBAction func barbell(_ sender: Any) {
        if barbellPressed == false {
            img2.setImage(image1, for: UIControl.State.normal)
            barbellPressed = true
        }
        else {
            img2.setImage(image2, for: UIControl.State.normal)
            barbellPressed = false
        }
    }
   
     @IBAction func dumbell(_ sender: Any) {
        if dumbellPressed == false {
            img3.setImage(image4, for: UIControl.State.normal)
            dumbellPressed = true
        }
        else {
            img3.setImage(image3, for: UIControl.State.normal)
            dumbellPressed = false
        }
     }
    
    
    @IBAction func skippingRope(_ sender: Any) {
        if ropePressed == false {
            img4.setImage(image3, for: UIControl.State.normal)
            ropePressed = true
        }
        else {
            img4.setImage(image4, for: UIControl.State.normal)
            ropePressed = false
        }
    }
    
    @IBAction func noEquip(_ sender: Any) {
        if noEquipPressed == false {
            img5.setImage(image2, for: UIControl.State.normal)
            noEquipPressed = true
        }
        else {
            img5.setImage(image5, for: UIControl.State.normal)
            noEquipPressed = false
        }
    }
}
