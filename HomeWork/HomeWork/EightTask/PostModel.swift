//
//  PostModel.swift
//  HomeWork
//
//  Created by Олег Курбатов on 06.07.2023.
//

import UIKit

struct Post {
    
    let avatarImageName: String
    let postImageName: String
    let mainPostImage: String
    let viewsCount: Int
    let description: String
    let countOfComments: Int
    let postedAt: String
    
}


struct listUsers {
    
    static let usersList = [Post (avatarImageName: "Alex91",
                                  postImageName: "avatarFirst",
                                  mainPostImage: "firstCat",
                                  viewsCount: 450,
                                  description: "Facts about cat:  They have a total of 18 toes. That’s a lot of toes! Cats have 5 toes on each of their front paws.They then have four toes on their back paws.",
                                  countOfComments: 1005,
                                  postedAt: "35 days ago"),
                            Post(avatarImageName: "Iren11",
                                 postImageName: "avatarTwo",
                                 mainPostImage: "secondCat",
                                 viewsCount: 141,
                                 description: "Hello, I am Iren. This is my cat",
                                 countOfComments: 819,
                                 postedAt: "5 minutes ago"),
                            Post(avatarImageName: "Kitty",
                                 postImageName: "avatarThird",
                                 mainPostImage: "thirdCat",
                                 viewsCount: 1541,
                                 description: "My lovely kitty",
                                 countOfComments: 341,
                                 postedAt: "10 minutes ago")]
}
