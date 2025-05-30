import UIKit


class DataProcessor {
    
    final func processData() {
        beginProcess()
        cancelProcess()
        endProcess()
    }
    
    func beginProcess() {
        print("Default Begin Process")
    }
    
    func endProcess() {
        print("Default End Process")
    }
    
    func cancelProcess() {
        print("Default Cancel Process")
    }
}

class CSVProcessor: DataProcessor {
    
    override func beginProcess() {
        print("CSV begin Processor")
    }
    
    override func cancelProcess() {
        print("CSV Cancel Processor")
    }
    
    override func endProcess() {
        print("CSV End Processor")
    }
}

class JSONProcessor: DataProcessor {
    override func beginProcess() {
        print("JSON begin Processor")
    }
    
    override func cancelProcess() {
        print("JSON Cancel Processor")
    }
    
    override func endProcess() {
        print("JSON End Processor")
    }
}

print("****************************************")
let csvProcessor = CSVProcessor()
csvProcessor.processData()
print("****************************************")
let jsonProcessor = JSONProcessor()
jsonProcessor.processData()
print("****************************************")
