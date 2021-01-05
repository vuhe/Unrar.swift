// SPDX-FileCopyrightText: 2021 mtgto <hogerappa@gmail.com>
// SPDX-License-Identifier: MIT

import Cunrar

public enum UnrarError: Error {
    case noMemory
    case badData
    case badArchive
    case unknownFormat
    case eopen
    case missingPassword
    case hogehoge

    static func fromErrorCode(_ errorCode: Int32) -> UnrarError {
        switch errorCode {
        case ERAR_NO_MEMORY:
            return UnrarError.noMemory
        case ERAR_BAD_DATA:
            return UnrarError.badData
        case ERAR_MISSING_PASSWORD:
            return UnrarError.missingPassword
        default:
            print("Error:", errorCode)
            return UnrarError.hogehoge
        }
    }
}
