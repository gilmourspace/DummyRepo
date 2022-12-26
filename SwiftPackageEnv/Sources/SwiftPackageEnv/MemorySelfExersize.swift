
func memorySelfExersize() {

    var data: Car

    struct Car {
        let numberOfWheels: Int // 8
        let owner: String       // 16 = 8 + 8
        let isRunning: Bool     // 1
        let price: Float       // 4
    }

    var redCar = Car(
        numberOfWheels: 4,
        owner: "Peter",
        isRunning: true,
        price: 123.45
    )

    var blueCar = Car(
        numberOfWheels: 8,
        owner: "John",
        isRunning: false,
        price: 678.9
    )

    var yellowCar = Car(
        numberOfWheels: 7,
        owner: "Frank",
        isRunning: false,
        price: 678.9
    )
    let memoryData = MemoryLayout<Car>.self

    // UnsafeMutablePointer -----
    // let mutablePtr = UnsafeMutablePointer<Car>.allocate(capacity: memoryData.stride)
    let mutablePtr = UnsafeMutablePointer<Car>.allocate(capacity: memoryData.stride)
    mutablePtr.assign(from: &redCar, count: 1)
    data = mutablePtr.pointee
    print("Mutable Pointer data - \(data)")
    mutablePtr.deallocate()
    // -----------

    // UnsafeMutableRawPointer -----
    let mutableRawPtr = UnsafeMutableRawPointer.allocate(
        byteCount: MemoryLayout<Car>.stride,
        alignment: MemoryLayout<Car>.alignment
    )
    mutableRawPtr.copyMemory(from: &redCar, byteCount: MemoryLayout<Car>.stride)
    data = mutableRawPtr.assumingMemoryBound(to: Car.self).pointee
    print("Mutable Raw Pointer data - \(data)")
    mutableRawPtr.deallocate()
    // -------------------

    // UnsafeImmutablePointer ---
    let ptr = UnsafePointer<Car>(&redCar)
    data = ptr.pointee
    print("Pointer data - \(data)")
    // ptr.deallocate() // Error?
    // -----------

    // UnsafeImmutableRawPointer ---
    let immutableRawPtr = UnsafeRawPointer(&redCar)
    data = immutableRawPtr.load(as: Car.self)
    print("Raw Pointer data - \(data)")
    // -------------------

    // UnsafeBufferPointer ---
    // allocating memory and mapping a pointer to that memory
    let myMutablePtr = UnsafeMutablePointer<Car>.allocate(capacity: 2)
    // you're initializing memory
    myMutablePtr.initialize(from: &redCar, count: 2)
    myMutablePtr[1] = blueCar

    // print("MemoryAddress: \(myPtr)")
    // print("Memoryvalue: \(myPtr[0])")
    // print("MemoryAddress: \(myPtr + 1)")
    // print("MemoryValue: \(myPtr[1])")

    let myBufferPointer = UnsafeBufferPointer<Car>(start: myMutablePtr, count: 2)
    print("Buffer Pointer data - \(myBufferPointer[0]), \(myBufferPointer[1])")
    // myPtr.deinitialize(count: 2)
    // myPtr.deallocate()
    // myBufferPointer.deinitialize(count: 2)
    // myBufferPointer.deallocate()
    // -------------------

    // UnsafeMutableBufferPointer ---
    let myMutableBufferPointer = UnsafeMutableBufferPointer<Car>(start: myMutablePtr, count: 2)
    myMutableBufferPointer[0] = yellowCar
    print("Mutable Buffer Pointer data - \(myMutableBufferPointer[0]), \(myMutableBufferPointer[1])")
    // -------------------

    // UnsafeRawBufferPointer -----
    let myMutableRawPtr = UnsafeMutableRawPointer.allocate(
        byteCount: MemoryLayout<Car>.stride * 2,
        alignment: MemoryLayout<Car>.alignment
    )
    myMutableRawPtr.copyMemory(from: &redCar, byteCount: MemoryLayout<Car>.stride)
    (myMutableRawPtr+1).copyMemory(from: &blueCar, byteCount: MemoryLayout<Car>.stride)

    let myRawBufferPointer = UnsafeRawBufferPointer(start: myMutableRawPtr, count: 2)
    // myRawBufferPointer.load()
    // print(myRawBufferPointer.load(fromByteOffset: 0, as: Car.self))
}
