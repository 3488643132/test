//
//  IndexTopicsListPart.swift
//  互动教程
//
//  Created by Apple on 2021/2/4.
//  Copyright © 2021 crazyit.ong. All rights reserved.
//

import SwiftUI

struct IndexTopicsListPart: View {
    let topicsImageList =  ["pencil.slash","paperplane","tray.fill","tray.full.fill","book","calendar","doc.text","flame","suit.club.fill"]
    let topicsNameList = ["ios Programming","Swift Programming","Advanced \nios Programming","Objective-C\nProgramming","Photoshop Tutorials","Illustartor Tutoririals","Photoshop Script\nTutoralis","PhootshoopCS5\nTUtorials","Excel Tuturials"]
    var body: some View {
        VStack(alignment: .leading)
            {
            Text("Popular Topics")
                .font(.system(size: 16))
                .padding(.leading,CGFloat(20))
                .foregroundColor(Color.init(red: 0.4, green: 0.4, blue: 0.4))
                .offset(x:CGFloat(0),y: CGFloat(10))
            
         ScrollView(Axis.Set.horizontal,showsIndicators: false)
            {
                VStack{
                HStack{
                    
                    NavigationLink(destination: PageTutorialList())
                    {
                        VStack{
                        Image(systemName: "pencil.slash")
                            .foregroundColor(Color.blue)
                            .font(.system(size: 40))
                        Text("Ios Programming")
                            .font(.system(size: 20))
                            .foregroundColor(Color.blue)
                        }
                    }
                
                        
                        NavigationLink(destination: PageTutorialList())
                        {
                            VStack{
                            Image(systemName: "book")
                                .foregroundColor(Color.blue)
                                .font(.system(size: 40))
                            Text("Ios Programming")
                                .font(.system(size: 20))
                                .foregroundColor(Color.blue)
                            }
                        }
                }
                    HStack{
                        
                        NavigationLink(destination: PageTutorialList())
                        {
                            VStack{
                            Image(systemName: "doc.text")
                                .foregroundColor(Color.blue)
                                .font(.system(size: 40))
                            Text("Ios Programming")
                                .font(.system(size: 20))
                                .foregroundColor(Color.blue)
                            }
                        }
                    
                            
                            NavigationLink(destination: PageTutorialList())
                            {
                                VStack{
                                Image(systemName: "flame")
                                    .foregroundColor(Color.blue)
                                    .font(.system(size: 40))
                                Text("Ios Programming")
                                    .font(.system(size: 20))
                                    .foregroundColor(Color.blue)
                                }
                            }
                    }
                }
                }
//                VStack{
//                    ForEach(0..<topicsImageList.count)
//                    {
//                        item in
//                        NavigationLink(destination: PageTutorialList(title:"\(self.topicsNameList[item])"))
//                        {
//                            Image(systemName: self.topicsImageList[item])
//                                .foregroundColor(Color.black)
//                                .font(.system(size: 25))
//                        }
//                    }
                    
                }
                .padding(.top,10)
                .padding(.bottom,10)
            }
//            .padding(.leading,20)
        }



struct IndexTopicsListPart_Previews: PreviewProvider {
    static var previews: some View {
        IndexTopicsListPart()
    }
}
