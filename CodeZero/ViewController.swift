//
//  ViewController.swift
//  CodeZero
//
//  Created by InsightzClub on 07/04/2020.
//  Copyright © 2020 Tharsshinee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //register cell
        tableView.register(UINib(nibName: "CardCell", bundle: nil), forCellReuseIdentifier: "Cell")
        tableView.register(UINib(nibName: "BlackCardCell", bundle: nil), forCellReuseIdentifier: "BlackCell")
        self.tableView.rowHeight = 300;
        
        //register header
        tableView.register(UINib(nibName: "Header", bundle: nil),forHeaderFooterViewReuseIdentifier: "Header")
        
        //banner
        let navController = navigationController!
       
        
        let image = UIImage(named: "banner")
        let imageView = UIImageView(image: image)
        
        //let bannerWidth = navController.navigationBar.frame.size.width
        let bannerHeight = navController.navigationBar.frame.size.height
        
        //let bannerX = bannerWidth / 2 - (image?.size.width)! / 2
        let bannerY = bannerHeight / 2 - image!.size.height / 2
        
        imageView.frame = CGRect(x:0, y: bannerY, width: 100, height: bannerHeight)
        imageView.contentMode = .scaleAspectFit
        
        navigationItem.titleView = imageView
    }
}


 // MARK: - UITableViewDelegate, UITableViewDataSource
extension ViewController: UITableViewDelegate, UITableViewDataSource {

    //custom header
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerView = Bundle.main.loadNibNamed("Header", owner: self, options: nil)?.last as! CustomHeader
        
        if section == 0{
            headerView.headerType(section: 0)
        }
        else{
            headerView.headerType(section: 1)
        }

        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView,
                   estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        return 100.0
    }
    
   //sections
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    //custom cell
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let section = indexPath.section
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! UITableViewCell
        let blackCell = tableView.dequeueReusableCell(withIdentifier: "BlackCell") as! UITableViewCell
       
        if section == 0{
            return cell
        }
        else{
            return blackCell
        }
        
    }
    
    
   
    
}


