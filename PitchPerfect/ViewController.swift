//
//  ViewController.swift
//  PitchPerfect
//
//  Created by JANELLE LIWANAG REAL on 2/1/17.
//  Copyright © 2017 JANELLE LIWANAG REAL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        stopRecordingButton.isEnabled  = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(_ sender: Any) {
        print("Record button pressed")
        recordingLabel.text = "Recording In Progress"
        recordButton.isEnabled = false
        stopRecordingButton.isEnabled  = true
    }

    @IBAction func stopRecording(_ sender: Any) {
        print("STOP Recording button pressed")
        recordButton.isEnabled = true
        stopRecordingButton.isEnabled  = false
        recordingLabel.text = "Tap to Record"
    }
}

