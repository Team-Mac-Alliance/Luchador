//
//  DietViewController.swift
//  Fitocracy
//
//  Created by riddhi gupta on 20/03/21.
//

import UIKit

class DietViewController: UIViewController  {
    @IBOutlet weak var nexxt: UIButton!
    
    @IBOutlet weak var veg: UIButton!
    
    @IBOutlet weak var nonVeg: UIButton!
    
    @IBOutlet weak var vegann: UIButton!
    
    
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
    
    @IBAction func vege(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
            nonVeg.isSelected = false
            vegann.isSelected = false
            
        } else{
            sender.isSelected = true
            nonVeg.isSelected = false
            vegann.isSelected = false
        }
    }
    
    @IBAction func nonVege(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
            veg.isSelected = false
            vegann.isSelected = false
            
        } else{
            sender.isSelected = true
            veg.isSelected = false
            vegann.isSelected = false
        }
    }
    
    @IBAction func vegan(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
            veg.isSelected = false
            nonVeg.isSelected = false
            
        } else{
            sender.isSelected = true
            veg.isSelected = false
            nonVeg.isSelected = false
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
