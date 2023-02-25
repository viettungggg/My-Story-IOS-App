//
//  ViewController.swift
//  My Story
//
//  Created by Dinh Viet Kien on 24/02/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapButton(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.story = Story(title: "Who am I?", image: UIImage(named: "musk1")!, info: "Elon Musk is a visionary entrepreneur, inventor, and engineer who has been at the forefront of many groundbreaking technologies and companies. He is perhaps best known for his work with Tesla, where he has pioneered the development of electric cars and renewable energy systems. He is also the founder of SpaceX, a company that designs and launches advanced rockets and spacecraft with the goal of enabling human exploration of space. Elon Musk is the real-life Tony Stark, but with fewer superpowers and more spaceships.")
            }
            else if tappedView.tag == 1 {
                detailViewController.story = Story(title: "Origin and background", image: UIImage(named: "musk2")!, info: "Elon Musk is a South African-born entrepreneur and engineer who is known for founding several successful companies, including Tesla and SpaceX. He has a background in physics and economics, and his passion for innovation and problem-solving has driven many of his groundbreaking achievements in electric vehicles, space exploration, and renewable energy.")
            }
            else if tappedView.tag == 2 {
                detailViewController.story = Story(title: "Net worth", image: UIImage(named: "musk3")!, info: "Elon Musk's net worth has grown tremendously over the years, thanks to the success of his various companies and his investments in other ventures. As of February 2023, he is estimated to have a net worth of around $250 billion USD, which makes him one of the richest people in the world.")
            }
        }
    }
}

