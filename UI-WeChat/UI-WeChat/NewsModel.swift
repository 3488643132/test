//
//  NewsModel.swift
//  UI-WeChat
//
//  Created by Apple on 2021/3/31.
//  Copyright © 2021 crazyit.ong. All rights reserved.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
struct newsModel: Codable {
    let reason: String
    let result: Result
    let error_code: Int
}

// MARK: - Result
struct Result: Codable {
    let stat: String
    let data: [Datum]
    let page, pageSize: String
}

// MARK: - Datum
struct Datum: Codable {
    let uniquekey, title, date: String
    let category: Category
    let author_name: String
    let url: String
    let thumbnail_pic_s: String
    let thumbnail_pic_s02, thumbnail_pic_s03: String?
    let is_content: String

}

enum Category: String, Codable {
    case category = "头条"
}
