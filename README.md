# Coordinate-Patter
Created Mock Example of Coordinator pattern with MVVM architecture which consists of TabBar as MainCordinator.

struct MyMeetingView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<5) {_ in
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Test data for Automation")
                            .font(.headline)
                        
                        HStack(spacing: 8) {
                            Image(systemName: "calendar")
                            Text("Thursday, Feb-08,2024")
                            Spacer()
                            Image(systemName: "chevron.right")
                                                .foregroundColor(.gray)
                                                .imageScale(.small)
                        }
                        HStack(spacing: 10) {
                            Image(systemName: "clock")
                            Text("9:00 - 9.30 p.m India time(IST)")
                                .font(.subheadline)
                        }
                        NavigationLink(destination: Text("You reached here via NaviagtionLink")) {
                            
                        }.frame(width: 0, height: 0)
                        .hidden()
                    }
                }
            }
           .navigationTitle("Upcoming Meetings")
        }
    }
}
