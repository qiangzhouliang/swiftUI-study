//
//  DataRequestExtension.swift
//  NewsApp
//
//  Created by swan on 2024/11/7.
// 接口请求扩展封装

import Foundation
import Alamofire

extension DataRequest {
    
    func json<T: Codable>(completion: @escaping ListCompletion<T>) {
        self.responseJSON { response in
            do {
                let decoder = JSONDecoder()
                guard let data = response.data else {
                    completion(nil, "数据为空，解析异常", 1000)
                    return
                }
                
                let result = try decoder.decode(ListResponse<T>.self, from: data)
                print(result)
                completion(result.data, result.msg, result.code)
            } catch {
                completion(nil, "解析异常", 1000)
            }
        }
    }
    
    func json<T: Codable>(completion: @escaping DataCompletion<T>) {
        self.responseJSON { response in
            do {
                let decoder = JSONDecoder()
                guard let data = response.data else {
                    completion(nil, "数据为空，解析异常", 1000)
                    return
                }
                
                let result = try decoder.decode(DataResponse<T>.self, from: data)
                print(result)
                completion(result.data, result.msg, result.code)
            } catch {
                completion(nil, "解析异常", 1000)
            }
        }
    }
    
}
