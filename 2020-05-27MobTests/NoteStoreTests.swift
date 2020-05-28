//
//  NoteStoreTests.swift
//  2020-05-27MobTests
//
//  Created by Joshua Caswell on 5/27/20.
//  Copyright © 2020 Sam Foulger. All rights reserved.
//

import Foundation
import XCTest
@testable import _020_05_27Mob

class NoteStoreTests : XCTest {
    func testItWorks() {
        let fileManager = FileManager.default
        let path = fileManager.urls(for: .documentDirectory, in: .userDomainMask)[0]
        
        let noteStore = NoteStore(dir: path)
        XCTAssert(true)
    }
}
