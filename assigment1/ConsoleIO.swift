//
//  ConsoleIO.swift
//  assigment1
//
//  Created by Somya on 22/01/20.
//  Copyright © 2020 Somya. All rights reserved.
//

import Foundation

enum OutputType {
  case error
  case standard
}

class ConsoleIO {
    func writeMessage(_ message: String, to: OutputType = .standard) {
      switch to {
      case .standard:
        print("\(message)")
      case .error: fputs("Error: \(message)\n", stderr)
        
      }
    }
}
