//
//  ViewController.swift
//  selfSizeCollectionViewCells
//
//  Created by Andrew Foghel on 6/24/18.
//  Copyright © 2018 StockX. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource {
    @IBOutlet weak var collectionView: UICollectionView!
    
     var labelStrings = ["Q. There are three apples on a table and you take away two of them. How many apples do you have now? A. Two, of course!", "Q. A magician promises that he can throw a ball as hard as he can and have it stop, change direction, and come back to him. He claims he can do it without the ball bouncing off of anything, the ball being tied to anything, or the use of magnets. How is this possible? A. He throws the ball straight up in the air!", "Q. A girl fell off of a 30-foot ladder, but she didn't get hurt at all. How is this possible? A. She fell off the bottom step!", "Q. I'm an odd number. If you take away one of the letters in my name, I become even. What number am I? A. Seven. (Take away the S!)"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        collectionView.register(UINib(nibName: "Cell", bundle: nil), forCellWithReuseIdentifier: "cell")
        if let flowLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            flowLayout.estimatedItemSize = CGSize(width: 1, height: 1)
        }
        collectionView.dataSource = self
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return labelStrings.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! Cell
        cell.label.text = labelStrings[indexPath.row]
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

