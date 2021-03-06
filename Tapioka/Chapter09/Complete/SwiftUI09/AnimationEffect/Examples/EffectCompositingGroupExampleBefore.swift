import SwiftUI

fileprivate
struct ContentView: View {
    @State var firstName = ""
    @State var lastName = ""

    var body: some View {
        VStack {
            HStack {
                Text("名前入力")
                TextField("名前を入力してください",
                          text: $firstName)
                    .textFieldStyle(
                        RoundedBorderTextFieldStyle()
                    )
            }.padding()

            HStack {
                Text("名字入力")
                TextField("名字を入力してください",
                          text: $lastName)
                .textFieldStyle(
                    RoundedBorderTextFieldStyle()
                )
            }.padding()

            Button(action: {}) {
                Text("確定").foregroundColor(.white)
            }.padding(EdgeInsets.init(top: 10,
                                      leading: 100,
                                      bottom: 10,
                                      trailing: 100))
            .background(Capsule().fill(Color.blue))
            .padding()
        }
        .background(Color.yellow)
        .padding()
        .shadow(color: .gray,
                radius: 10,
                x: 5,
                y: 5)
    }
}

/*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
*/


// MARK: サンプル実行用コード

struct EffectCompositingGroupExampleBefore: View {
    var body: some View {
        ContentView()
    }
}

struct EffectCompositingGroupExampleBefore_Previews: PreviewProvider {
    static var previews: some View {
        EffectCompositingGroupExampleBefore()
    }
}

