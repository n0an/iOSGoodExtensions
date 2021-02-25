extension Array where Element == URLQueryItem {
    func value(for name: String) -> String? {
        first(where: {$0.name == name})?.value
    }
}
