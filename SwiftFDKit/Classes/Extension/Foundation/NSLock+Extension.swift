import Foundation

extension NSLock {
    public func fd_withCriticalScope<T>(block: () -> T) -> T {
        lock()
        let value = block()
        unlock()
        return value
    }
}
