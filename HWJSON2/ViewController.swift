//
//  ViewController.swift
//  HWJSON
//
//  Created by Azamat Sarinzhiev on 20/1/22.
//

import UIKit

class CafeModel: Codable {
    var cafe: [Cafe] = []
    var comment: CommentModel
}
class Cafe: Codable {
    var title: String? = nil
    var id: Int? = nil
    var image: String? = nil
    var bord: [Int] = []
}
class CommentModel: Codable {
    var id: String? = nil
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let json = """
        
        {
          "cafe" : [
            {
              "title": "test1",
              "id": 1,
              "image": "URL",
              "bord": [1, 2, 3, 4]
            },
            {
              "title": "test1",
              "id": 1,
              "image": "URL",
              "bord": [1, 2, 3, 4]
            },
            {
              "title": "test1",
              "id": 1,
              "image": "URL",
              "bord": [1, 2, 3, 4]
            },
            {
              "title": "test1",
              "id": 1,
              "image": "URL",
              "bord": [1, 2, 3, 4]
            },
            {
              "title": "test1",
              "id": 1,
              "image": "URL",
              "bord": [1, 2, 3, 4]
            }
          ],
          "comment": {
            "id": "test"
          }
        }

        """
        let model = try! JSONDecoder().decode(CafeModel.self, from: Data(json.utf8))
        dump(model)
    }


}


