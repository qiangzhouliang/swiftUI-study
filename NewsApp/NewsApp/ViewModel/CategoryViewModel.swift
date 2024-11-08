//
//  CategoryViewModel.swift
//  NewsApp
//
//  Created by swan on 2024/11/7.
//

import Foundation

class CategoryViewModel: ObservableObject {
    
    private var service = CategoryService()
    
    // 分类数据
    @Published private(set) var categoryies: [Category] = Array(repeating: .mock, count: 4)
    // 分类数据是否加载完成
    @Published private(set) var loaded: Bool = false
    
    // 类型数据
    @Published private(set) var types = ["相关咨询","视频课程"]
    
    
    init() {
        list()
    }
    
    private func list(){
        service.list { (datas: [Category]?, msg, code) in
            guard let result = datas else { return }
            
            self.categoryies = result
            self.loaded = true
        }
    }
    
}
