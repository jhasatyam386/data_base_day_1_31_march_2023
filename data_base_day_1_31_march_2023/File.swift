//
//  File.swift
//  data_base_day_1_31_march_2023
//
//  Created by R&W on 31/03/23.
//

import Foundation
import SQLite3

struct model {
    var id = 0
    var name = ""
}

class Sqlite {
    static var file : OpaquePointer?
    
    static func creatFile(){
        var x = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        x.appendPathComponent("My Sqlite file.db")
        sqlite3_open(x.path, &file)
        print(x.path)
        print("creart file")
        creatTable()
    }
    static func creatTable(){
        let q = "Create Table if not exists Students (name text,id integer)"
        var table: OpaquePointer?
        sqlite3_prepare(file, q, -1, &table, nil)
        print("Creat Table")
        sqlite3_step(table)
    }
    static func addData(id:Int,name:String){
        let q = "insert into Students values ('\(id)',\(name))"
        var data: OpaquePointer?
        sqlite3_prepare(file, q, -1, &data, nil)
        print("Add Data")
        print(name,id)
        sqlite3_step(data)

    }
    static func getData(){
        
    }
    static func deleteData(id:Int,name:String){
        let q = "DELETE FROM Students WHERE id =\(id)"
        var table: OpaquePointer?
        sqlite3_prepare(file, q, -1, &table, nil)
        sqlite3_step(table)
        print("delete data")
        
    }
}
