//
//  UserDefaults.swift
//  azzam.ai
//
//  Created by الشيخ عزام on 29/12/1445 AH.
//

import Foundation

extension UserDefaults {
    
    
    func didUserCompleteIntro() -> Bool {
        return bool(forKey: "introCompleted")
    }
    
    func introCompleted() {
        set(true, forKey: "introCompleted")
    }
    
    func getCommitHistory() -> [Date] {
        return array(forKey: "CommitHistory") as? [Date] ?? []
    }
    
    func addCommit() {
        var newCommitHistory = getCommitHistory()
        newCommitHistory.append(.now)
        set(newCommitHistory, forKey: "CommitHistory")
    }
    
    func resetCommitHistory() {
        removeObject(forKey: "CommitHistory")
    }
}
