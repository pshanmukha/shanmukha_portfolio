class Certificate {
  final String? title, description, issuedBy, verifyLink, image;

  Certificate(
      {this.title,
      this.description,
      this.issuedBy,
      this.verifyLink,
      this.image});
}

List<Certificate> certificateList = [
  Certificate(
    title: "Microsoft Certified: Azure Fundamentals",
    description:
    "Microsoft Certified: Azure Fundamentals offers a foundational understanding of "
        "Microsoft Azure cloud concepts, services, pricing, governance, and core cloud principles. "
        "This is a good starting point for individuals in non-technical roles with no prior IT "
        "or cloud experience, or for those with on-premises IT experience looking to build basic "
        "Microsoft Azure cloud fluency.",
    verifyLink:
    "https://learn.microsoft.com/api/credentials/share/en-us/PanyamShanmukhaG-8608/3C00E85E4C6610BB?sharingId=9161309BB58A2C29",
    image:
    "https://images.credly.com/size/340x340/images/be8fcaeb-c769-4858-b567-ffaaa73ce8cf/image.png",
    issuedBy: "Microsoft",
  ),
  Certificate(
    title: "Developing Front-End Apps with React",
    description: "React is a JavaScript library for building user interfaces. "
        "It's maintained by Facebook and a community of individual developers and companies. "
        "Build dynamic websites and front-end applications quickly and easily with reusable React components",
    verifyLink:
        "https://www.coursera.org/account/accomplishments/verify/NHD8MUKMBC2L",
    image: "https://www.vectorlogo.zone/logos/coursera/coursera-icon.svg",
    issuedBy: "Coursera",
  ),
  Certificate(
    title: "AWS Certified Cloud Practitioner",
    description:
        "The AWS Certified Cloud Practitioner offers a foundational understanding of AWS Cloud concepts, "
        "services, and terminology. This is a good starting point for individuals in non-technical roles with no prior IT or cloud experience "
        "or for those with on-premises IT experience looking for basic AWS Cloud fluency.",
    verifyLink:
        "https://www.credly.com/badges/835d3cfb-bc04-4308-971a-4b52183d821d?source=linked_in_profile",
    image:
        "https://images.credly.com/size/340x340/images/00634f82-b07f-4bbd-a6bb-53de397fc3a6/image.png",
    issuedBy: "Amazon Web Services Training and Certification",
  ),
  Certificate(
    title: "Programming for Everybody (Getting Started with Python)",
    description:
        "Python has become one of the most popular programming languages in the world in recent years."
        " It's used in everything from machine learning to building websites and software testing."
        " It can be used by developers and non-developers alike.",
    verifyLink:
        "https://www.coursera.org/account/accomplishments/certificate/6ZR7Z5B4AV42",
    image: "https://www.vectorlogo.zone/logos/coursera/coursera-icon.svg",
    issuedBy: "Coursera",
  ),
  Certificate(
    title: "Python Data Structures",
    description:
        "Python has implicit support for Data Structures which enable you to store and access data. "
        "These structures are called List, Dictionary, Tuple and Set. "
        "Python allows its users to create their own Data Structures enabling them to have full control over their functionality.",
    verifyLink:
        "https://www.coursera.org/account/accomplishments/certificate/FFL3NZ55HF5S",
    image: "https://www.vectorlogo.zone/logos/coursera/coursera-icon.svg",
    issuedBy: "Coursera",
  ),
  Certificate(
    title: "Interactivity with JavaScript",
    description:
        "JavaScript allows us to modify just about every aspect of the page: content, "
        "styling, and its response to user interaction. However, JavaScript can also block DOM construction "
        "and delay when the page is rendered. To deliver optimal performance, make your JavaScript async "
        "and eliminate any unnecessary JavaScript from the critical rendering path.",
    verifyLink:
        "https://www.coursera.org/account/accomplishments/certificate/67WLHNUAECW5",
    image: "https://www.vectorlogo.zone/logos/coursera/coursera-icon.svg",
    issuedBy: "Coursera",
  ),
];
