//
//  ViewController.swift
//  TestJPMC
//
//  Created by Pradeep G on 4/26/24.
//

import UIKit
import SwiftUI

struct benefitsModel {
    let benefitsName: String?
    let benefitId: String?
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var searchActive : Bool = false

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchTableViewCell") as? SearchTableViewCell
        cell?.benefitName?.text = array[indexPath.row].benefitsName
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        handleBenefitSelection(selectedIndex: indexPath.row)
    }
    
    let searchBar = UISearchBar(frame: CGRect(x: 50, y: 200, width: UIScreen.main.bounds.width - 100, height: 50))
    let resultsTableView = UITableView()
    var array = [benefitsModel]()
    
    override func viewDidLoad() {
        setUpBenefitsModel()
        self.view.addSubview(searchBar)
        searchBar.becomeFirstResponder()
        self.view.addSubview(resultsTableView)
        resultsTableView.frame = CGRect(x: 50, y: 250, width: UIScreen.main.bounds.width - 100, height: 132)
        searchBar.delegate = self
        resultsTableView.dataSource = self
        resultsTableView.delegate = self
        resultsTableView.register(UINib(nibName: "SearchTableViewCell", bundle: nil), forCellReuseIdentifier: "SearchTableViewCell")
        resultsTableView.isHidden = true
       }
    
    func setUpBenefitsModel() {
        let benefitModel1 = benefitsModel(benefitsName: "Door dash pass", benefitId: "234567")
        let benefitModel2 = benefitsModel(benefitsName: "Door dash $5 credit", benefitId: "45678")
        let benefitModel3 = benefitsModel(benefitsName: "All Benefits", benefitId: nil)
        array.append(benefitModel1)
        array.append(benefitModel2)
        array.append(benefitModel3)
    }
    
    func handleBenefitSelection(selectedIndex: Int) {
        guard let benefitID = array[selectedIndex].benefitId  else {
            return
        }
        //navigate to L3o
        
    }
}

extension ViewController: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.resultsTableView.isHidden = searchText.count < 3
        }
    }
    
}
