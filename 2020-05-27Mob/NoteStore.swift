//
//  NoteStore.swift
//  2020-05-27Mob
//
//  Created by Joshua Caswell on 5/27/20.
//  Copyright © 2020 Sam Foulger. All rights reserved.
//

import Foundation

struct Note: Codable {
    var text: String
}

class NoteStore {
    let dir: String
    let fm = FileManager.default
    
    init(dir: String) {
        
        self.dir = fm.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent("note").absoluteString
        
        
    }
    
    func save(note: Note) throws {
        let encoder = JSONEncoder()
        let data = try encoder.encode(note)
        try data.write(to: URL(string: dir)!)
    }
}
