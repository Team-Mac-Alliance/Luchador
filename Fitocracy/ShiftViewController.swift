//
//  ShiftViewController.swift
//  Fitocracy
//
//  Created by riddhi gupta on 20/03/21.
//

import UIKit

class ShiftViewController : UIViewController  {
    @IBOutlet weak var startWorkout: UIButton!
    
    @IBOutlet weak var day: UIButton!
    
    
    @IBOutlet weak var night: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let imageName = "Diet.png"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        imageView.contentMode = .scaleAspectFill
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
        
        startWorkout.layer.cornerRadius = 15
        startWorkout.clipsToBounds = true

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func dayShift(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
            night.isSelected = false
        } else{
            sender.isSelected = true
            night.isSelected = false
        }
    }
    
    @IBAction func nifgtShift(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
            day.isSelected = false
        } else{
            sender.isSelected = true
            day.isSelected = false
        }
    }
    @IBAction func startWorkout(_ sender: Any) {
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

