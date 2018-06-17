//
//  ViewController.swift
//  SegmentControl
//
//  Created by TakumaNishioka on 2018/06/16.
//  Copyright © 2018年 TakumaNishioka. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    var fruit = ["りんご","ばなな","いちご","なし","もも"]
    var fish = ["サンマ","アジ","サバ","マグロ","カツオ","タイ"]
    var viewTable: [String] = []

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //tableView.delegate = self
        viewTable = fruit
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewTable.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let newCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        newCell.textLabel?.text = viewTable[indexPath.row]
        return newCell
    }

    @IBAction func segmentButton(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:viewTable = fruit
        case 1:viewTable = fish
        default:break
        }
        tableView.reloadData()
    }
}

