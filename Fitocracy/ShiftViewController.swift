//
//  ShiftViewController.swift
//  Fitocracy
//
//  Created by riddhi gupta on 20/03/21.
//

import UIKit

class ShiftViewController : UIViewController ,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var startWorkout: UIButton!
    var arrImgData = [UIImage]()
    var titles:[String] = ["Day Shift","Night Shift"]
    var detail:[String] = ["I work all day and sleep at night","I’m a Night Owl, don’t care for sunlight"]
    
    @IBOutlet weak var shiftCV: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let imageName = "Diet.png"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        imageView.contentMode = .scaleAspectFill
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
        shiftCV.delegate = self
        shiftCV.dataSource = self
        shiftCV.register(UINib.init(nibName: "DietTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        arrImgData = [#imageLiteral(resourceName: "Group 15"),#imageLiteral(resourceName: "Vector-4")]
        startWorkout.layer.cornerRadius = 15
        startWorkout.clipsToBounds = true

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrImgData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! DietTableViewCell
        cell.vector.image = arrImgData[indexPath.row]
        cell.title.text = titles[indexPath.row]
        cell.details.text = detail[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
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

