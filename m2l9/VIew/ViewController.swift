//
//  ViewController.swift
//  m2l9
//
//  Created by AndreyM on 31.10.2026.
//

import UIKit

class ViewController: UIViewController {
    
    private let items = MockData.getData()

    private lazy var layout : UICollectionViewFlowLayout = {
        $0.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        $0.scrollDirection = .vertical
        $0.minimumLineSpacing = 10
        return $0
    }(UICollectionViewFlowLayout())
    
    private lazy var collectionView : UICollectionView = {
        $0.dataSource = self
        $0.backgroundColor = .white
        $0.register(CollectionCell.self, forCellWithReuseIdentifier: CollectionCell.cellId)
        return $0
    }(UICollectionView(frame: view.frame, collectionViewLayout: layout))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(collectionView)
        
    }
}

extension ViewController: UICollectionViewDataSource {
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        items.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionCell.cellId, for: indexPath) as! CollectionCell
        cell.setupCell(items: items[indexPath.item])
        
        cell.actionBtn = { [weak self] in
            guard let self = self else { return }
            
            let details = DetailsViewController(item: self.items[indexPath.item])
            self.navigationController?.pushViewController(details, animated: true)
            
        }
        
        return cell
    }
    
    
}
