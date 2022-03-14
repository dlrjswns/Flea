//
//  Networking.swift
//  Flea
//
//  Created by 이건준 on 2022/03/14.
//

import UIKit

class Networking {
    static let shared = Networking()
    private let session: URLSession
    
    init(session: URLSession = .shared) {
        self.session = session
    }
    
    func postEX() {
        let urlString = "http://localhost:8080/member/read-all"
        guard let url = URL(string: urlString) else { return; print("url error"); }
        session.dataTask(with: url) { data, response, error in
            if let error = error {
                print("data error")
            }
            
            if let data = data {
                let str = String(data: data, encoding: .utf8)
                print("str = \(str ?? "")")
            }
        }.resume()
    }
}
