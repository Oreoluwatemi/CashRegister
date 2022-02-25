//
//  DetailsViewController.swift
//  CashRegister
//
//  Created by Oreoluwa Lawal on 2022-02-20.
//

import UIKit

class DetailsViewController: UIViewController {

    var detailsType : String = ""
    var detailsQuantity : String = ""
    var detailsTime : String = ""
    var detailsAmount : String = ""
    
    @IBOutlet weak var type: UILabel!
    
    @IBOutlet weak var amount: UILabel!
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var quantity: UILabel!
    
    //once the details view controller is loaded, the purchased product details is displayed
    override func viewDidLoad() {
        super.viewDidLoad()

        type.text = detailsType
        amount.text = "Total Amount: " + detailsAmount
        time.text = detailsTime
        quantity.text = detailsQuantity
        // Do any additional setup after loading the view.
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
