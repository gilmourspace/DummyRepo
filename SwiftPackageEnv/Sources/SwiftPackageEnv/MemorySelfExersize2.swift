func memorySelfExersize2() {

    struct ObjectA {
        var num: Int64 = 406
        var bool: Bool = true
        var dec: Double = 123.4
    }

    var objA = ObjectA()
    var data: ObjectA

    // Store objectA in memory and retrieve it as a pointer
    // let myPointer = UnsafePointer(&objA)
    let myPointer = UnsafePointer<ObjectA>(&objA)
    data = myPointer.pointee

    // Store objectA in memory and retrieve it as a mutable pointer
    let myMutablePointer = UnsafeMutablePointer<ObjectA>.allocate(
        byteCount: MemoryLayout<ObjectA>.stride,
        alignment: MemoryLayout<ObjectA>.alignment
    )
    myMutablePointer.initialize(from: )

    // myMutablePointer.copyMemory(from)

}
