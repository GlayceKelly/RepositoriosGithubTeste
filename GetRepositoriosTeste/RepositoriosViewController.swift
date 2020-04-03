//
//  RepositoriosViewController.swift
//  GetRepositoriosTeste
//
//  Created by Glayce on 02/04/20.
//  Copyright © 2020 Glayce. All rights reserved.
//

import UIKit
import Alamofire

class RepositoriosViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var repos: [Repos] = []
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.register(ReposTableViewCell.self, forCellReuseIdentifier: "cell")
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return self.repos.count
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ReposTableViewCell
        
        cell.lbName?.text = repos[indexPath.row].name ?? "Sem nome"
        cell.lbLanguage?.text = repos[indexPath.row].language ?? "Sem linguagem"
        cell.lbDescription?.text = repos[indexPath.row].description ?? "Descrição não fornecida"
        
        return cell
    }
    
    // method to run when table view cell is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.row).")
    }
}
