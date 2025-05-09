//
//  PhotoTableViewController.swift
//  FlickrApp
//
//  Created by Ömer  PENBEGÜL on 8.05.2025.
//

import UIKit

class PhotoTableViewController: UITableViewController,  UISearchBarDelegate  {
    
  private var characters: [Character] = []
    
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        guard let text = searchBar.text, text.count > 2 else {
            
                return
            }
        
      /*  searchBar.resignFirstResponder()
            
            // Arama metniyle işlem yap
            print("Kullanıcı arama yaptı: \(text)")*/
        
        searchPhotos(with: text)
        fetchRecentPhotos()
    }
    
  
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
      
        searchBar.delegate = self
        fetchRecentPhotos()
    }
    
    
    private func fetchRecentPhotos() {
        guard let url = URL(string: "https://rickandmortyapi.com/api/character") else { return }
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { [weak self] data, response, error in
            if let error = error {
                debugPrint(error)
                return
            }
            
            if let data = data {
                do {
                    let decoder = JSONDecoder()
                    let response = try decoder.decode(CharacterResponse.self, from: data)
                    DispatchQueue.main.async {
                        self?.characters = response.results
                        self?.tableView.reloadData()
                    }
                } catch {
                    print("Decoding error: \(error)")
                }
            }
        }.resume()
    }
    
    
    private func searchPhotos(with text: String) {
        guard let url = URL(string: "https://rickandmortyapi.com/api/character") else { return }
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { [weak self] data, response, error in
            if let error = error {
                debugPrint(error)
                return
            }
            
            if let data = data {
                do {
                    let decoder = JSONDecoder()
                    let response = try decoder.decode(CharacterResponse.self, from: data)
                    DispatchQueue.main.async {
                        self?.characters = response.results
                        self?.tableView.reloadData()
                    }
                } catch {
                    print("Decoding error: \(error)")
                }
            }
        }.resume()
    }
    
    

    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return characters.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell   {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PhotoTableViewCell
        let character = characters[indexPath.row]
        
        cell.ownerNameLabel.text = character.name
        
        cell.titleNameLabel.text = character.name
        
        if let imageUrl = URL(string: character.image) {
            URLSession.shared.dataTask(with: imageUrl) { data, response, error in
                if let data = data, let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        cell.PhotoImageView.image = image
                    }
                }
            }.resume()
        }
        
        
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
