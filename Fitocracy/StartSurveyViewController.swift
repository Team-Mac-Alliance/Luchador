//
//  StartSurveyViewController.swift
//  Fitocracy
//
//  Created by riddhi gupta on 20/03/21.
//

import UIKit

class StartSurveyViewController: UIViewController {

    @IBOutlet weak var nexxt: UIButton!
    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var height: UITextField!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var sex: UITextField!
    @IBOutlet weak var activitySC: UISegmentedControl!
    @IBOutlet weak var age: UITextField!
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
