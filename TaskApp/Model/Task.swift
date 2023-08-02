//
//  Task.swift
//  TaskApp
//
//  Created by Guilherme on 04/08/23.
//

import SwiftUI

struct Task: Identifiable{
    var id = UUID().uuidString
    var title: String
    var time: Date = Date()
}

struct TaskMetaData: Identifiable{
    var id = UUID().uuidString
    var task: [Task]
    var taskDate: Date
}

func getSampleDate(offset: Int)->Date{
    let calendar = Calendar.current
    
    let date = calendar.date(byAdding: .day, value: offset, to: Date())
    
    return date ?? Date()
}

var tasks: [TaskMetaData] = [
    
    TaskMetaData(task: [
    
        Task(title: "Talk to iJustine"),
        Task(title: "iPhone 14 Great Design Change LOL"),
        Task(title: "Nothing Much Workout !!!")
    ], taskDate: getSampleDate(offset: -3)),
    TaskMetaData(task: [
    
        Task(title: "Talk to Jenna Ezarik")
    ], taskDate: getSampleDate(offset: -3)),
    TaskMetaData(task: [
        
        Task(title: "Meeting with Tim Cook")
    ], taskDate: getSampleDate(offset: -8)),
    TaskMetaData(task: [
        
        Task(title: "Next Verision of SwiftUI")
    ], taskDate: getSampleDate(offset: 10)),
    TaskMetaData(task: [
        
        Task(title: "Nothing Much Workout !!!")
    ], taskDate: getSampleDate(offset: -22)),
    TaskMetaData(task: [
        
        Task(title: "iPhone 14 Great Desing Change LOL")
    ], taskDate: getSampleDate(offset: 15)),
    TaskMetaData(task: [
        
        Task(title: "Kavsoft App Update...")
    ], taskDate: getSampleDate(offset: -20)),
]
