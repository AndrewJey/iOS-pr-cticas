import Foundation

/// Modelo portable de prácticas iOS (Swift 5+ / SwiftUI).
public struct PracticeTask: Identifiable, Codable, Equatable {
    public let id: UUID
    public var title: String
    public var completed: Bool

    public init(id: UUID = UUID(), title: String, completed: Bool = false) {
        self.id = id
        self.title = title.trimmingCharacters(in: .whitespacesAndNewlines)
        self.completed = completed
    }
}

public final class PracticeTaskStore {
    public private(set) var tasks: [PracticeTask]

    public init(initial: [PracticeTask] = []) {
        self.tasks = initial
    }

    @discardableResult
    public func add(title: String) -> Bool {
        let trimmed = title.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !trimmed.isEmpty else { return false }
        tasks.insert(PracticeTask(title: trimmed), at: 0)
        return true
    }

    public func toggle(id: UUID) {
        guard let idx = tasks.firstIndex(where: { $0.id == id }) else { return }
        tasks[idx].completed.toggle()
    }

    public func remove(id: UUID) {
        tasks.removeAll { $0.id == id }
    }
}
