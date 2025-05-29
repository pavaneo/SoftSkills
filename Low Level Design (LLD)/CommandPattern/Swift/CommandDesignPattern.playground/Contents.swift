import UIKit

protocol Command {
    func execute()
}

class Light {
    
    func turnOn() {
        print("Turn on light")
    }
    
    func turnOff() {
        print("Turn off light")
    }
}

class LightOnCommand: Command {
    
    let light: Light
    
    init(light: Light) {
        self.light = light
    }
    
    func execute() {
        self.light.turnOn()
    }
}

class LightOffCommand: Command {
    let light: Light
    
    init(light: Light) {
        self.light = light
    }
    
    func execute() {
        self.light.turnOff()
    }
}


class RemoteControl {
    
    var command : Command?
    
    func setCommand(command: Command) {
        self.command = command
    }
    
    func pressButton() {
        self.command?.execute()
    }
}


let light = Light()

let turnOn = LightOnCommand(light: light)
let turnOff = LightOffCommand(light: light)

let remoteControl = RemoteControl()
remoteControl.setCommand(command: turnOn)
remoteControl.pressButton()

remoteControl.setCommand(command: turnOff)
remoteControl.pressButton()
