@_private(sourceFile: "Swiper.swift") import NewsApp
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension Swiper.Coordinator {
    @_dynamicReplacement(for: pageViewController(_:didFinishAnimating:previousViewControllers:transitionCompleted:)) private func __preview__pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        #sourceLocation(file: "/Users/swan/Desktop/self_project/iOS/swiftUI/NewsApp/NewsApp/views/views/Swiper.swift", line: 68)
            if completed, let visiableController = pageViewController.viewControllers?.first, let index = controllers.firstIndex(of: visiableController) {
                parent.currentPage = index
            }
        
#sourceLocation()
    }
}

extension Swiper.Coordinator {
    @_dynamicReplacement(for: pageViewController(_:viewControllerAfter:)) private func __preview__pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        #sourceLocation(file: "/Users/swan/Desktop/self_project/iOS/swiftUI/NewsApp/NewsApp/views/views/Swiper.swift", line: 58)
            guard let index = controllers.firstIndex(of: viewController) else { return nil }
            if index == controllers.count - 1 {
                return controllers.first
            }
            
            return controllers[index + __designTimeInteger("#100665.[1].[7].[4].[2].[0].value.[0]", fallback: 1)]
        
#sourceLocation()
    }
}

extension Swiper.Coordinator {
    @_dynamicReplacement(for: pageViewController(_:viewControllerBefore:)) private func __preview__pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        #sourceLocation(file: "/Users/swan/Desktop/self_project/iOS/swiftUI/NewsApp/NewsApp/views/views/Swiper.swift", line: 49)
            guard let index = controllers.firstIndex(of: viewController) else { return nil }
            if index == 0 {
                return controllers.last
            }
            
            return controllers[index - __designTimeInteger("#100665.[1].[7].[3].[2].[0].value.[0]", fallback: 1)]
        
#sourceLocation()
    }
}

extension Swiper {
    @_dynamicReplacement(for: makeCoordinator()) private func __preview__makeCoordinator() -> Coordinator {
        #sourceLocation(file: "/Users/swan/Desktop/self_project/iOS/swiftUI/NewsApp/NewsApp/views/views/Swiper.swift", line: 33)
        Coordinator(self)
    
#sourceLocation()
    }
}

extension Swiper {
    @_dynamicReplacement(for: updateUIViewController(_:context:)) private func __preview__updateUIViewController(_ uiViewController: UIPageViewController, context: Context) {
        #sourceLocation(file: "/Users/swan/Desktop/self_project/iOS/swiftUI/NewsApp/NewsApp/views/views/Swiper.swift", line: 29)
        uiViewController.setViewControllers([context.coordinator.controllers[currentPage]], direction: .forward, animated: __designTimeBoolean("#100665.[1].[4].[0].modifier[0].arg[2].value", fallback: true))
    
#sourceLocation()
    }
}

extension Swiper {
    @_dynamicReplacement(for: makeUIViewController(context:)) private func __preview__makeUIViewController(context: Context) -> UIPageViewController {
        #sourceLocation(file: "/Users/swan/Desktop/self_project/iOS/swiftUI/NewsApp/NewsApp/views/views/Swiper.swift", line: 22)
        let pageViewController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal)
        pageViewController.dataSource = context.coordinator
        pageViewController.delegate = context.coordinator
        return pageViewController
    
#sourceLocation()
    }
}

import struct NewsApp.Swiper
#Preview {
    @State var currentIndex: Int = 0
    Swiper(items: [
        Color.yellow,
        .blue,
        .green,
        .red
    ], currentPage: $currentIndex)
}



