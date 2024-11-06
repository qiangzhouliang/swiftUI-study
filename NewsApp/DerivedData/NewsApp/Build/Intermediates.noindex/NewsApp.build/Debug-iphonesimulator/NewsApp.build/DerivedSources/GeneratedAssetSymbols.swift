import Foundation
#if canImport(AppKit)
import AppKit
#endif
#if canImport(UIKit)
import UIKit
#endif
#if canImport(SwiftUI)
import SwiftUI
#endif
#if canImport(DeveloperToolsSupport)
import DeveloperToolsSupport
#endif

#if SWIFT_PACKAGE
private let resourceBundle = Foundation.Bundle.module
#else
private class ResourceBundleClass {}
private let resourceBundle = Foundation.Bundle(for: ResourceBundleClass.self)
#endif

// MARK: - Color Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ColorResource {

}

// MARK: - Image Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ImageResource {

    /// The "banner1" asset catalog image resource.
    static let banner1 = DeveloperToolsSupport.ImageResource(name: "banner1", bundle: resourceBundle)

    /// The "banner2" asset catalog image resource.
    static let banner2 = DeveloperToolsSupport.ImageResource(name: "banner2", bundle: resourceBundle)

    /// The "banner3" asset catalog image resource.
    static let banner3 = DeveloperToolsSupport.ImageResource(name: "banner3", bundle: resourceBundle)

    /// The "banner4" asset catalog image resource.
    static let banner4 = DeveloperToolsSupport.ImageResource(name: "banner4", bundle: resourceBundle)

    /// The "browse_record" asset catalog image resource.
    static let browseRecord = DeveloperToolsSupport.ImageResource(name: "browse_record", bundle: resourceBundle)

    /// The "common_problem" asset catalog image resource.
    static let commonProblem = DeveloperToolsSupport.ImageResource(name: "common_problem", bundle: resourceBundle)

    /// The "learn_archives" asset catalog image resource.
    static let learnArchives = DeveloperToolsSupport.ImageResource(name: "learn_archives", bundle: resourceBundle)

    /// The "login_bg" asset catalog image resource.
    static let loginBg = DeveloperToolsSupport.ImageResource(name: "login_bg", bundle: resourceBundle)

    /// The "mine_icon" asset catalog image resource.
    static let mineIcon = DeveloperToolsSupport.ImageResource(name: "mine_icon", bundle: resourceBundle)

    /// The "my_point" asset catalog image resource.
    static let myPoint = DeveloperToolsSupport.ImageResource(name: "my_point", bundle: resourceBundle)

    /// The "newbanner1" asset catalog image resource.
    static let newbanner1 = DeveloperToolsSupport.ImageResource(name: "newbanner1", bundle: resourceBundle)

    /// The "newbanner2" asset catalog image resource.
    static let newbanner2 = DeveloperToolsSupport.ImageResource(name: "newbanner2", bundle: resourceBundle)

    /// The "newbanner3" asset catalog image resource.
    static let newbanner3 = DeveloperToolsSupport.ImageResource(name: "newbanner3", bundle: resourceBundle)

    /// The "newbanner4" asset catalog image resource.
    static let newbanner4 = DeveloperToolsSupport.ImageResource(name: "newbanner4", bundle: resourceBundle)

    /// The "online_service_icon" asset catalog image resource.
    static let onlineServiceIcon = DeveloperToolsSupport.ImageResource(name: "online_service_icon", bundle: resourceBundle)

    /// The "question_mark" asset catalog image resource.
    static let questionMark = DeveloperToolsSupport.ImageResource(name: "question_mark", bundle: resourceBundle)

    /// The "setting" asset catalog image resource.
    static let setting = DeveloperToolsSupport.ImageResource(name: "setting", bundle: resourceBundle)

    /// The "study_icon" asset catalog image resource.
    static let studyIcon = DeveloperToolsSupport.ImageResource(name: "study_icon", bundle: resourceBundle)

    /// The "task_icon" asset catalog image resource.
    static let taskIcon = DeveloperToolsSupport.ImageResource(name: "task_icon", bundle: resourceBundle)

    /// The "tool_bar_left_icon" asset catalog image resource.
    static let toolBarLeftIcon = DeveloperToolsSupport.ImageResource(name: "tool_bar_left_icon", bundle: resourceBundle)

    /// The "version_information" asset catalog image resource.
    static let versionInformation = DeveloperToolsSupport.ImageResource(name: "version_information", bundle: resourceBundle)

}

// MARK: - Color Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

}
#endif

// MARK: - Image Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    /// The "banner1" asset catalog image.
    static var banner1: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .banner1)
#else
        .init()
#endif
    }

    /// The "banner2" asset catalog image.
    static var banner2: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .banner2)
#else
        .init()
#endif
    }

    /// The "banner3" asset catalog image.
    static var banner3: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .banner3)
#else
        .init()
#endif
    }

    /// The "banner4" asset catalog image.
    static var banner4: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .banner4)
#else
        .init()
#endif
    }

    /// The "browse_record" asset catalog image.
    static var browseRecord: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .browseRecord)
#else
        .init()
#endif
    }

    /// The "common_problem" asset catalog image.
    static var commonProblem: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .commonProblem)
#else
        .init()
