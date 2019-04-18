//
//  Calender_Table.swift
//  Calendar
//
//  Created by Ing on 2019. 4. 18..
//  Copyright © 2019년 Ing. All rights reserved.
//

import UIKit

class Calender_Table: UITableViewController {
    
    var myArray : [Info] = [Info(t:"대학원페어", c:Category.Graduate,d:"대학원 진학을 위한 행사",w:(2019,4,23),mf:nil),
                            Info(t:"영어 에세이 쓰기 대회" , c: Category.Contest, d:"영어 에세이 쓰는 대회" , w:(2019,5,13) , mf: nil),
                            Info(t:"독서 골든벨" , c:Category.Contest , d:"책읽고 문제푸는 대회" , w:(2019,4,30) , mf: nil),
                            Info(t:"연극" , c: Category.Entertain, d:"연극영화과에서 공연" , w:(2019,5,23) , mf: nil),
                            Info(t:"축제" , c:Category.Entertain , d:"실제로는 없습니다." , w:(2019,6,13) , mf: nil),
                            Info(t:"동아리 박람회" , c:Category.Entertain , d:"동아리 홍보를 시작하세요" , w:(2019,3,24) , mf: nil),
                            Info(t: "HCTF", c:Category.Computer , d:"CTF인데 한양버젼이에요" , w:(2019,7,13) , mf: nil),
                            Info(t:"이제 뭐가 남았죠?" , c:Category.Entertain , d:"딱히 쓸게 없네요" , w:(2054,1,2) , mf: nil),
                            Info(t:"미리배움터" , c:Category.Entertain , d:"새내기들이 들어와요" , w:(2020,1,15) , mf: nil),
                            Info(t:"마지막 행사네요" , c:Category.Entertain , d:"마지막이니까 봐줘요..." , w:(2100,10,10) , mf: nil)]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return myArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CalenderCell", for: indexPath)
            cell.textLabel?.text = myArray[indexPath.row].title;
            cell.detailTextLabel?.text = myArray[indexPath.row].desc;
            // Configure the cell...

        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
