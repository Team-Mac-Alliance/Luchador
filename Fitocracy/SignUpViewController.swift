//
//  SignUpViewController.swift
//  Fitocracy
//
//  Created by riddhi gupta on 20/03/21.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var phoneNo: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var pass: UITextField!
    @IBOutlet weak var confirmPass: UITextField!
    @IBOutlet weak var signUp: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        let imageName = "Diet.png"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        imageView.contentMode = .scaleAspectFill
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
        
        signUp.layer.cornerRadius = 15
        signUp.clipsToBounds = true
        

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
