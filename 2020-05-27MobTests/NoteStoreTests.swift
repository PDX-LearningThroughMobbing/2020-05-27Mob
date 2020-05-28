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

class NoteStoreTests : XCTestCase {
    var noteStore: NoteStore!

    override func setUp() {
        noteStore = NoteStore(dir: "")
    }
    override func tearDown() {
        try! noteStore.fm.removeItem(atPath: noteStore.dir.relativePath)
    }
    func testSave() {
        let note = Note(text: "Dummy Text")
        XCTAssertNoThrow(try noteStore.save(note: note))
        let fm = noteStore.fm
        XCTAssert(fm.fileExists(atPath: noteStore.dir.relativePath))
    }

    func testLoad() throws {
        let original = Note(text: "original note")
        try! noteStore.save(note: original)
        let note = try noteStore.load()
        XCTAssertEqual(note.text, original.text)
    }
}
