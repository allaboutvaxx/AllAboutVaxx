//
//  ViewController.swift
//  AllAboutVaxxTest
//
//  Created by Abir Das on 2/4/22.
//

import UIKit
import Firebase
import FirebaseAuth

class ViewController: UIViewController {

    @IBOutlet weak var mainMenu: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func Logout(_ sender: Any) {
        let auth = Auth.auth()
        do{
            try auth.signOut()
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "logIn")
            vc.modalPresentationStyle = .overFullScreen
            present(vc, animated: true)
        } catch let signOutError{
            
        }
    }
}