#endif
    }

    /// The "learn_archives" asset catalog image.
    static var learnArchives: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .learnArchives)
#else
        .init()
#endif
    }

    /// The "login_bg" asset catalog image.
    static var loginBg: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .loginBg)
#else
        .init()
#endif
    }

    /// The "mine_icon" asset catalog image.
    static var mineIcon: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .mineIcon)
#else
        .init()
#endif
    }

    /// The "my_point" asset catalog image.
    static var myPoint: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .myPoint)
#else
        .init()
#endif
    }

    /// The "newbanner1" asset catalog image.
    static var newbanner1: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .newbanner1)
#else
        .init()
#endif
    }

    /// The "newbanner2" asset catalog image.
    static var newbanner2: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .newbanner2)
#else
        .init()
#endif
    }

    /// The "newbanner3" asset catalog image.
    static var newbanner3: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .newbanner3)
#else
        .init()
#endif
    }

    /// The "newbanner4" asset catalog image.
    static var newbanner4: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .newbanner4)
#else
        .init()
#endif
    }

    /// The "online_service_icon" asset catalog image.
    static var onlineServiceIcon: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .onlineServiceIcon)
#else
        .init()
#endif
    }

    /// The "question_mark" asset catalog image.
    static var questionMark: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .questionMark)
#else
        .init()
#endif
    }

    /// The "setting" asset catalog image.
    static var setting: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .setting)
#else
        .init()
#endif
    }

    /// The "study_icon" asset catalog image.
    static var studyIcon: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .studyIcon)
#else
        .init()
#endif
    }

    /// The "task_icon" asset catalog image.
    static var taskIcon: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .taskIcon)
#else
        .init()
#endif
    }

    /// The "tool_bar_left_icon" asset catalog image.
    static var toolBarLeftIcon: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .toolBarLeftIcon)
#else
        .init()
#endif
    }

    /// The "version_information" asset catalog image.
    static var versionInformation: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .versionInformation)
#else
        .init()
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    /// The "banner1" asset catalog image.
    static var banner1: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .banner1)
#else
        .init()
#endif
    }

    /// The "banner2" asset catalog image.
    static var banner2: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .banner2)
#else
        .init()
#endif
    }

    /// The "banner3" asset catalog image.
    static var banner3: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .banner3)
#else
        .init()
#endif
    }

    /// The "banner4" asset catalog image.
    static var banner4: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .banner4)
#else
        .init()
#endif
    }

    /// The "browse_record" asset catalog image.
    static var browseRecord: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .browseRecord)
#else
        .init()
#endif
    }

    /// The "common_problem" asset catalog image.
    static var commonProblem: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .commonProblem)
#else
        .init()
#endif
    }

    /// The "learn_archives" asset catalog image.
    static var learnArchives: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .learnArchives)
#else
        .init()
#endif
    }

    /// The "login_bg" asset catalog image.
    static var loginBg: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .loginBg)
#else
        .init()
#endif
    }

    /// The "mine_icon" asset catalog image.
    static var mineIcon: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .mineIcon)
#else
        .init()
#endif
    }

    /// The "my_point" asset catalog image.
    static var myPoint: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .myPoint)
#else
        .init()
#endif
    }

    /// The "newbanner1" asset catalog image.
    static var newbanner1: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .newbanner1)
#else
        .init()
#endif
    }

    /// The "newbanner2" asset catalog image.
    static var newbanner2: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .newbanner2)
#else
        .init()
#endif
    }

    /// The "newbanner3" asset catalog image.
    static var newbanner3: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .newbanner3)
#else
        .init()
#endif
    }

    /// The "newbanner4" asset catalog image.
    static var newbanner4: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .newbanner4)
#else
        .init()
#endif
    }

    /// The "online_service_icon" asset catalog image.
    static var onlineServiceIcon: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .onlineServiceIcon)
#else
        .init()
#endif
    }

    /// The "question_mark" asset catalog image.
    static var questionMark: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .questionMark)
#else
        .init()
#endif
    }

    /// The "setting" asset catalog image.
    static var setting: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .setting)
#else
        .init()
#endif
    }

    /// The "study_icon" asset catalog image.
    static var studyIcon: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .studyIcon)
#else
        .init()
#endif
    }

    /// The "task_icon" asset catalog image.
    static var taskIcon: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .taskIcon)
#else
        .init()
#endif
    }

    /// The "tool_bar_left_icon" asset catalog image.
    static var toolBarLeftIcon: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .toolBarLeftIcon)
#else
        .init()
#endif
    }

    /// The "version_information" asset catalog image.
    static var versionInformation: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .versionInformation)
#else
        .init()
#endif
    }

}
#endif

// MARK: - Thinnable Asset Support -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ColorResource {

    private init?(thinnableName: Swift.String, bundle: Foundation.Bundle) {
#if canImport(AppKit) && os(macOS)
        if AppKit.NSColor(named: NSColor.Name(thinnableName), bundle: bundle) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIColor(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}
#endif

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ImageResource {

    private init?(thinnableName: Swift.String, bundle: Foundation.Bundle) {
#if canImport(AppKit) && os(macOS)
        if bundle.image(forResource: NSImage.Name(thinnableName)) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIImage(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !targetEnvironment(macCatalyst)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

