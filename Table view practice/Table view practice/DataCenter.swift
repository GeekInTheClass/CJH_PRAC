//
//  DataCenter.swift
//  Table view practice
//
//  Created by Ing on 2019. 4. 18..
//  Copyright © 2019년 Ing. All rights reserved.
//

import Foundation
import UIKit

class argument : UITableView{
    enum Category:Int {
        case Computer = 0
        case Bio = 1
        case Physic = 2
        case Chemical = 3
        case Job = 4
        case Graduate = 5
        /* etc... */
    }

    struct Info {
        var title : String
        var category : Category
        var desc : String
        var when : (y : Int, m : Int, d : Int)
        var uploaded : (y:Int, m:Int, d:Int)
        var modified : (y:Int, m:Int, d: Int) = (0,0,0)
        
        init(t:String,c: Category, d : String, w: (y:Int,m:Int,d:Int), mf: (y:Int,m:Int,d:Int)?){
            title = t
            category = c
            desc = d
            when = w
            let date = Date()
            let calendar = Calendar.current
            let component = calendar.dateComponents([.year,.month,.day],from : date)
            uploaded = (component.year ?? 0, component.month ?? 0,component.day ?? 0)
            modified = mf ?? (0,0,0)
        }
        
        mutating func modify_time(when : (y:Int, m:Int, d:Int)){
            self.when = when
        }
        func print_info(){
            print("title: \(title)")
            print("category : \(category)")
            print("description:\(desc)")
            print("when : \(when.y).\(when.m).\(when.d)")
            print("uploaded on \(uploaded.y).\(uploaded.m).\(uploaded.d)")
            print(modified == (0,0,0) ?"not modified":"modified on \(modified.y).\(modified.m).\(modified.d)")
            print()
            print()
        }
        func search(keyword: String){
            if title.contains(keyword){
                print_info()
            }
        }
        
    }

    struct Calander{
        var scheduled_Date : [(y : Int, m : Int, d : Int)]
        var schedules : [Info]
        init(){
            schedules = [Info]()
            scheduled_Date = [(y:Int,m:Int,d:Int)]()
        }
        init(s:[Info]){
            schedules = s
            var days = [(y:Int,m:Int,d:Int)]()
            let last = s.count
            var i = 0
            while(i<last){
                days.append(s[i].when)
                i+=1
            }
            scheduled_Date = days
        }
        mutating func add_schedules(schedule : Info){
            scheduled_Date.append(schedule.when)
            schedules.append(schedule)
        }
        func print_schedule(){
            let last = self.schedules.count
            var i = 0
            while(i<last){
                self.schedules[i].print_info()
                i+=1
            }
        }
    }


    let infos :[Info] = [];
}
