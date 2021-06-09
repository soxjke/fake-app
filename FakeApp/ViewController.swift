import UIKit
import Alamofire

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        getUsers()
        getOrganizations()
    }
}

func getUsers() {
    AF
        .request("https://my-json-server.typicode.com/soxjke/fake-db/users/")
        .response(queue: .global()) { response in
            print("Users")
            print(response.data.flatMap { String(data: $0, encoding: .utf8) } ?? "No response")
        }
}

func getOrganizations() {
    AF
        .request("https://my-json-server.typicode.com/soxjke/fake-db/orgs/")
        .response(queue: .global()) { response in
            print("Orgs")
            print(response.data.flatMap { String(data: $0, encoding: .utf8) } ?? "No response")
        }
}
