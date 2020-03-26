//
//  ViewController.swift
//  UIImageAndButton
//
//  Created by Field Employee on 3/26/20.
//  Copyright © 2020 Field Employee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var array:[UIImage] = [(UIImage(systemName: "command")!), (UIImage(systemName: "personalhotspot")!), (UIImage(systemName: "shift")!), (UIImage(systemName: "power")!), (UIImage(systemName: "globe")!)]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clear
        return headerView
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ImageCell", for: indexPath) as! ImageCell
        cell.cellImage.image = array[indexPath.section]
        if indexPath.section % 2 == 0 {
            cell.backgroundColor = UIColor(red: 0, green: 51 / 255, blue: 102 / 255, alpha: 1)
        } else {
            cell.backgroundColor = UIColor(red: 51 / 255, green: 0, blue: 51 / 255, alpha: 1)
        }
        cell.clipsToBounds = true
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let alertController = UIAlertController(title: "Welcome", message: "You selected cell at row \(indexPath.section + 1)", preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
        print("tap")
    }
    
}

