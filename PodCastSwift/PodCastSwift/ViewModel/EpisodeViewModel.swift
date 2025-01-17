//
//  EpisodeViewModel.swift
//  PodCastSwift
//
//  Created by AHMET HAKAN YILDIRIM on 6.05.2023.
//

import Foundation

struct EpisodeViewModel {
    
    let episode: Episode
    
    init(episode: Episode) {
        self.episode = episode
    }
    
    var profileImageUrl: URL? {
        return URL(string: episode.imageUrl)
    }
    
    var title: String? {
        return episode.title
    }
    
    var description: String? {
        return episode.description
    }
    
    var pubDate: String? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM dd, yyy"
        return dateFormatter.string(from: episode.pubDate)
    }
}
