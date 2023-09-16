class Project {
  final String? name, description, link;

  Project({required this.name, this.description, this.link});
}

final List<Project> projectList = [
  Project(
      name: "Henlo App (Zoom Clone)",
      description: "A Zoom Clone with build using Flutter SDK, Tech used : "
          "Firebase Auth, Firestore, Google Sign In, Jitsi Meet, "
          "It Featured with a lot of options like Google Sign In, "
          "Create New and Join Meeting, Chat, Mute/Unmute Audio and Video, Mute Everyone, "
          "Start Live Stream, Screen Share, Switch Front/Rear and Disable Camera,"
          " Picture in Picture,End Call, See Your Meeting History, Log out",
    link: "https://github.com/pshanmukha/zoom_clone"
  ),
  Project(
      name: "Simple Calculator App",
      description: "A Simple calculator app designed and build with Dart and Flutter."
          "This basic calculator app will combine a Simple user interface with Neumorphic buttons "
          "along with Haptic feedback, a few standard operations and functions, and an output to display the result. "
          "So it makes a great starter application, or template for another basic app",
      link: "https://github.com/pshanmukha/calculator"
  ),
  Project(
      name: "ChatGPT Clone App",
      description: "The ChatGPT clone version app is a multiplatform application that"
          " supports both mobile and web platforms and it " 
          "allows users to chat with an AI-powered language model called ChatGPT."
          "The app is built using the Flutter SDK and relies on OpenAI's REST APIs"
          " to interact with the language model."
          "The app utilizes various technologies and libraries such as Provider,"
          " Animated Loader, and Animated Text to enhance the user experience."
          " The Provider library is used to manage application state and provide"
          " a scalable and efficient way to share data between different widgets."
          " The Animated Loader is used to display a loading animation when the app"
          " is making API requests to OpenAI's servers. The Animated Text is used to"
          " add dynamic and engaging text effects to the user interface.",
      link: "https://github.com/pshanmukha/chat_gpt"
  ),
  Project(
      name: "Task-Manager",
      description: "This is a task manager app built using Flutter, Node.js, Express, "
          "and MongoDB. The app allows users to create, manage and track their daily tasks efficiently.",
      link: "https://github.com/pshanmukha/Task-Manager"
  ),
  Project(
      name: "X Clone App(Twitter)",
      description: "X Clone is an open-source microblogging platform, built with Flutter for " 
      "seamless cross-platform experience, Appwrite for a backend-as-a-service solution, "
      "and the Riverpod state management approach. Designed for developers, enthusiasts, "
      "and anyone aiming to dive deep into the world of social microblogging from a tech perspective.",
      link: "https://github.com/pshanmukha/twitter_clone"
  ),
  Project(
      name: "Simple Analog Clock App",
      description: "A minimalist analog clock app built with Flutter that displays the local time. "
      "It also features light and dark themes. Responsive design ensures a seamless experience across "
      "devices, while the user-friendly interface makes time-checking a delightful experience.",
      link: "https://github.com/pshanmukha/simple_analog_clock"
  ),
];