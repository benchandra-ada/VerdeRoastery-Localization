//
//  BeanDetailViewController.swift
//  l10n
//
//  Created by Benyamin on 10/19/20.
//

import UIKit

class BeanDetailViewController: UIViewController {

    @IBOutlet var beanDetailView: BeanDetailView!
    @IBOutlet weak var orderButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        beanDetailView.display(bean: BeanDetail.mock())
        
    }
    
    @IBAction func orderTapped(_ sender: UIButton) {
        
        let title = NSLocalizedString("Order Received", comment: "Order received by the app")
        let message = NSLocalizedString("Thank you for ordering!", comment: "Thanks the customer for ordering in the app")
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okButton = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okButton)
        
        present(alert, animated: true, completion: nil)
    }

}
