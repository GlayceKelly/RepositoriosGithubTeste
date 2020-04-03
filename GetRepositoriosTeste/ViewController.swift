//
//  ViewController.swift
//  GetRepositoriosTeste
//
//  Created by Glayce on 01/04/20.
//  Copyright © 2020 Glayce. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    var repos: [Repos] = []

    override func viewDidLoad() {
        super.viewDidLoad()
                
        loadRepositorios(reposUrl: "https://api.github.com/users/GlayceKelly/repos") { (info) in
            if let info = info {
                self.repos += info
            }
        }
    }
    
    func loadRepositorios(reposUrl: String, onComplete: @escaping ([Repos]?) -> Void) {
        
        AF.request(reposUrl).responseJSON { (response) in
            guard let data = response.data else {
                onComplete(nil)
                return
            }
            
            do {
                let repositorios = try JSONDecoder().decode([Repos].self, from: data)
                onComplete(repositorios)
                
            } catch {
                print(error.localizedDescription)
                onComplete(nil)
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! RepositoriosViewController
        vc.repos += repos
    }

}
