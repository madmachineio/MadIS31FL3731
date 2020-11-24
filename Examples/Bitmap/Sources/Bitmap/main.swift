import SwiftIO
import MadDisplay
import MadIS31FL3731


let i2c = I2C(Id.I2C0)
let matrix = MadIS31FL3731(i2c: i2c)
let display = MadDisplay(screen: matrix)


let root = Group()
display.show(root)

let rect = Rect(x: 0, y: 0, width: 4, height: matrix.height, fill: 0x0F0F0F, outline: Color.white)
root.append(rect)

while true {
    for x in 0...matrix.width - 4 {
        rect.setX(x)
        display.show(root)
        sleep(ms: 150)
    }

    for x in (0...matrix.width - 4).reversed() {
        rect.setX(x)
        display.show(root)
        sleep(ms: 150)
    }
}
