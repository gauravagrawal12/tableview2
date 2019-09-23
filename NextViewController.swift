//
//  NextViewController.swift
//  tableView
//
//  Created by Felix 09 on 21/08/19.
//  Copyright © 2019 Felix. All rights reserved.
//

import UIKit

class NextViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var againName : String = ""
     //var nextArr : [String] = ["AS","df","vsd","dfd","dvb","fxv","kuy","ki","jkm"]
    var againArr = [String]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return againArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = againArr[indexPath.row]
        
    
        
       return cell
    }
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var name = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("In next View controller:\(againArr)")
        
//nameLabel!.text = name
    //  againName = nextArr[]
        
        // Do any additional setup after loading the view.
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
