//
//  DetailsViewController.swift
//  EtkinlikSehirleri
//
//  Created by Selin Şeker on 16.03.2024.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var sehirBolgesiLabel: UILabel!
    @IBOutlet weak var sehirIsmiLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
   
    var secilenSehir : Sehir?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sehirIsmiLabel.text = secilenSehir?.isim
        sehirBolgesiLabel.text = secilenSehir?.bolge
        imageView.image = secilenSehir?.gorsel
    }

}
