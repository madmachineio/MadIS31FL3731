import SwiftIO
import MadIS31FL3731


let i2c = I2C(Id.I2C0, speed: .fast)
let matrix = MadIS31FL3731(i2c: i2c)



while true {
    for i in 0..<144 {
        matrix.writePixel(i, brightness: 255)
        sleep(ms: 100)
    }

    for y in 0..<9 {
        for x in 0..<16 {
            matrix.writePixel(x: x, y: y, brightness: 0)
            sleep(ms: 100)
        }
    }
}