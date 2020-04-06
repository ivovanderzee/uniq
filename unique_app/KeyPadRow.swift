//
//  KeyPadRow.swift
//  unique_app
//
//  Created by Xandor Naus on 06/04/2020.
//  Copyright © 2020 Validata. All rights reserved.
//

import UIKit
import SwiftUI

struct KeyPadRow: View {
    var keys: [String]

    var body: some View {
        HStack {
            ForEach(keys.identified(by: \.self)) { key in
                KeyPadButton(key: key)
            }
        }
    }
}
