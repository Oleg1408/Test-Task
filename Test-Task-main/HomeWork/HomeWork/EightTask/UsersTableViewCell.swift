//
//  UsersTableViewCell.swift
//  HomeWork
//
//  Created by Олег Курбатов on 08.07.2023.
//

import UIKit

class UsersTableViewCell: UITableViewCell {
    
    //
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var avatarName: UILabel!
    @IBOutlet weak var mainPictureImage: UIImageView!
    
    
    //
    @IBOutlet weak var heartImage: UIImageView!
    @IBOutlet weak var imageThreeDots: UIImageView!
    @IBOutlet weak var commentImage: UIImageView!
    @IBOutlet weak var airplaneImage: UIImageView!
    @IBOutlet weak var saveImage: UIImageView!
    
    // Lable
    @IBOutlet weak var likesLable: UILabel!
    @IBOutlet weak var discriptionLable: UILabel!
    @IBOutlet weak var commentsLable: UILabel!
    @IBOutlet weak var timePostLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    
    func configur(user: Post) {
        
        avatarName.text = user.avatarImageName
        avatarImage.image = UIImage(named: user.postImageName)
        mainPictureImage.image = UIImage(named: user.mainPostImage)
        likesLable.text = "\(user.viewsCount) likes"
        discriptionLable.text = "\(user.avatarImageName)  \(user.description)"
        commentsLable.text = "View all \(user.countOfComments) comments"
        timePostLable.text = user.postedAt
        defaultPicture()
    }
    
    private func defaultPicture() {
        
        imageThreeDots.image = UIImage(named: "dots")
        heartImage.image = UIImage(named: "like")
        commentImage.image = UIImage(named: "chat")
        airplaneImage.image = UIImage(named: "send")
        saveImage.image = UIImage(named: "save")
    }
    
    
}
