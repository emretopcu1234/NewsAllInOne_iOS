//
//  Data.swift
//  NewsAllInOne
//
//  Created by Emre Topçu on 5.01.2022.
//

import Foundation

enum Category: String {
    case Favorites = "Favorites"
    case News = "News"
    case Economy = "Economy"
    case Sport = "Sport"
    case Health = "Health"
    case Science = "Science"
    case Technology = "Technology"
    case Travel = "Travel"
    case Entertainment = "Entertainment"
}

struct MenuItem: Identifiable {
    let id: Category
    let image: String
    var category: String {
        return id.rawValue
    }
}

let menuItems = [
    MenuItem(id: Category.Favorites, image: "favorites"),
    MenuItem(id: Category.News, image: "news"),
    MenuItem(id: Category.Economy, image: "economy"),
    MenuItem(id: Category.Sport, image: "sport"),
    MenuItem(id: Category.Health, image: "health"),
    MenuItem(id: Category.Science, image: "science"),
    MenuItem(id: Category.Technology, image: "technology"),
    MenuItem(id: Category.Travel, image: "travel"),
    MenuItem(id: Category.Entertainment, image: "entertainment")
]

struct WebsiteItem: Identifiable {
    let id: String
    let image: String
    let category: String
    let url: String
}

let websiteItems = [
    WebsiteItem(id: "Apple News", image: "apple", category: Category.News.rawValue, url: "https://www.apple.com/apple-news/"),
    WebsiteItem(id: "BBC News", image: "bbc", category: Category.News.rawValue, url: "https://www.bbc.com/"),
    WebsiteItem(id: "CNN News", image: "cnn", category: Category.News.rawValue, url: "https://edition.cnn.com/"),
    WebsiteItem(id: "Daily Mail News", image: "daily mail", category: Category.News.rawValue, url: "https://www.dailymail.co.uk/news/index.html"),
    WebsiteItem(id: "Fox News", image: "fox", category: Category.News.rawValue, url: "https://www.foxnews.com/"),
    WebsiteItem(id: "NBC News", image: "nbc", category: Category.News.rawValue, url: "https://www.nbcnews.com/"),
    WebsiteItem(id: "New York Times News", image: "the ny times", category: Category.News.rawValue, url: "https://www.nytimes.com/"),
    WebsiteItem(id: "The Guardian News", image: "the guardian", category: Category.News.rawValue, url: "https://www.theguardian.com/international"),
    WebsiteItem(id: "The Times News", image: "the times", category: Category.News.rawValue, url: "https://www.thetimes.co.uk/"),
    WebsiteItem(id: "Wall Street Journal News", image: "wsj", category: Category.News.rawValue, url: "https://www.wsj.com/"),
    
    WebsiteItem(id: "BBC Economy", image: "bbc", category: Category.Economy.rawValue, url: "https://www.bbc.com/news/business/economy"),
    WebsiteItem(id: "CNN Economy", image: "cnn", category: Category.Economy.rawValue, url: "https://edition.cnn.com/business/economy"),
    WebsiteItem(id: "Daily Mail Economy", image: "daily mail", category: Category.Economy.rawValue, url: "https://www.dailymail.co.uk/news/uk-economy/index.html"),
    WebsiteItem(id: "Fox Economy", image: "fox", category: Category.Economy.rawValue, url: "https://www.foxnews.com/category/us/economy"),
    WebsiteItem(id: "NBC Economy", image: "nbc", category: Category.Economy.rawValue, url: "https://www.nbcnews.com/business/economy"),
    WebsiteItem(id: "The New York Times Economy", image: "the ny times", category: Category.Economy.rawValue, url: "https://www.nytimes.com/section/business/economy"),
    WebsiteItem(id: "The Guardian Economy", image: "the guardian", category: Category.Economy.rawValue, url: "https://www.theguardian.com/business/economics"),
    WebsiteItem(id: "The Times Economy", image: "the times", category: Category.Economy.rawValue, url: "https://www.thetimes.co.uk/topic/economics?page=1"),
    WebsiteItem(id: "Wall Street Journal Economy", image: "wsj", category: Category.Economy.rawValue, url: "https://www.wsj.com/news/economy"),
    
    WebsiteItem(id: "BBC Sport", image: "bbc", category: Category.Sport.rawValue, url: "https://www.bbc.com/sport"),
    WebsiteItem(id: "CNN Sport", image: "cnn", category: Category.Sport.rawValue, url: "https://edition.cnn.com/sport"),
    WebsiteItem(id: "Daily Mail Sport", image: "daily mail", category: Category.Sport.rawValue, url: "https://www.dailymail.co.uk/sport/index.html"),
    WebsiteItem(id: "ESPN", image: "espn", category: Category.Sport.rawValue, url: "https://www.espn.com/"),
    WebsiteItem(id: "Fox Sport", image: "fox", category: Category.Sport.rawValue, url: "https://www.foxnews.com/sports"),
    WebsiteItem(id: "Goal.com", image: "goal com", category: Category.Sport.rawValue, url: "https://www.goal.com"),
    WebsiteItem(id: "NBA", image: "nba", category: Category.Sport.rawValue, url: "https://www.nba.com/"),
    WebsiteItem(id: "NBC Sport", image: "nbc", category: Category.Sport.rawValue, url: "https://www.nbcsports.com/"),
    WebsiteItem(id: "The New York Times Sport", image: "the ny times", category: Category.Sport.rawValue, url: "https://www.nytimes.com/section/sports"),
    WebsiteItem(id: "Sports Illustrated", image: "sports illustrated", category: Category.Sport.rawValue, url: "https://www.si.com/"),
    WebsiteItem(id: "Skysports", image: "skysports", category: Category.Sport.rawValue, url: "https://www.skysports.com/"),
    WebsiteItem(id: "The Guardian Sport", image: "the guardian", category: Category.Sport.rawValue, url: "https://www.theguardian.com/uk/sport"),
    WebsiteItem(id: "The Times Sport", image: "the times", category: Category.Sport.rawValue, url: "https://www.thetimes.co.uk/sport"),
    WebsiteItem(id: "Wall Street Journal Sport", image: "wsj", category: Category.Sport.rawValue, url: "https://www.wsj.com/news/sports"),
    
    WebsiteItem(id: "BBC Health", image: "bbc", category: Category.Health.rawValue, url: "https://www.bbc.com/news/health"),
    WebsiteItem(id: "CNN Health", image: "cnn", category: Category.Health.rawValue, url: "https://edition.cnn.com/health"),
    WebsiteItem(id: "Daily Mail Health", image: "daily mail", category: Category.Health.rawValue, url: "https://www.dailymail.co.uk/health/index.html"),
    WebsiteItem(id: "Drugs.com", image: "drugs com", category: Category.Health.rawValue, url: "https://www.drugs.com/"),
    WebsiteItem(id: "Fox Health", image: "fox", category: Category.Health.rawValue, url: "https://www.foxnews.com/health"),
    WebsiteItem(id: "Health.com", image: "health com", category: Category.Health.rawValue, url: "https://www.health.com/"),
    WebsiteItem(id: "Mayoclinic", image: "mayoclinic", category: Category.Health.rawValue, url: "https://www.mayoclinic.org/"),
    WebsiteItem(id: "NBC Health", image: "nbc", category: Category.Health.rawValue, url: "https://www.nbcnews.com/health"),
    WebsiteItem(id: "NIH", image: "nih", category: Category.Health.rawValue, url: "https://www.nih.gov/"),
    WebsiteItem(id: "The New York Times Health", image: "the ny times", category: Category.Health.rawValue, url: "https://www.nytimes.com/section/health"),
    WebsiteItem(id: "The Guardian Health", image: "the guardian", category: Category.Health.rawValue, url: "https://www.theguardian.com/lifeandstyle/health-and-wellbeing"),
    WebsiteItem(id: "The Times Health", image: "the times", category: Category.Health.rawValue, url: "https://www.thetimes.co.uk/topic/health"),
    WebsiteItem(id: "Wall Street Journal Health", image: "wsj", category: Category.Health.rawValue, url: "https://www.wsj.com/news/business/health-industry"),
    WebsiteItem(id: "Webmd.com", image: "webmd", category: Category.Health.rawValue, url: "https://www.webmd.com/"),
    
    WebsiteItem(id: "BBC Science", image: "bbc", category: Category.Science.rawValue, url: "https://www.bbc.com/news/science_and_environment"),
    WebsiteItem(id: "CNN Science", image: "cnn", category: Category.Science.rawValue, url: "https://edition.cnn.com/specials/space-science"),
    WebsiteItem(id: "Daily Mail Science", image: "daily mail", category: Category.Science.rawValue, url: "https://www.dailymail.co.uk/sciencetech/index.html"),
    WebsiteItem(id: "Discovery", image: "discovery", category: Category.Science.rawValue, url: "https://www.discovery.com/"),
    WebsiteItem(id: "Fox Science", image: "fox", category: Category.Science.rawValue, url: "https://www.foxnews.com/science"),
    WebsiteItem(id: "NASA", image: "nasa", category: Category.Science.rawValue, url: "https://www.nasa.gov/"),
    WebsiteItem(id: "NBC Science", image: "nbc", category: Category.Science.rawValue, url: "https://www.nbcnews.com/science"),
    WebsiteItem(id: "Science Daily", image: "science daily", category: Category.Science.rawValue, url: "https://www.sciencedaily.com/"),
    WebsiteItem(id: "Space.com", image: "space com", category: Category.Science.rawValue, url: "https://www.space.com/"),
    WebsiteItem(id: "The New York Times Science", image: "the ny times", category: Category.Science.rawValue, url: "https://www.nytimes.com/section/science"),
    WebsiteItem(id: "The Guardian Science", image: "the guardian", category: Category.Science.rawValue, url: "https://www.theguardian.com/science"),
    WebsiteItem(id: "The Times Science", image: "the times", category: Category.Science.rawValue, url: "https://www.thetimes.co.uk/topic/science?page=1"),
    WebsiteItem(id: "Wall Street Journal Science", image: "wsj", category: Category.Science.rawValue, url: "https://www.wsj.com/news/science"),
    
    WebsiteItem(id: "BBC Technology", image: "bbc", category: Category.Technology.rawValue, url: "https://www.bbc.com/news/technology"),
    WebsiteItem(id: "CNN Technology", image: "cnn", category: Category.Technology.rawValue, url: "https://edition.cnn.com/business/tech"),
    WebsiteItem(id: "Daily Mail Technology", image: "daily mail", category: Category.Technology.rawValue, url: "https://www.dailymail.co.uk/sciencetech/index.html"),
    WebsiteItem(id: "Fox Technology", image: "fox", category: Category.Technology.rawValue, url: "https://www.foxnews.com/tech"),
    WebsiteItem(id: "NBC Technology", image: "nbc", category: Category.Technology.rawValue, url: "https://www.nbcnews.com/tech-media"),
    WebsiteItem(id: "Tech Crunch", image: "tech crunch", category: Category.Technology.rawValue, url: "https://techcrunch.com/"),
    WebsiteItem(id: "The New York Times Technology", image: "the ny times", category: Category.Technology.rawValue, url: "https://www.nytimes.com/section/technology"),
    WebsiteItem(id: "The Guardian Technology", image: "the guardian", category: Category.Technology.rawValue, url: "https://www.theguardian.com/uk/technology"),
    WebsiteItem(id: "The Times Technology", image: "the times", category: Category.Technology.rawValue, url: "https://www.thetimes.co.uk/topic/technology?page=1"),
    WebsiteItem(id: "Wall Street Journal Technology", image: "wsj", category: Category.Technology.rawValue, url: "https://www.wsj.com/news/technology"),
    WebsiteItem(id: "Wired.com", image: "wired com", category: Category.Technology.rawValue, url: "https://www.wired.com/"),
    
    WebsiteItem(id: "BBC Travel", image: "bbc", category: Category.Travel.rawValue, url: "https://www.bbc.com/travel"),
    WebsiteItem(id: "Booking.com", image: "booking com", category: Category.Travel.rawValue, url: "https://www.booking.com"),
    WebsiteItem(id: "CNN Travel", image: "cnn", category: Category.Travel.rawValue, url: "https://edition.cnn.com/travel"),
    WebsiteItem(id: "Daily Mail Travel", image: "daily mail", category: Category.Travel.rawValue, url: "https://www.dailymail.co.uk/travel/index.html"),
    WebsiteItem(id: "Fox Travel", image: "fox", category: Category.Travel.rawValue, url: "https://www.foxnews.com/travel"),
    WebsiteItem(id: "NBC Travel", image: "nbc", category: Category.Travel.rawValue, url: "https://www.nbcnews.com/business/travel"),
    WebsiteItem(id: "Skyscanner", image: "skyscanner", category: Category.Travel.rawValue, url: "https://www.skyscanner.com/"),
    WebsiteItem(id: "The New York Times Travel", image: "the ny times", category: Category.Travel.rawValue, url: "https://www.nytimes.com/section/travel"),
    WebsiteItem(id: "The Guardian Travel", image: "the guardian", category: Category.Travel.rawValue, url: "https://www.theguardian.com/uk/travel"),
    WebsiteItem(id: "The Times Travel", image: "the times", category: Category.Travel.rawValue, url: "https://www.thetimes.co.uk/travel/"),
    WebsiteItem(id: "Tripadvisor", image: "tripadvisor", category: Category.Travel.rawValue, url: "https://www.tripadvisor.com/"),
    WebsiteItem(id: "Wall Street Journal Travel", image: "wsj", category: Category.Travel.rawValue, url: "https://www.wsj.com/news/life-work/travel"),
    
    WebsiteItem(id: "BBC Entertainment", image: "bbc", category: Category.Entertainment.rawValue, url: "https://www.bbc.com/news/entertainment_and_arts"),
    WebsiteItem(id: "CNN Entertainment", image: "cnn", category: Category.Entertainment.rawValue, url: "https://edition.cnn.com/entertainment"),
    WebsiteItem(id: "Daily Mail Entertainment", image: "daily mail", category: Category.Entertainment.rawValue, url: "https://www.dailymail.co.uk/usshowbiz/index.html"),
    WebsiteItem(id: "Fox Entertainment", image: "fox", category: Category.Entertainment.rawValue, url: "https://www.foxnews.com/entertainment"),
    WebsiteItem(id: "NBC Entertainment", image: "nbc", category: Category.Entertainment.rawValue, url: "https://www.nbcnews.com/pop-culture/celebrity"),
    WebsiteItem(id: "Netflix", image: "netflix", category: Category.Entertainment.rawValue, url: "https://www.netflix.com/"),
    WebsiteItem(id: "Prime Video", image: "prime video", category: Category.Entertainment.rawValue, url: "https://primevideo.com/"),
    WebsiteItem(id: "The New York Times Entertainment", image: "the ny times", category: Category.Entertainment.rawValue, url: "https://www.nytimes.com/section/t-magazine/entertainment"),
    WebsiteItem(id: "The Guardian Entertainment", image: "the guardian", category: Category.Entertainment.rawValue, url: "https://www.theguardian.com/tv-and-radio/entertainment"),
    WebsiteItem(id: "The Times Entertainment", image: "the times", category: Category.Entertainment.rawValue, url: "https://www.thetimes.co.uk/arts-culture"),
    WebsiteItem(id: "Wall Street Journal Entertainment", image: "wsj", category: Category.Entertainment.rawValue, url: "https://www.wsj.com/news/types/arts-entertainment")
]
