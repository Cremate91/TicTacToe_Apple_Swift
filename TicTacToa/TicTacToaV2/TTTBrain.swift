//
//  TTTBrain.swift
//  TicTacToaV2
//
//  Created by master on 12.05.16.
//  Copyright © 2016 de.beuth-hochschule. All rights reserved.
//

import Foundation


class TTTBrain {
    var spielFeld: [Int: String] = [1 : "1",2: "2",3: "3",4: "4",5: "5",6: "6",7: "7",8: "8", 9: "9"]
    var fin: Bool = false
    var winner = ""
    func instertChar(feld: Int, wert: String) {
        spielFeld[feld] = wert
    }
    func checkForWin() {
        //Feld 1, Feld 2, Feld3
        if(spielFeld[1] == spielFeld[2] && spielFeld[1] == spielFeld[3]){
            //print("\(spielFeld[1]) win")
            fin = true;
            winner = spielFeld[1]!
        }
        //Feld 4, Feld 5, Feld6
        if(spielFeld[4] == spielFeld[5] && spielFeld[4] == spielFeld[6]){
            //print("\(spielFeld[4]) win")
            fin = true;
            winner = spielFeld[4]!
        }
        //Feld 7, Feld 8, Feld9
        if(spielFeld[7] == spielFeld[8] && spielFeld[7] == spielFeld[9]){
            //print("\(spielFeld[7]) win")
            fin = true;
            winner = spielFeld[7]!
        }
        //Feld 1, Feld 4, Feld7
        if(spielFeld[1] == spielFeld[4] && spielFeld[1] == spielFeld[7]){
            //print("\(spielFeld[1]) win")
            fin = true;
            winner = spielFeld[1]!
        }
        //Feld 2, Feld 5, Feld8
        if(spielFeld[2] == spielFeld[5] && spielFeld[2] == spielFeld[8]){
            //print("\(spielFeld[2]) win")
            fin = true;
            winner = spielFeld[2]!
        }
        //Feld 3, Feld 6, Feld9
        if(spielFeld[3] == spielFeld[6] && spielFeld[3] == spielFeld[9]){
            //print("\(spielFeld[3]) win")
            fin = true;
            winner = spielFeld[3]!
        }
        //Feld 1, Feld 5, Feld9
        if(spielFeld[1] == spielFeld[5] && spielFeld[1] == spielFeld[9]){
            //print("\(spielFeld[1]) win")
            fin = true;
            winner = spielFeld[1]!
        }
        //Feld 7, Feld 5, Feld3
        if(spielFeld[7] == spielFeld[5] && spielFeld[7] == spielFeld[3]){
            //print("\(spielFeld[7]) win")
            fin = true;
            winner = spielFeld[7]!
        }
    }
}