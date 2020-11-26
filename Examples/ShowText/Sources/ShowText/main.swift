import SwiftIO
import MadDisplay
import MadIS31FL3731


let i2c = I2C(Id.I2C0)
let matrix = MadIS31FL3731(i2c: i2c)
let display = MadDisplay(screen: matrix)


let root = Group()
display.show(root)

var x = 16
let label = Label(x: x, y: 4, text: "Hello, Swift!", font: ASCII8())
root.append(label)

while true {
    label.setX(x)
    x -= 1
    display.show(root)
    sleep(ms: 100)
    if x < -62 {
        x = 16
    }
}