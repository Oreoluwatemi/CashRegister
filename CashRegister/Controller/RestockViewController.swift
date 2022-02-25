//
//  RestockViewController.swift
//  CashRegister
//
//  Created by Oreoluwa Lawal on 2022-02-20.
//

import UIKit

class RestockViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var productList = [Product]()
    var products : ProductList?
    var addProductQuantity : Add?

    @IBOutlet weak var restock: UIButton!
    @IBOutlet weak var restockTable: UITableView!
    @IBOutlet weak var updateQuantity: UITextField!
    var productSelected : Int? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        restockTable.reloadData()
        addProductQuantity = (UIApplication.shared.delegate as! AppDelegate).addProductQuantity
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productList.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    //displays products list to the table
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = productList[indexPath.row].name
        cell.detailTextLabel?.text = "\(productList[indexPath.row].quantity)"
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       productSelected = indexPath.row
    }
    
    //error alert if user does not select both product and indicate quantity to be updated
    func displayError(){
        let alert = UIAlertController(title: "Error", message: "You have to select an item or provide a new quantity", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: .none)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    //if user input is valid then the product is updated
    @IBAction func restockButton(_ sender: Any) {
        
        if let correctQuantity = updateQuantity.text{
            if productSelected != nil && correctQuantity != ""{
                let quantity = Int(correctQuantity)
                productList[productSelected!].quantity = productList[productSelected!].quantity + quantity!
                
            }
            else {
                displayError()
            }
            restockTable.reloadData()
        }
        updateQuantity.text = ""
        productSelected = nil
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
