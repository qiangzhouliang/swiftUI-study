//
//  NewsAppApp.swift
//  NewsApp
//
//  Created by swan on 2024/11/5.
//

import SwiftUI

@main
struct NewsAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(UserViewModel()) // 全局使用
        }
    }
}
