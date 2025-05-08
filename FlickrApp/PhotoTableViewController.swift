//
//  PhotoTableViewController.swift
//  FlickrApp
//
//  Created by Ömer  PENBEGÜL on 8.05.2025.
//

import UIKit

class PhotoTableViewController: UITableViewController,  UISearchBarDelegate  {
    
  
    
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        guard let text = searchBar.text, text.count > 2 else {
                return
            }
        
        searchBar.resignFirstResponder()
            
            // Arama metniyle işlem yap
            print("Kullanıcı arama yaptı: \(text)")
    }
    
  
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
      
        searchBar.delegate = self
    }
    
    
    

    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return 10
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell   {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PhotoTableViewCell
        cell.OwnerImageView.backgroundColor = .darkGray
        cell.ownerNameLabel.text = "Hello"
        cell.PhotoImageView.backgroundColor = .gray
        cell.titleNameLabel.text = "Title Name"
        return cell
    }

    
    // MARK: - Navigation

   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        if let viewController = segue.destination as?
            PhotoTableViewController{
                
            
       }
        
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "detailVC", sender: nil)
        
    }
    
    
}
