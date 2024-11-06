//
//  SwiperControl.swift
//  NewsApp
//
//  Created by swan on 2024/11/5.
//

import SwiftUI

struct SwiperControl: UIViewRepresentable {
    var numOfPages: Int
    @Binding var currentPage: Int
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIView(context: Context) -> UIPageControl {
        let control = UIPageControl()
        control.numberOfPages = numOfPages
        control.addTarget(context.coordinator, action: #selector(context.coordinator.onChange(sender:)), for: .valueChanged)
        return control
    }
    
    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPage
    }
    
    typealias UIViewType = UIPageControl
    
    class Coordinator: NSObject {
        
        private var parent: SwiperControl
        
        init(_ parent: SwiperControl) {
            self.parent = parent
            
        }
        
        @objc func onChange(sender: UIPageControl){
            parent.currentPage = sender.currentPage
        }
    }
}

