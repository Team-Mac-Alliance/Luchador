//
//  DietViewController.swift
//  Fitocracy
//
//  Created by riddhi gupta on 20/03/21.
//

import UIKit

class DietViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var nexxt: UIButton!
    var arrImgData = [UIImage]()
    var titles:[String] = ["Vegetarian","Non-Vegetarian","Vegan"]
    var detail:[String] = ["A meal plan full of all essentials yet no Meat or fish","A meal plan with no compromises on animal based protiens","A meal plan with the which wont make you feel guilty"]
    
    
    @IBOutlet weak var dietCV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let imageName = "Diet.png"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        imageView.contentMode = .scaleAspectFill
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
        dietCV.delegate = self
        dietCV.dataSource = self
        dietCV.register(UINib.init(nibName: "DietTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        arrImgData = [#imageLiteral(resourceName: "Vector-2"),#imageLiteral(resourceName: "Vector-3"),#imageLiteral(resourceName: "Group-2")]
        nexxt.layer.cornerRadius = 15
        nexxt.clipsToBounds = true

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
