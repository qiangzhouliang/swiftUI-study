//
//  MineItemView.swift
//  NewsApp
//
//  Created by swan on 2024/11/6.
//

import SwiftUI

struct MineItemView: View {
    
    var image: String
    var title: String
    var showDivider: Bool? = true
    
    
    var body: some View {
        VStack {
            HStack{
                Image(image)
                    .resizable()
                    .frame(width: 16, height: 16)
                    .padding(.leading)
                
                Text(title)
                    .padding(.leading, 4)
                
                Spacer()
                
                Image(systemName: "chevron.forward")
                    .padding(.trailing)
            }
            .padding(.top, 12)
            .padding(.bottom, 3)
            .padding(.bottom, showDivider == true ? 0 : 5.0)
            
            if showDivider == true {
                Divider().padding(.leading, 44)
            }
        }
    }
}

#Preview {
    MineItemView(image: "", title: "测试")
}
