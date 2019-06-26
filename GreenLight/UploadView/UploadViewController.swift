//
//  UploadViewController.swift
//  GreenLight
//
//  Created by HongWeonpyo on 26/06/2019.
//  Copyright © 2019 ShoppingBook. All rights reserved.
//

import UIKit
import TLPhotoPicker
import Photos

class UploadViewController: UIViewController, TLPhotosPickerViewControllerDelegate {
    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    let dfImage = UIImage(named: "default")!
    var imageArr :[UIImage] = [UIImage(named: "default")!]
    var selectedAssets = [TLPHAsset]()
    let textView = UITextView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "게시글 작성"
        navigationItem.leftBarButtonItem = UIBarButtonItem.init(title: "취소", style: .done, target: self, action: #selector(dismissAction))
        navigationItem.rightBarButtonItem = UIBarButtonItem.init(title: "확인", style: .done, target: self, action: #selector(okAction))
        configureView()
        collectionView.dataSource = self
        collectionView.register(CustomCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.delegate = self
        
    }
    
    // 취소 버튼 눌렀을때.
    @objc private func dismissAction() {
        dismiss(animated: true)
    }
    
    //확인 버튼 눌렀을때, 사진 및 텍스트 필드 저장해야함
    @objc private func okAction() {
    
    }
    

    
    
    
    
    var height: CGFloat = 0
    func configureView() {
        let width = (view.frame.size.width - 50) / 3
        height = 2 * width - 10
        view.addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .white
        
        collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 10).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor,constant: 10).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        collectionView.heightAnchor.constraint(equalToConstant: height + 10).isActive = true
        
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: height, height: height)
        layout.scrollDirection = .horizontal
        
        view.addSubview(textView)
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.topAnchor.constraint(equalTo: collectionView.bottomAnchor,constant: 10).isActive = true
        textView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor,constant: 10).isActive = true
        textView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor,constant: -10).isActive = true
        textView.heightAnchor.constraint(equalToConstant: height + 10).isActive = true
        textView.alwaysBounceVertical = true
        self.textView.layer.borderWidth = 1.0
        self.textView.layer.borderColor = UIColor.black.cgColor
        
        
    }
    
    func dismissPhotoPicker(withTLPHAssets: [TLPHAsset]) {
        self.selectedAssets = withTLPHAssets
        for x in self.selectedAssets {
            if let image = x.fullResolutionImage {
                imageArr.append(image)
            }
        }
        if let index = imageArr.firstIndex(of: dfImage) {
            imageArr.remove(at: index)
        }
        imageArr.append(dfImage)
        self.collectionView.reloadData()
        let toPoint = CGPoint(x: CGFloat(imageArr.count) * (height + 5), y: 0)
        self.collectionView.setContentOffset(toPoint, animated: true)
    }
}

extension UploadViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return imageArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCell
        cell.imageView.image = imageArr[indexPath.row]
        return cell
    }
    
    
}



extension UploadViewController: TLPhotosPickerLogDelegate {
    //For Log User Interaction
    func selectedCameraCell(picker: TLPhotosPickerViewController) {
        print("selectedCameraCell")
    }
    
    func selectedPhoto(picker: TLPhotosPickerViewController, at: Int) {
        print("selectedPhoto")
    }
    
    func deselectedPhoto(picker: TLPhotosPickerViewController, at: Int) {
        print("deselectedPhoto")
    }
    
    func selectedAlbum(picker: TLPhotosPickerViewController, title: String, at: Int) {
        print("selectedAlbum")
    }
}


extension UploadViewController : UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if (indexPath.row + 1 == imageArr.count) {
            let viewController = CustomPhotoPickerViewController()
            viewController.delegate = self
            
            
            var configure = TLPhotosPickerConfigure()
            configure.numberOfColumn = 3
            viewController.configure = configure
            viewController.selectedAssets = self.selectedAssets
            viewController.logDelegate = self
            
            self.present(viewController, animated: true, completion: nil)
        }
        
        
    }
}
