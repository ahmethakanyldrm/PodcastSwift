//
//  SearchViewModel.swift
//  PodCastSwift
//
//  Created by AHMET HAKAN YILDIRIM on 6.05.2023.
//

import Foundation

struct SearchViewModel {
    let podcast: Podcast
    init(podcast: Podcast) {
        self.podcast = podcast
    }
    
    var photoImageUrl: URL? {
        return URL(string: podcast.artworkUrl600 ?? "")
    }
    
    var trackCountString: String? {
        return "\(podcast.trackCount ?? 0)"
    }
    
    var artistName: String? {
        return podcast.artistName
    }
    
    var trackName: String? {
        return podcast.trackName
    }
}
