//
//  Bundle-Decodable.swift
//  MoonShot
//
//  Created by Rajabaliyev01 on 21/04/26.
//

import Foundation

extension Bundle {
    func decode(_ file: String) -> [String: Astronaut] {
        guard let url = url(forResource: file, withExtension: nil) else {
            fatalError("Could not find \(file) in bundle")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Could not load \(file) from bundle")
        }
        
        let decoder = JSONDecoder()
        
        do {
            return try decoder.decode([String: Astronaut].self, from: data)
        } catch DecodingError.keyNotFound(let key, let context) {
            fatalError("Failed decode file \(file) from bundle due to missing key '\(key.stringValue)' - \(context.debugDescription)")
        } catch DecodingError.typeMismatch(_, let context) {
            fatalError("Failed decode file \(file) from bundle due to type mismatch - \(context.debugDescription)")
        } catch  DecodingError.valueNotFound(let type, let context) {
            fatalError(("Failed decode file \(file) from bundle due to missing \(type) value - \(context.debugDescription)"))
        } catch DecodingError.dataCorrupted(_) {
            fatalError("Failed decode file \(file) from bundle because it appears to be invalid JSON")
        } catch {
            fatalError("Failed decode file \(file) from bundle: \(error.localizedDescription)")
        }
        
        }
        
    }

