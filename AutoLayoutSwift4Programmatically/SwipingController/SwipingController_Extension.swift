//
//  SwipingControllerExtension.swift
//  AutoLayoutSwift4Programmatically
//
//  Created by Kilian on 03.01.18.
//  Copyright © 2018 Kilian. All rights reserved.
//

import UIKit

extension SwipingController {
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        
        coordinator.animate(alongsideTransition: { (_) in
            self.collectionViewLayout.invalidateLayout()
            
            if (self.pageControl.currentPage == 0) {
                self.collectionView?.contentOffset = .zero
            } else {
                let indexPath = IndexPath(item: self.pageControl.currentPage, section: 0)
                self.collectionView?.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
            }
            
        }) { (bear_) in
        }
    }
}


