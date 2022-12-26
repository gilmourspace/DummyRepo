import Foundation

public func memoryStudy() {

    let memSimple = MemoryLayout<Int64>.self
    // Minimum amount of space in memory to store this variable
    // print(memSimple.size) // 4 bytes

    // How far you would have to move to reach the next space available space in memory
    // print(memSimple.stride) // 4 bytes

    // How you would have to align/arrange memory spaces in memory to be read in the most
    // efficient way possible.
    // print(memSimple.alignment) // 4 byte

    struct GameBoard {
        var p1Score: Int32 // 4 bytes
        var p2Score: Int32 // 4 bytes
        var gameOver: Bool // 1 byte
        var gameStarted: Bool // 1 byte
    }

    // alignment = 4
    // stride = 12
    // size = 10
    // print(MemoryLayout<GameBoard>.alignment)
    // print(MemoryLayout<GameBoard>.stride)
    // print(MemoryLayout<GameBoard>.size)

    struct GameBoard2 {
        var p1Score: Int32 // 4 bytes
        var gameOver: Bool // 1 byte (with paddding)
        var p2Score: Int32 // 4 bytes
    }

    // alignment = 4
    // size = 12
    // stride = 12
    // print(MemoryLayout<GameBoard2>.alignment)
    // print(MemoryLayout<GameBoard2>.size)
    // print(MemoryLayout<GameBoard2>.stride)

    struct Random {
        var v1: UInt64 // 8 bytes
        var v2: Bool // 1 byte
        var v3: Character // 1 byte
        // var v4: Double // 8byte

        init(var1: UInt64, var2: Bool, var3: Character) {
            self.v1 = var1
            self.v2 = var2
            self.v3 = var3
        }
    }

    struct Random2 {
        var v1: Int
        var v2: String
        var v3: Float
        var v4: Character
    }

    // alignment = 8
    // size = 48
    // stride = 48
    /* MemoryLayout:
         - 0-7: v1
         - 8-23: v2
         - 24-31:v3
         - 32-47: v4
    */

    // print(MemoryLayout<Random2>.alignment)
    // print(MemoryLayout<Random2>.size)
    // print(MemoryLayout<Random2>.stride)


    struct Random3 {
        var v1: Int
        var v2: String
        var v4: Character
        var v3: Float
    }
    // alignment = 8
    // stride = 48
    // size = 48
    // print(MemoryLayout<Random2>.alignment)
    // print(MemoryLayout<Random2>.size)
    // print(MemoryLayout<Random2>.stride)

    struct Random4 {
        var v1: Character // 16 = 8 + 8
        var v2: Bool // 1
        // var v3: Int32 // 4
    }
    // alignment = 8
    // size = 21
    // stride = 24
    // print(MemoryLayout<Random4>.alignment)
    // print(MemoryLayout<Random4>.size)
    // print(MemoryLayout<Random4>.stride)



    // print(MemoryLayout<Int32>.size) // 4bytes
    // print(MemoryLayout<Bool>.size)  // 1byte

    let random = Random(var1: 1, var2: true, var3: "a")

    let complexVariable = MemoryLayout<GameBoard>.self
    let complexVariable2 = MemoryLayout<GameBoard2>.self
    let complexVariable3 = MemoryLayout<Random>.self
    // let memoryOfCharacter = MemoryLayout<Character>.self

    // print(complexVariable.size) // 9 bytes
    // print(complexVariable.stride) // 12 bytes?
    // print(complexVariable.alignment) // 4 bytes ?

    // print(complexVariable2.size) // 12 bytes
    // print(complexVariable2.stride) // 12 bytes
    // print(complexVariable2.alignment) // 4 bytes


    // print(random.v3.lengthOfBytes(using: .utf8))

    // print(memoryOfCharacter.size)

    // print(complexVariable3.size) // 32 no. its 40
    // print(complexVariable3.stride) // 32 no. its 40
    // print(complexVariable3.alignment) // 8 correct

    /// The size is obviously 12 bytes for the struct(Int32 + Int32 + Bool)
    /// Since the alignment is 4 byte increments (due to the largest variable being size 4 bytes.)
    /// The memory layout would look:
    /// p1Score: 4bytes (0-3)
    /// p2Score: 4bytes (4-7)
    /// gameOver: 1byte (8)
    /// padding: 3 bytes (9-13)
    /// Therefore stride would => 12 bytes (0-13)
    /// alignment => 4 byte increments.

    // Note: Current OS default Int is Int64 because OS is 64 bits.
    // print(MemoryLayout<Int>.size)




    /// Learning Outcomes:
    /// - Alignment is the n-byte memory allocation increments in the most efficient
    /// way possible
    /// - Size is the minimum required memory space to store the variable
    /// - Stride is the amount of memory space required to reach the next variable
    /// in memory
}
