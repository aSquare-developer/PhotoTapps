//
//  PhotosCollectionViewController.swift
//  PhotoTapps
//
//  Created by Artur Anissimov on 21.06.2020.
//  Copyright © 2020 Artur Anissimov. All rights reserved.
//

import UIKit

class PhotosCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 15
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath) as! PhotoCell
        
        cell.backgroundColor = .black
    
        return cell
    }

}


extension PhotosCollectionViewController: UICollectionViewDelegateFlowLayout {
    
}
