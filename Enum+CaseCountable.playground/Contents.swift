import UIKit

protocol CaseCountable: RawRepresentable {}

extension CaseCountable where RawValue: Integer {
    static var count: RawValue {
        var i: RawValue = 0
        while let _ = Self(rawValue: i) { i = i + 1 }
        return i
    }
}

enum Section: Int, CaseCountable {
    case title
    case subtitle
    case usernameInput
}

class TableViewController: UITableViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return Section.count
    }
}