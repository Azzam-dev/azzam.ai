//
//  KeyboardManager.swift
//  azzam.ai
//
//  Created by الشيخ عزام on 29/12/1445 AH.
//

import IQKeyboardManagerSwift

final class KeyboardManager {
    static let shared = KeyboardManager()
    func configuration() {
        IQKeyboardManager.shared.enable = true
        IQKeyboardManager.shared.enableAutoToolbar = false
        IQKeyboardManager.shared.shouldResignOnTouchOutside = true
    }
}
