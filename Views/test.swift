import SwiftUI

struct Test: View {
    @State private var shouldShake = false
    
    var body: some View {
            VStack {
                Text("Click to Shake")
                    .font(.largeTitle)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .onTapGesture {
                        withAnimation(Animation.default.repeatCount(3).speed(5)) {
                            shouldShake = true
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                            shouldShake = false
                        }
                    }
                
                Rectangle()
                    .frame(width: 200, height: 200)
                    .foregroundColor(.red)
                    .cornerRadius(10)
                    .offset(x: shouldShake ? -10 : 0)
            }
        }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
