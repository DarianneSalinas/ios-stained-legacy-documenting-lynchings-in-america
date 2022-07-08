//
//  LandmarkData.swift
//  MapExample8
//
//  Created by Darianne Salinas on 6/27/22.
//

import Foundation
import CoreLocation

struct LandmarkData {
    
    
    //TC: 40.77603054023396, -111.89104334366874
    //WH: 40.76718624909351, -111.8881509428843
    static var landmarksArray: [Landmark] {
        
        return [
        //Salt Lake City - lynchings
        Landmark(
            date: "1866",
            locationName: "Thomas Coleman Lynched SLC",
            latitude: 40.77603054023396,
            longitude: -111.89104334366874,
            address: "300 North and Main Street",
            imageName: ["ut-slc-coleman", "ut-slc-coleman-harvey"],
            Description: "\tHe was beaten on the head with a large rock that was found with blood still on it. He was stabbed in his chest and throat with his own knife. His knife had his name etched on the handle. A racist sign was found with his body. A sign that 'aimed to send a message to Utah’s Black Community' \n \n Sources: \n https://www.semahadithi.org/slccrp \n https://exhibits.lib.utah.edu/s/utah-lynching/page/welcome \n  https://kslnewsradio.com/1966468/utah-historian-reflects-on-the-states-history-with-lynching-and-prejudice/amp/ ",
            names: "Thomas Coleman",
            coordinate: CLLocationCoordinate2D(latitude: 40.77603054023396, longitude: -111.89104334366874)
        ),
        
        Landmark(
            date: "1883",
            locationName: "William Harvey - Lynched by Mob",
            latitude: 40.76718624909351,
            longitude: -111.8881509428843,
            address: "State Street and 100 South",
            imageName: [""],
            Description: "\tIn 1883, William Harvey, a black man, was handed over by police to a white mob(approximately 2000 mob participants). After being hanged, his body was dragged through the streets. No one was charged with his death. He was an army veteran. Moved to SLC from Pueble Colorado. His violent death occurred near the corner of State Street and 100 south. Location is now the Wallace F. Bennett federal building. \n \n Sources: \n https://kjzz.com/news/local/utah-researchers-put-spotlight-on-black-army-veterans-lynching",
            names: "William H. Harvey",
            coordinate: CLLocationCoordinate2D(latitude: 40.76718624909351, longitude: -111.8881509428843)
        ),
        
        //Georgia
        //walton county - lynchings
        //couple's: 33.857180, -83.612262
        //sam wilkes: 33.33977033492637, -84.78442851520512
        Landmark(
            date: "1946",
            locationName: "Moore's Ford Lynching",
            latitude: 33.857180,
            longitude: -83.612262,
            address: "2.4 miles east, at Moore’s Ford Bridge on the Apalachee River, Walton County Georgia",
            imageName: ["ga-moores-ford-lynching", "ga-moores-ford-funeral"],
            Description: "\tIn 1946, two couples, George W. Dorsey and wife, Mae Murray and couple, Roger Malcom and pregnant wife Dorothy, were killed. George Dorsey was a World War II veteran having served for 5 years. He had been home for 9 months before their death. Roger Malcom was arrested for allegedly stabbing a white farmer during a fight. A few weeks later, the white landowner whom the Malcoms and Dorseys sharecropped went to the jail to post bond. On their way back, a mob of 30 armed white men seized George Dorsey and Roger Malcom and were tied to an oak tree. Dorothy Malcom upon pleading for the men to be let go, the mob seized the two women. The white mob shot the two couples 60 times at close range. No one was held accountable for these murders. \n \n Sources: \n https://calendar.eji.org/racial-injustice/jul/25 \n https://georgiahistory.com/ghmi_marker_updated/moores-ford-lynching/ \n https://www.nytimes.com/2020/03/30/us/Moores-ford-lynching-Georgia.html",
            names: "George W. Dorsey and wife Mae Murray, Roger Malcom and pregnant wife Dorothy Dorsey.",
            coordinate: CLLocationCoordinate2D(latitude: 33.857180, longitude: -83.612262)
        ),
        
        Landmark(
            date: "1912",
            locationName: "Hamilton Georgia Lynching",
            latitude: 32.7579,
            longitude: -84.8749,
            address: "Hamilton County, Georgia",
            imageName: ["ga-hamilton-county-lynching"],
            Description: "\tOn Jan 22, 1912, four African Americans (three men and one woman) were lynched. Their names were John Moore, Eugene Harrington, Burrell Hardaway, and Dusky Crutchfield. One was a minister and the other three were farmers. One of the farmers was a woman). The three men were accused of killing a white planter who was known to sexually harrass and abuse Black girls and women. Dusky Crutchfield refused to testify against the men. All 4 individuals were arrested without evidence. They were forcibly removed from jail and hanged from an ancient live oak tree. \n \n Sources: \n zinneducationproject ",
            names: "3 Men and 1 woman",
            coordinate: CLLocationCoordinate2D(latitude: 32.7579, longitude: -84.8749)
        ),
        
        Landmark(
            date: "1899",
            locationName: "Samuel Wilkes Lynching",
            latitude: 33.33977033492637,
            longitude: -84.78442851520512,
            address: "Newnan, Coweta County, Georgia",
            imageName: ["ga-sam-wilkes"],
            Description: "\tOn April 12th 1899, Sam Wilkes allegedly approached his employer about a wage increase. An argument occurred and his employer pulled out a gun with the intention to kill. In an act of self-defense, Sam Wilkes threw an axe killing his employer. He fled the scene to avoid social and legal consequences. He was later caught and forcibly returned to Coweta County area by train. On his way, an angry mob apprehended the train with the intent to kill Sam Wilkes. His body was dismembered and he was burned alive.\n \n Sources: \n https://theclio.com/entry/22714",
            names: "Samuel Wilkes",
            coordinate: CLLocationCoordinate2D(latitude:  33.33718890970852, longitude:  -84.78168193337784)
        ),
        
        Landmark(
            date: "2020",
            locationName: "Ahmaud Arbery",
            latitude: 31.12417,
            longitude: -81.55611,
            address: "Satilla Shores near Brunswick Georgia",
            imageName: ["ga-ahmaud-arbery", "ga-ahmaud-arbery-gravestone"],
            Description: " \tOn February 23, 2020 Ahmaud Arbery, a 25-year-old black man was jogging through the Satilla Shores neighborhood, minutes away from his own home, in Brunswick, Georgia. Two local white men pursued Arbery in their trucks blocking his path. They shot and killed Arbery. The two white men alleged there had been several break-ins in the area. Without any evidence, they assumed Ahmaud Arbery to be the suspect. Ahmaud Arbery loved to run and was a former high school football standout.\n \n Sources: \n https://acluga.org/wp-content/uploads/2021/04/what_happened_to_ahmaud_arbery_timeline_06252020-2.pdf \n https://www.nytimes.com/article/ahmaud-arbery-timeline.html \n https://en.wikipedia.org/wiki/Murder_of_Ahmaud_Arbery ",
            names: "",
            coordinate: CLLocationCoordinate2D(latitude: 31.12417, longitude: -81.55611)
                ),
        
        Landmark(
            date: "1892",
            locationName: "Clarkesville Lynching",
            latitude: 34.612600,
            longitude: -83.524900,
            address: "Clarkesville, Georgia",
            imageName: ["ga-clarkesville-lynching"],
            Description: "\tOn the morning of May 17, 1892, three African American men were lynched. Jim Redmond, Gus Robinson, and Bob Anderson were held in the Habersham County Jail accused of murdering a marhshal during a bank robbery. Redmond attributed the murder to Robinson and Anderson but all three were accused of taking part. Around the break of dawn that morning, a mob of one hundred to five hundred forcibly removed the three men from the jail and hung them from a tree using padlocked chains about a mile and a half away. Their bodies were also found riddled with bullets. \n \n Sources: \n  https://www.newspapers.com/clip/77913309/triple-lynching-habersham-1892/",
            names: "",
            coordinate: CLLocationCoordinate2D(latitude: 34.612600, longitude: -83.524900))
        
]
        
       // return [slc1, slc2, georgia1, georgia2, georgia3]
       //return
       // return [slc1]
    }

}
