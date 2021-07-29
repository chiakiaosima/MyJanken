//
//  ContentView.swift
//  MyJanken
//
//  Created by 青島智明 on 2021/07/27.
//

import SwiftUI

struct ContentView: View {
    
    @State var answerNumber = 0
    
    var body: some View {
        //垂直にレイアウト（縦方向にレイアウト）
        VStack {
            
            if answerNumber == 0 {
                Text("これからジャンケンをします")
                
            } else if answerNumber == 1 {
                //ジャンケンの数字が1だったら、グー画像を指定
                Image("gu")
                    //リサイズを指定
                    .resizable()
                    //画面内に収まるように、アスペクト比(縦横比)を維持する指定
                    .aspectRatio(contentMode: .fit)
                //ジャンケンの種類を指定
                Text("グー")
                
            } else if answerNumber == 2 {
                //ジャンケンの数字が2だったら、チョキ画像を指定
                Image("choki")
                //リサイズを指定
                    .resizable()
                //画面内に収まる様に、アスペクト比（縦横比）を維持する指定
                    .aspectRatio(contentMode: .fit)
                //ジャンケンの種類を指定
                Text("チョキ")
            } else {
                //ジャンケンの数字が「1」と「2」以外だったら、パー画像を指定
                Image("pa")
                //リサイズを指定
                    .resizable()
                //画面内に収まる様に、アスペクト比（縦横比）を維持する指定
                    .aspectRatio(contentMode: .fit)
                //ジャンケンの種類を指定
                Text("パー")
            } //ifここまで
           
            
            //[ジャンケンをする！]ボタン
            Button(action: {
                //次のジャンケンへ
                answerNumber = Int.random(in: 1...3)
            }) {
                //Buttonに表示する文字を指定
                Text("ジャンケンをする！")
            } //[ジャンケンをする]ボタン　ここまで
            
        } //VStackここまで
    } //bodyここまで
} //contentViewここまで

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
