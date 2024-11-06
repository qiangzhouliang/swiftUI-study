//
//  SizePreferenceKey.swift
//  NewsApp
//
//  Created by swan on 2024/11/6.
//

import SwiftUI

struct SizePreferenceKey: PreferenceKey {
    static var defaultValue: CGSize = .zero
    
    static func reduce(value: inout CGSize, nextValue: () -> CGSize) {
        value = nextValue()
    }
    
    typealias Value = CGSize
}

struct MessureSizeModifier: ViewModifier {
    func body(content: Content) -> some View {
        content.background(GeometryReader { proxy in
            Color.clear
                .preference(key: SizePreferenceKey.self, value: proxy.size)
        })
    }
}


extension View {
    func measureSize(perform action:@escaping (CGSize) -> Void) -> some View {
        self.modifier(MessureSizeModifier())
            .onPreferenceChange(SizePreferenceKey.self, perform: action)
    }
}
