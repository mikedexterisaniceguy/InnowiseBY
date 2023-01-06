//
//  Profile.swift
//  Layout
//
//  Created by 123 on 5.01.23.
//

import Foundation
import UIKit

protocol ProfileProtocol {
    var colourOne: UIColor { get set }
    var colourTwo: UIColor { get set }
    var bigText: String { get set }
    var name: String { get set }
//    var daysAfterPublication: String { get set }
//    var viewsCount: Int { get set }
//    var commentsCount: Int { get set }
//    var likesCount: Int { get set }
}

let profilesArray: [ProfileProtocol] = []

struct LayoutProfile: ProfileProtocol {
    var colourOne: UIColor = UIColor(red: 123/255, green: 243/255, blue: 26/255, alpha: 0.8)
    
    var colourTwo: UIColor = UIColor(red: 63/255, green: 43/255, blue: 28/255, alpha: 0.8)
    
    var bigText: String = "Badasdk dfgdhe ebs;fgjs w;emgtrhl l "
    
    var name: String = "Johan Kubik"
}

struct ProfilesArray {
    let profilesArray: [ProfileProtocol] = [firstProfile, secondProfile, thirdProfile, fourthProfile]
}



let firstProfile = LayoutProfile(colourOne: UIColor(red: 123/255, green: 243/255, blue: 26/255, alpha: 0.8),
                                 colourTwo: UIColor(red: 67/255, green: 43/255, blue: 9/255, alpha: 0.8),
                                 bigText: "Badasdk dfgdhe ebs;fgjs w;emgtrhl l ",
                                 name: "Johan Kubik")

let secondProfile = LayoutProfile(colourOne: UIColor(red: 17/255, green: 28/255, blue: 90/255, alpha: 0.8),
                                 colourTwo: UIColor(red: 54/255, green: 109/255, blue: 65/255, alpha: 0.8),
                                 bigText: "Imagu mafn ljkjfwo ntntiuuqbnej nhrlk bweqkjh ",
                                 name: "Kupamw Kren")

let thirdProfile = LayoutProfile(colourOne: UIColor(red: 203/255, green: 243/255, blue: 78/255, alpha: 0.8),
                                 colourTwo: UIColor(red: 60/255, green: 78/255, blue: 99/255, alpha: 0.8),
                                 bigText: "Sick of my illness. I'll do three exercises today ",
                                 name: "Iuaua Miaj")

let fourthProfile = LayoutProfile(colourOne: UIColor(red: 1/255, green: 233/255, blue: 200/255, alpha: 0.8),
                                 colourTwo: UIColor(red: 69/255, green: 43/255, blue: 128/255, alpha: 0.8),
                                 bigText: "I do great work and i feel that my skill of programming is growing up ",
                                 name: "Laivnk Mwenen")



struct Profile {
    
    //let shared = Profile()
    
    var colours: [UIColor] = [.blue, .gray, .purple, .green, .red, .yellow]
    
}

var colours: [UIColor] = [.blue, .gray, .purple, .green, .red, .yellow]
