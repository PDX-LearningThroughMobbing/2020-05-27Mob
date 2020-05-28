//
//  ViewController.swift
//  2020-05-27Mob
//
//  Created by selfoulger on 5/27/20.
//  Copyright © 2020 Sam Foulger. All rights reserved.
//

import UIKit

//Single note editor that saves at an interval or that saves at the tap of a button
//
//Bonus: multiple file support + querying


class ViewController: UIViewController {
    var noteStore: NoteStore = NoteStore(dir: "")

    @IBOutlet var textView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        guard let note = try? noteStore.load() else { return }
        textView.text = note.text
    }

    @IBAction func save(sender: UIButton) {
        try! noteStore.save(note: Note(text: textView.text))
    }
}
