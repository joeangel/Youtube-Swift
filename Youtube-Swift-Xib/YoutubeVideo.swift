//
//  User.swift
//  Emoiste
//
//  Created by Juan Manuel Hernandez del Olmo on 16/1/15.
//  Copyright (c) 2015 Emoiste. All rights reserved.
//

import Foundation
import UIKit

class YoutubeVideo {
/*
// Music
    var id:AnyObject = "wxd4bY_o_4k";
    var description:AnyObject = "Song Titles... Click &quot;Show More&quot; ↓ ↓ ↓ My Other Collections: More Joe Hisaishi: http://www.youtube.com/watch?v=xDAqQgWiAvE Yiruma: http://www.youtube.com/wat...";
    var updated:AnyObject = "2013-10-05";
    var duration:AnyObject = "PT129M37S";
    var title:AnyObject = "test";
    var thumbnail:AnyObject = "https://i.ytimg.com/vi/wxd4bY_o_4k/hqdefault.jpg";
*/
// Doraemon
    var id:AnyObject = "1NjVQPBnnok";
    var description:AnyObject = "  ";
    var updated:AnyObject = "2015-03-14";
    var duration:AnyObject = "PT19M44S";
    var title:AnyObject = "[新番多啦A夢][395][2015.03.13][720P] 大雄的板紙宇宙空間站";
    var thumbnail:AnyObject = "https://i.ytimg.com/vi/1NjVQPBnnok/hqdefault.jpg";
    
    init(){}
    
    init(id:AnyObject, description:AnyObject, updated:AnyObject, duration:AnyObject, title:AnyObject, thumbnail:AnyObject){
        self.id = id
        self.description = description
        self.updated = updated
        self.duration = duration
        self.title=title
        self.thumbnail = thumbnail
    }
    
}