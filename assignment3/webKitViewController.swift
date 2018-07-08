//
//  mapKitViewController.swift
//  assignment3
//
//  Created by Chase Meusel on 2/22/18.
//  Copyright © 2018 Chase Meusel. All rights reserved.
//

import UIKit
import WebKit

class webKitViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var website1: UIWebView!
    
    
    var mamasBoy = ["Rating: 4.6 stars", "Address: 197 Oak Street", "Creative Southern breakfasts and lunches"]
    var canes = ["Rating: 4.4 stars", "Address:  795 Baxter St", "Chicken finger specialization"]
    var transmet = ["Rating: 3.6 stars", "Address: 145 E Clayton St", "Top notch pizza restaurant"]
    var whichArray = 0
    var images = ["star","maps",""]
    
    var websites = ["https://bit.ly/2EVQHyj", "https://bit.ly/2GPOIbv", "https://www.transmetathens.com"]
    
    var current2 = 0
    var mapsChosen = [""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL (string: websites[current2])
        let request = URLRequest(url: url!)
        website1.loadRequest(request)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mamasBoy.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        if whichArray == 0 {
            cell.textLabel?.text = mamasBoy[indexPath.row]
        }
        else if whichArray == 1 {
            cell.textLabel?.text = canes[indexPath.row]
        }
        else if whichArray == 2 {
            cell.textLabel?.text = transmet[indexPath.row]
        }
        cell.imageView?.image = UIImage(named: images[indexPath.row])
        return cell
    }
    
   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    /*let optionMenu = UIAlertController(title: nil, message: "See Map!", preferredStyle: .actionSheet)
    
    let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
    let callActionHandler = { (action:UIAlertAction!) -> Void in
        let alertMessage = UIAlertController(title: "Service unavailable", message: "Sorry, the call feature is not available yet. PLease retry later.", preferredStyle: .alert)
        alertMessage.addAction(UIAlertAction(title: "OK", style: .default, handler: nil),}
        self.present(alertMessage, animated: true, completion: nil)
        
    }
    optionMenu.addAction(cancelAction)
    
    present(optionMenu, animated: true, completion: nil)*/
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
