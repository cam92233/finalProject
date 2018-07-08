//
//  tableViewController.swift
//  assignment3
//
//  Created by Chase Meusel on 2/22/18.
//  Copyright © 2018 Chase Meusel. All rights reserved.
//

import UIKit
import WebKit

class mapViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
   

    @IBOutlet var restaurantPicker: UIPickerView!
    @IBOutlet var webView: WKWebView!
    var current = 0
    
    @IBAction func button1(_ sender: UIButton) {
        
    }
    
    var locations = ["https://bit.ly/2Cbw2Vv", "https://bit.ly/2ELZxif", "https://bit.ly/2FHeGhR"] //mamas boy, raising canes, transmetropolitan
    
    var restaurants = ["Mama's Boy", "Raising Canes", "Transmetropolitan"]

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return restaurants.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        current = row
        let url = URL (string: locations[current])
        let request = URLRequest(url: url!)
        webView.load(request)
        return restaurants[row]
    }
    
    var mapsChosen = [""]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.restaurantPicker.dataSource = self
        self.restaurantPicker.delegate = self
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationView = segue.destination as! webKitViewController
        if segue.identifier == "segue2" {
            destinationView.current2 = current
            destinationView.whichArray = current
        }
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
