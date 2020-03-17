//
//  MainVC.swift
//  VIPER
//
//  Created by Salma Hassan on 3/17/20.
//  Copyright © 2020 salma. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var tableView : UITableView! {
        didSet {
            tableView.register(UINib(nibName: String(describing: TableViewCell.self), bundle: nil), forCellReuseIdentifier: "Cell")
        }
    }
    
    var presenter: ViewToPresenter?
    
    var news : [News]? {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        presenter?.fetchData()
    }
}

extension MainVC : UITableViewDataSource , UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news?.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? TableViewCell else { return UITableViewCell() }

        cell.label.text = news?[indexPath.row].title
    
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        DispatchQueue.main.async {
            self.presenter?.showDetailsView(viewController: self, with: self.news?[indexPath.row])
        }
    }
}

extension MainVC : PresenterToView {
    func reloadView(with news : [News]) {
        self.news = news
    }
}
