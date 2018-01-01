//
//  UIViewController+ReferenceLibraryVC.swift
//  
//
//  Created by Anton Novoselov on 01/01/2018.
//

import UIKit

extension UIViewController {
    func presentReferenceLibraryVC(forTerm term: String) {
        if UIReferenceLibraryViewController.dictionaryHasDefinition(forTerm: term) {
            let vc = UIReferenceLibraryViewController(term: term)
            self.present(vc, animated: true)
        }
    }
}
