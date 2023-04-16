//
//  CarsGenerator.swift
//  Guidomia
//
//  Created by Abderrahman Ajid on 13/4/2023.
//

import Foundation

enum GeneratorError: Error {
    case FileNotFound
    case InvalidData
    case InvalidDecoding
    case Unknown
}

protocol Generator {
    associatedtype T: Codable
    func generate() -> Result<T, GeneratorError>
}

class CarsGenerator: Generator {
    
    private var parser: Parser
    private var loader: Loader
    
    init() {
        self.parser = JSONParser()
        self.loader = FileDataLoader()
    }
    
    func generate() -> Result<Cars, GeneratorError> {
        do {
            let data = try loader.loadData()
            let cars = try parser.parse(data: data, type: Cars.self)
            return .success(cars)
        } catch let error as GeneratorError {
            return .failure(error)
        }
        catch {
            return .failure(.Unknown)
        }
    }
}

private protocol Loader {
    
    func loadData() throws -> Data
    
}

final private class FileDataLoader: Loader {
    
    func loadData() throws -> Data {
        
        guard let bundlePath = Bundle.main.path(forResource: "car_list", ofType: "json") else {
            throw GeneratorError.FileNotFound
        }
        
        let data = try? String(contentsOfFile: bundlePath).data(using: .utf8)
        
        guard let data else {
            throw GeneratorError.InvalidData
        }
        
        return data
    }
}

private protocol Parser {
    func parse<T: Codable>(data: Data, type: T.Type) throws -> T
}

final private class JSONParser: Parser {
    func parse<T: Codable>(data: Data, type: T.Type) throws -> T {
        let decodedData = try? JSONDecoder().decode(type.self, from: data)
        guard let decodedData else {
            throw GeneratorError.InvalidDecoding
        }
        return decodedData
    }
}
