#  Welcome to Documentation

What is documentation?
Documentation is the part of this project, which created by Wantonius to made him remember things of which to explain and which more to be detailed etc. This documentation will updated at every -push that is labelled as UPDATE. Anyway, if you're the part of the developer, feel free to share your findings here or your thoughts of the project. Thank you, and have a nice day **:)**

## Documentation Logbook #1 - Graphics

## Documentation Logbook #2 - Animation
Animation is one part of this project that is used to animate several object, such as the bass effect of the cajoon and the animation of device searching. In this part of documentation, I would like to place several notes so I didn't forget it and I could easily arrange my word to represent it to user.

### What is DispatchQueue.main.asyncAfter(deadline: .now() + 2.0)?
- DispatchQueue.main.asyncAfter(deadline: .now() + 2.0)
    is used to schedule a block of code to be executed after a specified delay. Let's break down this line:
        + **DispatchQueue.main**: 
            This specifies the dispatch queue on which the code should be executed. In this case, it's the main dispatch queue, which is the queue responsible for running tasks related to the user interface in a SwiftUI application.
        + **asyncAfter(deadline: .now() + 2.0)**: 
            This part schedules the code to be executed after a specified time interval. There are two parts we     could break down from this line:
                + **.now()**: This represents the current point in time.
                + **2.0**: It adds a time interval of 2.0 seconds to the current time. In other words, it schedules the code to run 2 seconds from the current time.

### What is .alignmentGuide(HorizontalAlignment.center) { a in a[.leading] + (a[.trailing] - a[.leading]) / 2}
- .alignmentGuide(HorizontalAlignment.center) { a in a[.leading] + (a[.trailing] - a[.leading]) / 2} 
    is used to specify how to align a view within its parent view along the horizontal axis. It's particularly useful for tuning the layout of subviews within a container (like rectangle inside a rectangle or VStacks inside HStacks or even ZStacks). Let's break it down this line:
        - **.alignmentGuide(HorizontalAlignment.center)**: 
            This line sets an alignment guide for the horizontal axis. It's specifying that you want to align the view horizontally with respect to the center.
        - **{ a in ... }**:
            This is a closure that calculates the alignment value. The parameter a is a dictionary that contains various alignment values, and you can use them to customize the alignment. "a" is just a variable, which you can change it into the other you want, or just follows the protocol in your job.
        - **a[.leading] + (a[.trailing] - a[.leading]) / 2**:
            This part represents the position of the leading edge (left side) and the trailing edge (right side) of the view. Then it also calculates the midpoint between the leading and trailing edges. This effectively centers the view horizontally within its parent. I took it from Stackoverflow to make sure the middle position in the view :3

### What's the purpose of ButtonAnimationModel(isShowingCircle: $isShowingRightKickCircle)?
- Well, it is a simple question but sometimes I forgot how to do so... **ButtonAnimationModel(isShowingCircle: $isShowingRightKickCircle)** is used to call the function called *isShowingCircle* from **ButtonAnimationModel** to any page you want, in this simple project I added it into **FreePlayMain**.
- **If I want to use it into the other page, what should I do?** 
    First you can call the function you want into a 'state', which the line is:
     @State private var isShowingLeftSnareCircle = false





