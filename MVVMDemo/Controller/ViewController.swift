//
//  ViewController.swift
//  MVVMDemo
//
//  Created by Priyal on 20/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collView: UICollectionView!
    @IBOutlet weak var tblView: UITableView!
    var topStoryViewModel : tblModel?
    var data : viewModelData?
    lazy var viewModel: viewModelData = {
        return viewModelData()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.delegate = self
        tblView.dataSource = self
//        collView.delegate = self
//        collView.dataSource = self
        tblView.register(UINib(nibName: "tblCVC", bundle: nil), forCellReuseIdentifier: "tblCVC")
       // collView.register(collCVC.self, forCellWithReuseIdentifier: "collCVC")
        collView.register(UINib(nibName: "collCVC", bundle: nil), forCellWithReuseIdentifier: "collCVC")
        // Do any additional setup after loading the view.
    }
    
    func updateUI(){
        
    }
    
    
}

extension ViewController : UITableViewDataSource , UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numofcount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblView.dequeueReusableCell(withIdentifier: "tblCVC")as! tblCVC
        let modelVm = viewModel.getCellViewModel(at: indexPath)
        cell.lbl.text = modelVm.name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let story = UIStoryboard(name: "detailsView", bundle: nil)
        var vc = story.instantiateViewController(withIdentifier: "detailsViewVC") as! detailsViewVC
        let modelVm = viewModel.getCellViewModel(at: indexPath)
        vc.configCell(data: modelVm)
        self.navigationController?.pushViewController(vc, animated: false)
    }
}
extension ViewController : UICollectionViewDelegate , UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        viewModel.numofcount
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collView.dequeueReusableCell(withReuseIdentifier: "collCVC", for: indexPath) as! collCVC
        let modelVm = viewModel.getCellViewModel(at: indexPath)
        return cell
    }
    
    
}
