import UIKit

class Appsettings {
    
    nonisolated(unsafe) static let shared = Appsettings()
    
    private var dbName: String?
    private var localPath: String?

    private init() {
        dbName = "Appsettings"
        localPath = "/user/pavan/Documents/"
    }
    
    func getDBName() -> String {
        guard let name = dbName else {
            return ""
        }
        return name
    }
    
    func getLocalPath() -> String {
        guard let path = localPath else {
            return ""
        }
        return path
    }
}


let settings = Appsettings.shared

print("Setting Name: \(settings.getDBName())")
print("Setting Path: \(settings.getLocalPath())")

let settingsClone = Appsettings.shared

print("Appsettings clone Name: \(settingsClone.getDBName())")
print("Appsettings clone Path: \(settingsClone.getLocalPath())")
