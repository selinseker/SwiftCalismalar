//
//  ViewController.swift
//  EtkinlikSehirleri
//
//  Created by Selin Şeker on 16.03.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var TableView: UITableView!
   
    var sehirDizisi = [Sehir]()
    var kullaniciSecimi : Sehir?
   
    override func viewDidLoad() {
        super.viewDidLoad()
      
        TableView.delegate = self
        TableView.dataSource = self
        
        let istanbul = Sehir(isim: "Istanbul", bolge: "Marmara", gorsel: UIImage.istanbul)
        let ankara = Sehir(isim: "Ankara", bolge: "İç Anadolu", gorsel: UIImage.ankara)
        let antalya = Sehir(isim: "Antalya", bolge: "Akdeniz", gorsel: UIImage.antalya)
        let izmir = Sehir(isim: "İzmir", bolge: "Ege", gorsel: UIImage.izmir)
        let diyarbakir = Sehir(isim: "Diyarbakır", bolge: "Doğu Anadolu", gorsel: UIImage.diyarbakir)
        
        sehirDizisi = [istanbul, ankara, antalya, izmir, diyarbakir]
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sehirDizisi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = sehirDizisi[indexPath.row].isim
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        kullaniciSecimi = sehirDizisi[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC" , sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.secilenSehir = kullaniciSecimi
        }
    }


}

