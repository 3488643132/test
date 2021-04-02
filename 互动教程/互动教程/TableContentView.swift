//
//  TableContentView.swift
//  互动教程
//
//  Created by Apple on 2021/2/8.
//  Copyright © 2021 crazyit.ong. All rights reserved.
//

import SwiftUI

struct TableContentView: View {
    var body: some View {
        TabView{
            ContenView()
                .tabItem({
                    Image(systemName: "house.fill")
                    Text("Home")
                })
            PageTestlist()
            .tabItem({
                Image(systemName: "pencil.and.ellipsis.rectangle")
                Text("Quiz")
            })
            PageAssistant()
            .tabItem({
                Image(systemName: "bubble.left.and.bubble.right.fill")
                Text("Help")
            })
            PageProfile()
            .tabItem({
                Image(systemName: "gear")
                Text("Profile")
            })
        }
        .accentColor(Color.init(red: 255/255, green: 123/255, blue: 109/255))
    }
}

struct TableContentView_Previews: PreviewProvider {
    static var previews: some View {
        TableContentView()
    }
}
