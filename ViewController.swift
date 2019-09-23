//
//  ViewController.swift
//  tableView
//
//  Created by Felix 09 on 21/08/19.
//  Copyright © 2019 Felix. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate ,UITableViewDataSource


    
    
{

    
    var emptyArr : [String] = []
    var friends = ["f1","f2","f3","f4","f5","f6"]
    var relatives = ["1","2","3","4","5","6"]
    var fotos = ["north_east.png","north_west.png","north.png","south_east.png","south_west.png","south.png","west.png"]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    @IBOutlet weak var fotosUpload: UIImageView!
    
    
    @IBAction func pressButton(_ sender: UIButton) {
       
        //navigation
        
        let cellForward = storyboard?.instantiateViewController(withIdentifier: "NextViewController") as! NextViewController
        cellForward.againArr = emptyArr
        navigationController?.pushViewController(cellForward, animated: true)
        
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0
        {
        return friends.count
        }
        else {
             return relatives.count
            }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
       let cellForward = storyboard?.instantiateViewController(withIdentifier: "NextViewController") as! NextViewController
//        navigationController?.pushViewController(cellForward, animated: true) */
        
        let index = emptyArr.index(of: (cell?.textLabel?.text)!)

        if cell?.accessoryType == .checkmark {
            
            cell?.accessoryType = .none
            emptyArr.remove(at: index!)
            print(emptyArr)

            
            
            //let str = cell?.textLabel?.text
            //cellForward.againArr = [str!]
            //print(str!)
        }
        else {
            cell?.accessoryType = .checkmark

            
            
            emptyArr.append((cell?.textLabel?.text)!)
            print(emptyArr)

            
        }
        
        //////////////////////////////////////
        
    }
    
    
    
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        let cellForward = storyboard?.instantiateViewController(withIdentifier: "NextViewController") as! NextViewController
        navigationController?.pushViewController(cellForward, animated: true)
        
        
        let str = cell?.textLabel?.text
        cellForward.name = str!
        print(str!)
        
        let strAgain = cell?.textLabel?.text
        cellForward.againArr = [strAgain!]
        print(str!)
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .value1, reuseIdentifier: "cell")
        let images = fotos[indexPath.row]
        cell.imageView?.image = UIImage(named: images)
        //cell.accessoryType = .detailDisclosureButton
        cell.accessoryType = .none
        if indexPath.section == 0 {
        cell.textLabel?.text = friends[indexPath.row]
        cell.detailTextLabel?.text = "friends"
    }
        else {
        cell.textLabel?.text = relatives[indexPath.row]
            cell.detailTextLabel?.text = "relatives"

        }
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

