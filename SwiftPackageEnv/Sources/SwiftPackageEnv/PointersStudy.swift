
public func pointerStudy() {

    var variable: Int32 = 123
    var variable2: Int32 = 456
    var data: Int32

    let alignment = MemoryLayout<Int32>.alignment
    let stride = MemoryLayout<Int32>.stride
    let size = MemoryLayout<Int32>.size

// ------------------------------

    // Mutable Pointer
    let mutablePtr = UnsafeMutablePointer<Int32>.allocate(capacity: 1)
    mutablePtr.pointee = variable
    // print(mutablePtr.pointee) // 123
    mutablePtr.pointee = 456
    // print(mutablePtr.pointee) // 456
    mutablePtr.deinitialize(count: 1)
    mutablePtr.deallocate()

// -------------

    // Immutable Pointer
    let immutablePtr = UnsafePointer<Int32>(&variable)
    // ERROR because you cannot write to an immutable pointer
    // immutablePtr.pointee = 456
    data = immutablePtr.pointee
    // immutablePtr.deinitialize(count: 1)
    // immutablePtr.deallocate() // ERROR But why?

// -------------

    // MutableRawPointer
    let mutableRawPtr = UnsafeMutableRawPointer.allocate(
        byteCount: MemoryLayout<Int32>.stride,
        alignment: MemoryLayout<Int32>.alignment
    )
    mutableRawPtr.storeBytes(
        of: variable,
        as: Int32.self
    )
    data = mutableRawPtr.load(as: Int32.self)
    // print(data) 123
    mutableRawPtr.storeBytes(of: 10, as: Int32.self)
    data = mutableRawPtr.load(as: Int32.self)
    mutablePtr.deallocate()
    // print(data) // 10


// -------------

    // ImmutableRawPointer
    let immutableRawPtr = UnsafeRawPointer(&variable)
    // data = immutableRawPtr.bindMemory(to: Int32.self, capacity: 1)
    data = immutableRawPtr.load(as: Int32.self)
    // print(data) // 123
    // ERROR immutableRawPtr does not have .storeBytes() (write)

// -------------

    // Unsafe Immutable Buffer Pointer
    let oneTwoPtr = UnsafeMutablePointer<Int32>.allocate(capacity: 2)
    oneTwoPtr.initialize(repeating: 1, count: 2)
    // print("First memory address: ", oneTwoPtr)
    // print("First value:", oneTwoPtr.pointee) // 1

    oneTwoPtr[1] = 2 // subscript
    // print("Second memoryAddress: ", oneTwoPtr + 1)
    // print("Second value: ", oneTwoPtr[1]) // 2

    let buffer = UnsafeBufferPointer(start: oneTwoPtr, count: 2)
    // for (index, element) in buffer.enumerated() {
    //     print("\(index): \(element)")
    // }
    oneTwoPtr.deinitialize(count: 2)
    oneTwoPtr.deallocate()


    let myPointer = UnsafeMutablePointer<Int32>.allocate(capacity: 2)
    // myPointer.initialize(from: &variable, count: 1)
    myPointer[0] = variable
    myPointer[1] = variable2
    // print(myPointer[0])
    // print(myPointer[1])

    let myBufferPointer = UnsafeBufferPointer(start: myPointer, count: 2)
    for (index, element) in myBufferPointer.enumerated() {
        print("\(index): \(element)")
    }
// ---------------





    // mutableRawPtr.storeBytes(of: variable, as: Int32.self)
    // mutableRawPtr.advanced(by: MemoryLayout<Int32>.stride).storeBytes(of: variable2, as: Int32.self)


    // let immutableRawBufferPtr = UnsafeRawBufferPointer(
    //     start: mutableRawPtr,
    //     count: MemoryLayout<Int32>.stride
    // )

    // var dataArray: [Int32] = []
    // // let data1 = immutableRawBufferPtr.load(as: Int32.self)
    // print(immutableRawBufferPtr)


    // data = immutableRawBufferPtr.load(as: Int32.self)
    // print(data)





    /// Pointers in swift ---
    /// 1 byte = 8 bits
    /// When we're ta
    // A pointer is an object that stores a memory address.
    // In Swift, there are 8 types of pointers.
    // Immutable:
    // An immutable pointer is a pointer that reads from a data in memory (cannot write)

        // - UnsafePointer
        // - UnsafeRawPointer
        // - UnsafeBufferPointer
        // - UnsafeRawBufferPointer

    // Mutable:
    // A mutable pointer is a pointer that can read and write from data in memory.

        // - UnsafeMutablePointer
        // - UnsageMutableRawPointer
        // - UnsafeMutableBufferPointer
        // - UnsafeMutableRawBufferPointer

    // A typed Pointer - is a pointer for accessing data of a specific type in memory.
    // A Raw Pointer - is a pointer that points to untyped data in memory
    // Data - refers to variables, objects, properties, information 
    // Mutable - Content can be changed.
    // Raw - Only understands byte addressable changes.
    // Buffer - Treats the pointer content as an array.
}
