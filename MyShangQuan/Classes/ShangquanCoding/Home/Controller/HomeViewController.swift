//
//  HomeViewController.swift
//  MyShangQuan
//
//  Created by o g m on 2018/10/28.
//  Copyright © 2018 o g m. All rights reserved.
//

import UIKit
import SnapKit

private let KItemMargin : CGFloat = 12
private let KItemW = XMM_ScreenWidth
private let KItemH = KItemW * 3 / 4
private let kHeaderH : CGFloat = 50

//标示
private let kNormalCellID = "kNormalCellID"
private let kHeaderViewID = "kHeaderViewID"

class HomeViewController: UIViewController {
  
    private lazy var collectionView : UICollectionView = {[unowned self] in
        //1.创建布局
        let layout = UICollectionViewFlowLayout() //流水布局
        layout.itemSize = CGSize(width: KItemW, height: KItemH)
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = KItemMargin
        layout.headerReferenceSize = CGSize(width: KItemW, height: kHeaderH)//组头
        //2.创建UICollectionView
        let collectionView = UICollectionView(frame: self.view.bounds, collectionViewLayout: layout)
        collectionView.backgroundColor = .white
        collectionView.dataSource = self
        
        //注册cell
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: kNormalCellID)
        //注册组头可以放view
//        collectionView.register(UICollectionReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: kHeaderViewID)
    
        collectionView.register(UINib(nibName: "CollectionHeaderView", bundle: nil), forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: kHeaderViewID)
        
        return collectionView
        
    }()
    

    //系统回调函数
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //设置UI界面
        setupUI()
    }
}

//设置UI界面
extension HomeViewController{
    private func setupUI(){
        //将UIcollectionView 添加到控制器View中
        view.addSubview(collectionView)
        collectionView.snp.makeConstraints { (make) in
            make.top.equalTo(-XMM_StatusBar)
            make.edges.equalTo(view)
        }

    }
}

//遵循collectionView.s数据源协议，实现接口
extension HomeViewController : UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 7
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //1.获取cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: kNormalCellID, for: indexPath)
        cell.backgroundColor = .red
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        //1.取出section的headerView
    
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: kHeaderViewID, for: indexPath)
        
            //        headerView.backgroundColor = .green
        return headerView
        
    }
}
