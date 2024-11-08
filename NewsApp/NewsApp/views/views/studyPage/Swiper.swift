//
//  Swiper.swift
//  NewsApp
//
//  Created by swan on 2024/11/5.
//

import SwiftUI

struct Swiper<SwiperItem:View>: UIViewControllerRepresentable {
    
    @Binding private var currentPage: Int
    
    private var items:[SwiperItem]
    
    init(items: [SwiperItem], currentPage: Binding<Int>) {
        self.items = items
        self._currentPage = currentPage
    }
    
    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageViewController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal)
        pageViewController.dataSource = context.coordinator
        pageViewController.delegate = context.coordinator
        return pageViewController
    }
    
    func updateUIViewController(_ uiViewController: UIPageViewController, context: Context) {
        uiViewController.setViewControllers([context.coordinator.controllers[currentPage]], direction: .forward, animated: true)
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    typealias UIViewControllerType = UIPageViewController
    
    class Coordinator: NSObject, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
        
        private var parent: Swiper
        var controllers = [UIViewController]()
        
        init(_ parent: Swiper) {
            self.parent = parent
            controllers = parent.items.map({ UIHostingController(rootView: $0) })
        }
        // 左滑
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
            guard let index = controllers.firstIndex(of: viewController) else { return nil }
            if index == 0 {
                return controllers.last
            }
            
            return controllers[index - 1]
        }
        
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
            guard let index = controllers.firstIndex(of: viewController) else { return nil }
            if index == controllers.count - 1 {
                return controllers.first
            }
            
            return controllers[index + 1]
        }
        
        /// 停止滑动
        func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
            if completed, let visiableController = pageViewController.viewControllers?.first, let index = controllers.firstIndex(of: visiableController) {
                parent.currentPage = index
            }
        }
        
        
    }
}

//#Preview {
//    @State var currentIndex: Int = 0
//    Swiper(items: [
//        Color.yellow,
//        .blue,
//        .green,
//        .red
//    ], currentPage: $currentIndex)
//}
