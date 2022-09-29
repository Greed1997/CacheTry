//
//  JokeCell.swift
//  CacheJokes
//
//  Created by Александр on 29.09.2022.
//

import UIKit

class JokeCell: UITableViewCell {

//    private var activityIndicator: UIActivityIndicatorView?
    
    @IBOutlet var categoryLabel: UILabel!
    @IBOutlet var setupLabel: UILabel!
    @IBOutlet var deliveryLabel: UILabel!
    
    @IBOutlet var observerCommentTF: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
//        activityIndicator = showSpinner(in: categoryLabel)
//        activityIndicator = showSpinner(in: setupLabel)
//        activityIndicator = showSpinner(in: deliveryLabel)
    }

    func configure(with joke: Joke) {
        categoryLabel.text = joke.category
        setupLabel.text = joke.setup
        deliveryLabel.text = joke.delivery
    }
}
//extension JokeCell {
//    private func showSpinner(in view: UIView) -> UIActivityIndicatorView {
//        let activityIndicator = UIActivityIndicatorView(style: .large)
//        activityIndicator.color = .gray
//        activityIndicator.startAnimating()
//        activityIndicator.center = view.center
//        activityIndicator.hidesWhenStopped = true
//
//        view.addSubview(activityIndicator)
//        return activityIndicator
//    }
//}
