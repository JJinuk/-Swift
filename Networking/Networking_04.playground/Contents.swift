import UIKit

DispatchQueue.global(qos: .background).async {
    for i in 0...5 {
        print("😈 \(i)")
    }
}

DispatchQueue.global(qos: .userInteractive).async {
    for i in 0...5 {
        print("😇 \(i)")
    }
}

DispatchQueue.global(qos: .background).sync {
    for i in 0...10 {
        print("😈 \(i)")
    }
}

DispatchQueue.global(qos: .userInteractive).sync {
    for i in 0...10 {
        print("😇 \(i)")
    }
}
