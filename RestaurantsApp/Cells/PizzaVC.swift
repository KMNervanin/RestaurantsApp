//
//  PizzaVC.swift
//  RestaurantsApp
//
//  Created by Дария Синицына on 11.07.2023.
//

import UIKit

class PizzaVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    @IBOutlet weak var collectionview: UICollectionView!
    
    var navTitle = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionview.backgroundColor = .green
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collViewCell", for: indexPath)
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        collectionview.visibleCells
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationItem.title = navTitle
    }
    
}
