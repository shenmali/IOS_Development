//
//  ViewController.swift
//  TasarimCalismasi
//
//  Created by MaSheN on 31.07.2022.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title="Pizza"
        
        let appearance = UINavigationBarAppearance()
        
        //Arkaplan rengi
        appearance.backgroundColor = UIColor(named: "anaRenk")
        
        //Baslik rengi
        appearance.titleTextAttributes = [.foregroundColor: UIColor(named: "yaziRenk1")!,
                NSAttributedString.Key.font : UIFont(name: "Pacifico-Regular", size: 22)!]
        
    navigationController?.navigationBar.standardAppearance = appearance
    navigationController?.navigationBar.compactAppearance = appearance
    navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        //RGB renk paletine gore arka plani yukler
        navigationController?.navigationBar.isTranslucent = true
        
        
        //status bar rengi degisimi
       navigationController?.navigationBar.barStyle = .black
        
        
        
        
    }


    
}

