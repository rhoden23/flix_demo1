//
//  DetailViewController.swift
//  flix_demo
//
//  Created by Roden Susan on 10/13/18.
//  Copyright © 2018 Roden. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var backDropImageView: UIImageView!
    
    @IBOutlet weak var posterImageView: UIImageView!
    
    @IBOutlet weak var titlelabel: UILabel!
    
    @IBOutlet weak var releaseDateLabel: UILabel!
    
    var movie: [String: Any]?
    
    @IBOutlet weak var overviewLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let movie = movie {
            titlelabel.text = movie["title"] as? String
            releaseDateLabel.text = movie["release_date"] as? String
            overviewLabel.text = movie["overview"] as? String
            let backdropPathString = movie["backdrop_path"] as! String
            
            let posterPathString = movie["poster_path"] as! String
            let baseURL = "https://image.tmdb.org/t/p/w500"
            
            let backdropURL = URL(string: baseURL + backdropPathString)!
            
            backDropImageView.af_setImage(withURL: backdropURL)
            let posterPathURL = URL(string: baseURL + posterPathString)!
            posterImageView.af_setImage(withURL: posterPathURL)
            
            
            
        }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
