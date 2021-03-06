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
            
            // スペースを追加
            Spacer()
            
            if answerNumber == 0 {
                Text("これからジャンケンをします")
                
                // 可変に余白を設定
                    .padding(.bottom)
            } else if answerNumber == 1 {
                //ジャンケンの数字が1だったら、グー画像を指定
                Image("gu")
                    //リサイズを指定
                    .resizable()
                    //画面内に収まるように、アスペクト比(縦横比)を維持する指定
                    .aspectRatio(contentMode: .fit)
                
                // スペースを追加
                Spacer()
                //ジャンケンの種類を指定
                Text("グー")
                    
                    // 下辺に余白を設定
                        .padding(.bottom)
            } else if answerNumber == 2 {
                //ジャンケンの数字が2だったら、チョキ画像を指定
                Image("choki")
                //リサイズを指定
                    .resizable()
                //画面内に収まる様に、アスペクト比（縦横比）を維持する指定
                    .aspectRatio(contentMode: .fit)
                
                // スペースを追加
                Spacer()
                //ジャンケンの種類を指定
                Text("チョキ")
                
                    // 下辺に余白を設定
                        .padding(.bottom)
            } else {
                //ジャンケンの数字が「1」と「2」以外だったら、パー画像を指定
                Image("pa")
                //リサイズを指定
                    .resizable()
                //画面内に収まる様に、アスペクト比（縦横比）を維持する指定
                    .aspectRatio(contentMode: .fit)
                
                // スペースを追加
                Spacer()
                //ジャンケンの種類を指定
                Text("パー")
                
                    // 下辺に余白を設定
                        .padding(.bottom)
            } //ifここまで
           
            
            //[ジャンケンをする！]ボタン
            Button(action: {
                //　新しいジャンケンの結果を一時的に格納する変数を設ける
                var newAnsewrNumber = 0
                
                //　ランダムに結果を出すが、前回の結果と異なる場合のみ採用
                // repeatは繰り返しを意味する
                repeat {
                    // 1,2,3の変数をランダムに算出（乱数）
                    newAnsewrNumber = Int.random(in: 1...3)
                    
                    // 前回と同じ結果の時は、再度ランダムに数値を出す
                    
                    // 異なる結果の時は、repeatを抜ける
                } while answerNumber == newAnsewrNumber
                
                // 新しいジャンケンの結果を格納
                answerNumber = newAnsewrNumber
            }) {
                //Buttonに表示する文字を指定
                Text("ジャンケンをする！")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .background(Color.pink)
                    .foregroundColor(Color.white)
            } //[ジャンケンをする]ボタン　ここまで
            
        } //VStackここまで
    } //bodyここまで
} //contentViewここまで

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
