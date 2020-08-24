//
//  ImageLoader.swift
//  HomeScreenSpaces
//
//  Created by Aryan Chaubal on 8/3/20.
//

import UIKit


class ImageLoader {
    
    func getImage(with name: String) -> UIImage? {
        let fileManager = FileManager.default
        guard let bundleId = Bundle.main.bundleIdentifier else { return nil }
        guard let url = fileManager.containerURL(forSecurityApplicationGroupIdentifier: "group.\(bundleId)")?.appendingPathComponent("\(name).png") else { return nil }
        if fileManager.fileExists(atPath: url.path) {
            let image = UIImage(contentsOfFile: url.path)
            print("checking image")
            return image
        }
        return nil
    }
    
}
