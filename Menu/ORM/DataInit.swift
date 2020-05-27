//
//  DataInit.swift
//  ELeMel
//
//  Created by Aki on 2020/5/28.
//  Copyright © 2020 Aki. All rights reserved.
//

import Foundation
import UIKit

class DataInit {
    
    
    // MARK: 对数据库的数据进行初始化载入
    
    static func initData() {
        let res = RestaurantModel()
        res.name = "点都德（七宝店）"
        res.notice = "用餐高峰期下单的顾客请耐心等待，多谢您的理解与支持！（满减与特价菜品互不共享）"
        res.category = ""
        res.address = ""
        res.phoneNum = ""
        res.openTime = ""
        res.rates = Float(0)
        res.productionCount = 5
        res.restaurantIcon = UIImage(named: "diandude_icon")
        res.restaurantPoster = UIImage(named: "diandude_poster")
        res.restaurantPhoto = [UIImage(named: "diandude_poster")!]
        
        // 保存了以后才有ID
        res.saveToDB()
        
        let p1 = ProductionModel()
        p1.name = "金枕榴莲酥"
        p1.price = 34
        p1.ingredients = "榴莲"
        p1.info = ""
        p1.saleCount = 170
        p1.restaurantID = res.ID
        p1.rates = 0.92
        p1.productionPhoto = UIImage(named: "jzlls")
        
        let p2 = ProductionModel()
        p2.name = "香煎萝卜糕"
        p2.price = 12
        p2.ingredients = "萝卜，面粉"
        p2.info = ""
        p2.saleCount = 337
        p2.restaurantID = res.ID
        p2.rates = 1.0
        p2.productionPhoto = UIImage(named: "xjlbg")
        
        let p3 = ProductionModel()
        p3.name = "百合酱凤爪"
        p3.price = 34
        p3.ingredients = "鸡爪"
        p3.info = ""
        p3.saleCount = 514
        p3.restaurantID = res.ID
        p3.rates = 0.98
        p3.productionPhoto = UIImage(named: "bhjfz")
        
        let p4 = ProductionModel()
        p4.name = "金牌虾饺皇"
        p4.price = 27
        p4.ingredients = "海虾，面粉"
        p4.info = "精选新鲜虾仁，汁浓醇厚，饺皮晶莹十三褶"
        p4.saleCount = 662
        p4.restaurantID = res.ID
        p4.rates = 1.0
        p4.productionPhoto = UIImage(named: "jpxjh")
        
        let p5 = ProductionModel()
        p5.name = "沙爹蒸金钱肚"
        p5.price = 40
        p5.ingredients = "牛肚"
        p5.info = ""
        p5.saleCount = 232
        p5.restaurantID = res.ID
        p5.rates = 1.0
        p5.productionPhoto = UIImage(named: "sdzjqd")
        
        res.dishes = [p1, p2, p3, p4, p5]
        res.saveDishesToDB()
        
        initData2()
        
    }
    
    static func initData2() {
        let res = RestaurantModel()
        res.name = "大胡子烧烤"
        res.notice = "精选每一份食材是我们对顾客的保障！美味和安全，大胡子能给到你！"
        res.category = ""
        res.address = ""
        res.phoneNum = ""
        res.openTime = ""
        res.rates = Float(0)
        res.productionCount = 5
        res.restaurantIcon = UIImage(named: "dhzsk_icon")
        res.restaurantPoster = UIImage(named: "dhzsk_poster")
        res.restaurantPhoto = [UIImage(named: "dhzsk_poster")!]
        
        // 保存了以后才有ID
        res.saveToDB()
        
        let p1 = ProductionModel()
        p1.name = "土豆"
        p1.price = 2
        p1.ingredients = "土豆"
        p1.info = ""
        p1.saleCount = 754
        p1.restaurantID = res.ID
        p1.rates = 1.0
        p1.productionPhoto = UIImage(named: "td")
        
        let p2 = ProductionModel()
        p2.name = "香菇"
        p2.price = 2.5
        p2.ingredients = "香菇"
        p2.info = ""
        p2.saleCount = 285
        p2.restaurantID = res.ID
        p2.rates = 1.0
        p2.productionPhoto = UIImage(named: "xg")
        
        let p3 = ProductionModel()
        p3.name = "香肠"
        p3.price = 5
        p3.ingredients = "香肠"
        p3.info = ""
        p3.saleCount = 423
        p3.restaurantID = res.ID
        p3.rates = 1.0
        p3.productionPhoto = UIImage(named: "xc")
        
        let p4 = ProductionModel()
        p4.name = "羊肉串"
        p4.price = 8
        p4.ingredients = "羊肉"
        p4.info = ""
        p4.saleCount = 602
        p4.restaurantID = res.ID
        p4.rates = 0.96
        p4.productionPhoto = UIImage(named: "yrc")
        
        let p5 = ProductionModel()
        p5.name = "臭豆腐"
        p5.price = 4
        p5.ingredients = "臭豆腐干"
        p5.info = ""
        p5.saleCount = 282
        p5.restaurantID = res.ID
        p5.rates = 0.93
        p5.productionPhoto = UIImage(named: "cdf")
        
        res.dishes = [p1, p2, p3, p4, p5]
        res.saveDishesToDB()
        
        initUserData()
    }
    
    static func initUserData() {
        let user = UserModel()
        user.userName = "Aki"
        user.userPassword = ""
        user.realName = "王志欢"
        user.phoneNumber = "17521767907"
        user.email = "Aki@whu.edu.cn"
        user.address = "星丰苑166号302室"
        
        user.saveToDB()
        debugPrint(DAO.select(tableName: "user"))
    }
    
    
}
