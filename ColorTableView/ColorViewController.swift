//
//  ColorViewController.swift
//  ColorTableView
//
//  Created by Dina Adel on 10/23/19.
//  Copyright © 2019 Dina Adel. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var colorview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        colorview.dataSource = self
        colorview.delegate = self
        
        // Do any additional setup after loading the view.
    }
    //var colors = ["red", "orange", "yellow", "green", "blue", "purple", "brown"]
    var colors = [Color(name:"red",uiColor: UIColor.red),
                Color(name:"orange",uiColor: UIColor.orange),
                Color(name:"yellow",uiColor: UIColor.yellow),
                Color(name:"green",uiColor: UIColor.green),
                Color(name:"blue",uiColor: UIColor.blue),
                Color(name:"purple",uiColor: UIColor.purple),
                Color(name:"brown",uiColor: UIColor.brown),
                
    ]
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        cell.textLabel?.text = colors[indexPath.row].name
        cell.backgroundColor = colors[indexPath.row].uiColor
        return cell
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
