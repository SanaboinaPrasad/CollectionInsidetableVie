//
//  ViewController.swift
//  CollectionViewInsideTableView
//
//  Created by Sriram Prasad on 29/10/18.
//  Copyright © 2018 FullStackNet. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
var evenone = 3
var oddone = 2
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)as? TableViewCell
        cell?.collectionView.dataSource = self as! UICollectionViewDataSource
        cell?.collectionView.delegate = self as! UICollectionViewDelegate
        cell?.collectionView.tag = indexPath.row
       
        
        return cell!
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
  
}


extension ViewController: UICollectionViewDelegate,UICollectionViewDataSource{
   
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CCell", for: indexPath) as! cCollectionViewCell
        if (indexPath.row) == 0 {
            
        }
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//            let cellno = collectionView.cellForItem(at: i)
        if collectionView.tag == 0 {
            return 3
        }
        else if collectionView.tag == 2 {
        
            return 2
        }
        else
        {
            return 0
        }
    }
}
