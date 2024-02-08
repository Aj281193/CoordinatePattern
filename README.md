# Coordinate-Patter
Created Mock Example of Coordinator pattern with MVVM archtrcture which consist of TabBar as MainCordinator.



   Button {
                
                if let url = URL(string: "https://teams.microsoft.com/l/meetup-join/19%3ameeting_YmRkZmIwZjYtYjM0OC00Yjg1LWI0MGQtNzM4MjdjOTgwNmI2%40thread.v2/0?context=%7b%22Tid%22%3a%2277ba7f63-68e1-4518-9b06-e4ed959668ee%22%2c%22Oid%22%3a%22f940a7c0-4e13-44ef-94fe-21f01722b41d%22%7d"), UIApplication.shared.canOpenURL(url) {
                    UIApplication.shared.open(url)
                }
            } label: {
                Text("Join")
            


struct MeetingConfirmation: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Test data for Automation")
                .font(.headline)
                .padding([.bottom], 10)
            VStack(alignment: .leading, spacing: 8) {
                Text("Deatils")
                    .font(.headline)
                HStack(spacing: 8) {
                    Image(systemName: "calendar")
                    Text("Thursday, Feb-08,2024")
                }
                HStack(spacing: 10) {
                    Image(systemName: "clock")
                    Text("9:00 - 9.30 p.m India time(IST)")
                        .font(.subheadline)
                }
        
                HStack(spacing: 10) {
                    Image(systemName: "video")
                    Text("Virtual - Microsoft Teams")
                        .font(.subheadline)
                }
                
               // Text("Attendes")
            }
            .padding([.bottom], 20)
            Button(action: {
                
            }, label: {
                Text("Join Meeting")
            })
        }
        .frame(maxWidth: .infinity, alignment: .topLeading)
        .padding([.leading,.trailing], 16)

