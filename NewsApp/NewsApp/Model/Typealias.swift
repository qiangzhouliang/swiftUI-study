//
//  Typealias.swift
//  NewsApp
//
//  Created by swan on 2024/11/7.
// 闭包自定义

import Foundation

typealias ListCompletion<T: Codable> = (_ datas: [T]?, _ msg: String, _ code: Int) -> ()

typealias DataCompletion<T: Codable> = (_ data: T?, _ msg: String, _ code: Int) -> ()
