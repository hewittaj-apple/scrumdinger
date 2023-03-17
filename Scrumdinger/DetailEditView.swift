//
//  DetailEditView.swift
//  Scrumdinger
//
//  Created by Alex Hewitt on 3/17/23.
//

import SwiftUI

struct DetailEditView: View {
    @State private var data = DailyScrum.Data()
    @State private var newAttendeeName = ""
    
    var body: some View {
        Form {
            Section(header: Text("Meeting Info")){
                TextField("Title", text: $data.title)
            }
            HStack {
                Slider(value: $data.lengthInMinutes, in: 5...30, step: 1) {
                Text("Length")
                }
                Spacer()
                Text("\(Int(data.lengthInMinutes)) minutes")
            }
            Section(header: Text("Attendees")) {
                ForEach(data.attendees) { attendee in
                    Text(attendee.name)
                }
                .onDelete { indeces in
                    data.attendees.remove(atOffsets: indeces)
                }
                HStack {
                    TextField("New Attendee Name", text: $newAttendeeName)
                    Button(action: { } ) {
                        Image(systemName: "plus.circle.fill")
                    }
                }
            }
        }
    }
}

struct DetailEditView_Previews: PreviewProvider {
    static var previews: some View {
        DetailEditView()
    }
}
