//
//  NoteStore.swift
//  2020-05-27Mob
//
//  Created by Joshua Caswell on 5/27/20.
//  Copyright © 2020 Sam Foulger. All rights reserved.
//

import Foundation

struct Note {
    var text: String
}

class NoteStore {
    private let dir: URL
    
    init(dir: URL) {
        self.dir = dir
    }
    
    func save(note: Note) {
        
    }
}
