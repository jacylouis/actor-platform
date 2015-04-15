//
//  ComposeController.swift
//  ActorClient
//
//  Created by Stepan Korshakov on 23.03.15.
//  Copyright (c) 2015 Actor LLC. All rights reserved.
//

import UIKit

class ComposeController: ContactsBaseController, UISearchBarDelegate, UISearchDisplayDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var searchView: UISearchBar?
    var searchDisplay: UISearchDisplayController?
    var searchSource: ContactsSource?
    
    override init() {
        super.init(nibName: "ComposeController", bundle: nil)
        
        self.navigationItem.title = "New Message";
        self.extendedLayoutIncludesOpaqueBars = true
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        view.backgroundColor = UIColor.whiteColor()
        
        bindTable(tableView, fade: true)
        
        searchView = UISearchBar()
        searchView!.delegate = self
        searchView!.frame = CGRectMake(0, 0, 0, 44)
        
        MainAppTheme.search.styleSearchBar(searchView!)
        
        searchDisplay = UISearchDisplayController(searchBar: searchView, contentsController: self)
        searchDisplay?.searchResultsDelegate = self
        searchDisplay?.searchResultsTableView.rowHeight = 56
        searchDisplay?.searchResultsTableView.separatorStyle = UITableViewCellSeparatorStyle.None
        searchDisplay?.searchResultsTableView.backgroundColor = Resources.BackyardColor
        searchDisplay?.searchResultsTableView.frame = tableView.frame
        
        tableView.tableHeaderView = searchView
        
        searchSource = ContactsSource(searchDisplay: searchDisplay!)

        super.viewDidLoad()
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if (tableView == self.tableView) {
            var contact = objectAtIndexPath(indexPath) as! AMContact
            navigateToMessagesWithPeerId(contact.getUid())
        } else {
            var contact = searchSource!.objectAtIndexPath(indexPath) as! AMContact
            navigateToMessagesWithPeerId(contact.getUid())
        }
    }
    
    // MARK: -
    // MARK: Navigation
    
    private func navigateToMessagesWithPeerId(peerId: jint) {
        var conversationController = AAConversationController(peer: AMPeer.userWithInt(peerId))
        conversationController.hidesBottomBarWhenPushed = true
        navigationController!.pushViewController(conversationController, animated: true)
        MainAppTheme.navigation.applyStatusBar()
    }

}