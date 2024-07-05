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
    title: "AWS Partner: Accreditation (Technical)",
    description:
        "Earners of this badge are AWS Partners who have developed fundamental, technical knowledge of AWS cloud computing, "
        "global infrastructure, services, solutions, migration and security.",
    verifyLink:
        "https://www.credly.com/badges/d2f26a63-b149-40c6-a142-c001431adc71/public_url",
    image:
        "https://images.credly.com/images/a253b994-caa6-4dd1-bf0e-434dd012b1f6/image.png",
    issuedBy: "Amazon Web Services Training and Certification",
  ),
  Certificate(
    title: "AWS Partner: Cloud Economics Accreditation",
    description:
        "Earners of this badge are AWS Partners who have demonstrated knowledge of cost savings and data center economics in relation to cloud computing.",
    verifyLink:
        "https://www.credly.com/badges/5ba2bc28-b05c-44ee-ab65-1e3eedd0a707?source=linked_in_profile",
    image:
        "https://images.credly.com/images/9dc6345e-db80-44de-bb44-0c78775e53fa/image.png",
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
