---
layout: page
title: Typography
permalink: /Typography/
---

Supposed to be the title (h1 tag)
---

Title
===

h2 to h6
---

Subtitle
---

### Heading 3

#### Heading 4

##### Heading 5

###### Heading 6

One line paragragh, **bold** and *italic* and `inline code`
---

This **post** is to *showcase* the `typography` of a website. 

Block quote, with footnote
---

>"He isn't yet," said Martha. "But he began all wrong. Mother said that there was enough trouble and raging in th' house to set any child wrong. They was afraid his back was weak an' they've always been takin' care of it--keepin' him lyin' down and not lettin' him walk. Once they made him wear a brace but he fretted so he was downright ill. Then a big doctor came to see him an' made them take it off. He talked to th' other doctor quite rough--in a polite way. He said there'd been too much medicine and too much lettin' him have his own way."[^1]

Long paragraph, with strike-through
---

"He's th' worst young nowt as ever was!" said Martha. "I won't say as he hasn't been ill a good bit. He's had coughs an' colds that's ~~nearly killed~~ him two or three times. Once he had rheumatic fever an' once he had typhoid. Eh! Mrs. Medlock did get a fright then. He'd been out of his head an' she was talkin' to th' nurse, thinkin' he didn't know nothin', an' she said, 'He'll die this time sure enough, an' best thing for him an' for everybody.' An' she looked at him an' there he was with his big eyes open, starin' at her as sensible as she was herself. She didn't know wha'd happen but he just stared at her an' says, 'You give me some water an' stop talkin'.'"

Unordered list, and nested
---

- Angry Birds
- Neighbors 2: Sorority Rising
    - The Nice Guys
    - Welcome to Happiness
        - Maggie's Plan
    - 	Weiner
- Ma ma

Ordered list, and nested
---

1. INSIDE OUT
2. MAD MAX: FURY ROAD
3. THE MARTIAN
4. STRAIGHT OUTTA COMPTON
5. SICARIO
6. ME AND EARL AND THE DYING GIRL
7. KINGSMAN: THE SECRET SERVICE
8. EX MACHINA
9. ANT-MAN
10. AVENGERS: AGE OF ULTRON
    8. EX MACHINA
    9. ANT-MAN
         9. ANT-MAN
        10. AVENGERS: AGE OF ULTRON 
    10. AVENGERS: AGE OF ULTRON


Table
---

Event | Durations(hrs) | 2000 | 10000 | 20000 | 50000 | 100000 
:--   |       --- |  --- |   --- |   --- |   --- | --- 
つぼみ | 174 | 47907 | 27641 | 23986 | 19862 | 17215
絶対特権主張しますっ! | 174 | 51353 | 26729 | 22646 | 18454 | 15722
オルゴールの小箱 | 174 | 56739 | 29810 | 24300 | 19783 | 17425
パステルピンクな恋 | 174 | 43854 | 24552 | 20618 | 16788 | 14276
Snow Wings | 222 | 50954 | 30227 | 25722 | 20748 | 17416
Orange Sapphire | 150 | 42944 | 25180 | 20566 | 16593 | 14230
Nation Blue | 198 | 67627 | 39108 | 31860 | 24863 | 21949
アタシポンコツアンドロイド | 249 | 78330 | 45409 | 36308 | 28527 | 24542

Code snippet
---

```swift
//
//  ManageClassTableViewController.swift
//  Attendance Tracker
//
//  Created by Yifeng on 10/17/15.
//  Copyright © 2015 the Pioneers. All rights reserved.
//

import UIKit
import SwiftyJSON

class ManageClassTableViewController: UITableViewController {
    
    let cellIdentifier = "classCell"
    let requester = RequestHelper()
    let userDefaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    
    }
    
    override func viewWillAppear(animated: Bool) {
        reloadData()
    }

    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    // MARK: - actions
    @IBAction func addNewPressed(sender: AnyObject) {
        
        if CourseManager.sharedInstance.courseData.count >= 4 {
            Utils.alert("Classes", message: "You have \(CourseManager.sharedInstance.courseData.count) classes now")
        } else {
            // self.performSegueWithIdentifier("addCourse", sender: self)
        }
        
        self.performSegueWithIdentifier("addCourse", sender: self)
        
    }
```

Definition list (Come on, it's useless)
---
kramdown
: A Markdown-superset converter


[^1]: Burnett, Frances Hodgson, and Tasha Tudor. The Secret Garden. [Web.][secret-garden]

[secret-garden]: http://www.pagebypagebooks.com/Frances_Hodgson_Burnett/The_Secret_Garden/
