class Certificate {
  final String? title, description, issuedBy, verifyLink, image;

  Certificate({this.title, this.description, this.issuedBy, this.verifyLink, this.image});
}

List<Certificate> certificateList = [
  Certificate(
    title: "AWS Certified Cloud Practitioner",
    description: "The AWS Certified Cloud Practitioner offers a foundational understanding of AWS Cloud concepts, "
        "services, and terminology. This is a good starting point for individuals in non-technical roles with no prior IT or cloud experience "
        "or for those with on-premises IT experience looking for basic AWS Cloud fluency.",
    verifyLink: "https://www.credly.com/badges/835d3cfb-bc04-4308-971a-4b52183d821d?source=linked_in_profile",
    image: "https://images.credly.com/size/340x340/images/00634f82-b07f-4bbd-a6bb-53de397fc3a6/image.png",
    issuedBy: "Amazon Web Services Training and Certification",
  ),
  Certificate(
    title: "AWS Partner: Accreditation (Technical)",
    description: "Earners of this badge are AWS Partners who have developed fundamental, technical knowledge of AWS cloud computing, "
        "global infrastructure, services, solutions, migration and security.",
    verifyLink: "https://www.credly.com/badges/d2f26a63-b149-40c6-a142-c001431adc71/public_url",
    image: "https://images.credly.com/size/340x340/images/81f903ed-c3a1-4f4b-afcd-e03331a5b12c/image.png",
    issuedBy: "Amazon Web Services Training and Certification",

  ),
  Certificate(
    title: "AWS Partner: Cloud Economics Accreditation",
    description:"Earners of this badge are AWS Partners who have demonstrated knowledge of cost savings and data center economics in relation to cloud computing.",
    verifyLink: "https://www.credly.com/badges/5ba2bc28-b05c-44ee-ab65-1e3eedd0a707?source=linked_in_profile",
    image: "https://images.credly.com/size/340x340/images/ee35f7c5-696e-47ca-895c-960dfba108b3/image.png",
    issuedBy: "Amazon Web Services Training and Certification",
  ),
  Certificate(
    title: "Programming for Everybody (Getting Started with Python)",
    description:"Python has become one of the most popular programming languages in the world in recent years."
        " It's used in everything from machine learning to building websites and software testing."
        " It can be used by developers and non-developers alike.",
    verifyLink: "https://www.coursera.org/account/accomplishments/certificate/6ZR7Z5B4AV42",
    image: "https://seekvectorlogo.com/wp-content/uploads/2022/02/coursera-vector-logo-2022.png",
    issuedBy: "Coursera",
  ),
  Certificate(
    title: "Python Data Structures",
    description: "Python has implicit support for Data Structures which enable you to store and access data. "
        "These structures are called List, Dictionary, Tuple and Set. "
        "Python allows its users to create their own Data Structures enabling them to have full control over their functionality.",
      verifyLink: "https://www.coursera.org/account/accomplishments/certificate/FFL3NZ55HF5S",
      image: "https://seekvectorlogo.com/wp-content/uploads/2022/02/coursera-vector-logo-2022.png",
      issuedBy: "Coursera",
    ),
  Certificate(
    title: "Interactivity with JavaScript",
    description: "JavaScript allows us to modify just about every aspect of the page: content, "
        "styling, and its response to user interaction. However, JavaScript can also block DOM construction "
        "and delay when the page is rendered. To deliver optimal performance, make your JavaScript async "
        "and eliminate any unnecessary JavaScript from the critical rendering path.",
      verifyLink: "https://www.coursera.org/account/accomplishments/certificate/67WLHNUAECW5",
      image: "https://seekvectorlogo.com/wp-content/uploads/2022/02/coursera-vector-logo-2022.png",
      issuedBy: "Coursera",
    ),
];
