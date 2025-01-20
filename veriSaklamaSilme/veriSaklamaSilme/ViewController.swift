//
//  ViewController.swift
//  veriSaklamaSilme
//
//  Created by Yasemin salan on 20.01.2025.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var birthdayTextField: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var birtdayLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //UserDefaults ile hafızada tutulan verilerin çekilmesi işlemi yapılıyor.
        let savedName = UserDefaults.standard.object(forKey: "name")
        let savedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        //savedName değerini object olarak aldığımız için herhangi bir türde olabilir bu sebeple aşağıdaki gibi string olarak çevirmemiz gerekiyor.
        //Casting - as? vs. as!
        
        if let newName = savedName as? String{
            //savedName değerini string olarak kaydedebilirsen eğer newName olarak değişken oluştur demek
            nameLabel.text = "Name: \(newName)"
            
        }
        if let newBirthday = savedBirthday as? String{
            //savedBirthday değerini string olarak kaydedebilirsen eğer newBirthday olarak değişken oluştur demek
            birtdayLabel.text = "Birthday: \(newBirthday)"
        }

        
        
        
    }

    @IBAction func saveClicked(_ sender: Any) {
        //set içinde kaydetmek istediğin değerin ne olduğunu ve kaydetmek istediğin anahtar kelime ne diye sorulur
        //forkey içinde tuttuğum değer bize hatırlamamızda yardıcı olucak herhangi bir  anahtar kelime olabilir ve daha sonra çağırdığımızda bu anahtar kelime ile çağıracağız.
        UserDefaults.standard.set(nameTextField.text!,forKey: "name")
        UserDefaults.standard.set(birthdayTextField.text!,forKey: "birthday")
        
        // eskiden synchronize işlemi yapılmak istendiğinde aşağıdaki kod bloğu kullanılıyordu ama artık buna geek yok otomatik olarak gerçekleştirilmektedir.
       // UserDefaults.standard.synchronize()
        

        nameLabel.text = "Name: \(nameTextField.text!)"
        birtdayLabel.text = "Birthday: \(birthdayTextField.text!)"
    }
    
}

