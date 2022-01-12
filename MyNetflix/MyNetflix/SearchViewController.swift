//
//  SearchViewController.swift
//  MyNetflix
//
//  Created by joonwon lee on 2020/04/02.
//  Copyright © 2020 com.joonwon. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var resultCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

extension SearchViewController: UISearchBarDelegate {
    
    private func dismissKeyboard() {
        searchBar.resignFirstResponder()
    }
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
        
        // 검색 시작
        
        // 키보드가 올라올 때, 내려가게 처리
        dismissKeyboard()
        // 검색어가 있는지
        
        guard let searchTerm = searchBar.text, searchTerm.isEmpty == false else { return }
        
        // 네트워킹을 통한 검색
        // - 목표: 서치텀을 가지고 네트워킹을 통해서 영화 검색
        // - 검색API 필요
        // - 결과를 받아올 모델 movie, respone
        // - 결과를 받아와서, CollectionView로 표현하기
        
        SearchAPI.search(searchTerm) { movies in
            
        }
        
        print("--> 검색어: \(searchTerm)")
    }
}

class SearchAPI {
    static func search(_ term: String, comletion: @escaping ([Movie]) -> Void) {
        let session =  URLSession(configuration: .default)
        
        let dataTask = session.dataTask(with: URL, completionHandler: <#T##(Data?, URLResponse?, Error?) -> Void#>)
        
    }
}

struct Response {
    
}

struct Movie {
    
}
