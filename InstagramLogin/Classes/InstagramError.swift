//
//  InstagramError.swift
//  InstagramLogin
//
//  Created by Ander Goig on 2/11/17.
//  Copyright © 2017 Ander Goig. All rights reserved.
//

/// A type representing an error value that can be thrown.

public struct InstagramError: Error {

    // MARK: - Properties

    public let kind: ErrorKind
    public let message: String

    /// Retrieve the localized description for this error.
    public var localizedDescription: String {
        return "[\(kind.description)] - \(message)"
    }

    // MARK: - Types

    public enum ErrorKind: CustomStringConvertible {
        case invalidRequest

        public var description: String {
            switch self {
            case .invalidRequest:
                return "invalidRequest"
            }
        }
    }

}
