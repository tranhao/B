//
//  JSONParser.swift
//  TaxiDriver
//
//  Created by nmtien92 on 2/4/17.
//  Copyright © 2017 taxionline. All rights reserved.
//

import UIKit
import SwiftyJSON

class JSONParser {
    internal static func news(data: Data) -> (String, String, String, String) {
        let json: JSON = JSON(data: data)
        let news_id = json["news_id"].stringValue
        let content = json["content"].stringValue
        let image = json["image"].stringValue
        let title = json["title"].stringValue
        return (news_id, content, image, title)
    }

    internal static func auth(data: Data) -> (Bool, String, String) {
        let json: JSON = JSON(data: data)
        
        print(json)
        let success = json["success"].boolValue
        let message = json["message"].stringValue
        let token = json["token"].stringValue
        return (success, message, token)
    }
    //API 11: GỬI DỮ LIỆU VỊ TRÍ
    internal static func guestStatus(data : Data) -> (Bool, String) {
        let json : JSON = JSON(data: data)
        let success = json["success"].boolValue
        let message = json["message"].stringValue
        return (success, message)
        
    }
    //API 24:CẬP NHẬT THÔNG TIN REQUEST (khi lái xe accept)
    internal static func Accepted(data : Data) -> (Bool, String) {
        let json : JSON = JSON(data: data)
        let success = json["success"].boolValue
        let message = json["message"].stringValue
        return (success, message)
        
    }
    //API 24.2:CẬP NHẬT THÔNG TIN REQUEST (khi lái xe accept)
    internal static func Accepted2(data : Data) -> (Bool, String) {
        let json : JSON = JSON(data: data)
        let success = json["success"].boolValue
        let message = json["message"].stringValue
        return (success, message)
        
    }


    //API 42: CHẤP NHẬN MỘT REQUEST (THEO CƠ CHẾ BIDDING)
    internal static func Access(data : Data) -> (Bool,String) {
        let json : JSON = JSON(data: data)
        let success = json["success"].boolValue
        let message = json["message"].stringValue

        return (success, message)
        
    }
    //API 8: ĐỔI MẬT KHẨU (DÙNG CHO TẤT CẢ NGƯỜI SỬ DỤNG)
    internal static func changepass(data : Data) -> (Bool, String) {
        let json : JSON = JSON(data: data)
        let success = json["success"].boolValue
        let message = json["message"].stringValue
        return (success, message)
    }
    //API 22: TẠO MỚI REQUEST KHI TÀI XẾ BẮT KHÁCH DỌC ĐƯỜNG
    internal static func own(data : Data) -> (Bool, String) {
        let json : JSON = JSON(data: data)
        let success = json["success"].boolValue
        let id = json["message"].stringValue
        return (success, id)
    }
//    //API 17: LẤY THÔNG TIN CƠ BẢN CỦA NGƯỜI DÙNG HIỆN TẠI
//
//    internal static func basic(data : Data) -> (Bool, BasicObject) {
//        let jsons : JSON = JSON(data: data)
//        let json = jsons["userDetail"]
//        let success = jsons["success"].boolValue
//        let id: String = json["_id"].stringValue
//        let name: String = json["name"].stringValue
//        let phone: String = json["phone"].stringValue
//        let role: String = json["role"].stringValue
//
//        let email: String = json["email"].stringValue
//        let sex: String = json["sex"].stringValue
//        let dob: String = json["dob"].stringValue
//        let avatar: String = json["avatar"].stringValue
//        let drvLisence: String = json["drvLisence"].stringValue
//        let car_plate: String = json["car_plate"].stringValue
//        
//        let car_desc: String = json["car_desc"].stringValue
//
//        let carType: Int = json["carType"].intValue
//        let radioID: String = json["radioID"].stringValue
//        
//        let basicObject = BasicObject(id: id, name: name, phone: phone, role: role, email: email, sex: sex, dob: dob, avatar: avatar, drvLisence: drvLisence, car_plate: car_plate, car_desc: car_desc, carType: carType, radioID: radioID)
//        
//        return(success, basicObject)
//    }
//
    internal static func arrNews(data: Data) -> ([NewsObject]){
        let jsons : JSON = JSON(data: data)
        let news = jsons["news"].arrayValue
        
        var arrNews = [NewsObject]()

        for i in 0..<news.count {
            let newsIndex = news[i].dictionary
            let content = newsIndex?["content"]?.stringValue
            let title = newsIndex?["title"]?.stringValue
            let news_id = newsIndex?["news_id"]?.stringValue
            let image = newsIndex?["image"]?.stringValue
            let newsObject = NewsObject(news_id: news_id!, content: content!, image: image!, title: title!)
            arrNews.append(newsObject)

        }
        return arrNews

    
    }
    
}
