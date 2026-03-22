class Experience {
  final String? companyName,
      designation,
      shift,
      timeLine,
      location,
      companyLogo,
      url;

  Experience(
      {this.companyName,
      this.designation,
      this.shift,
      this.timeLine,
      this.location,
      this.companyLogo,
      this.url});
}

final List<Experience> experienceList = [
  Experience(
    companyName: "Accenture",
    designation: "Custom Software Eng Sr Analyst",
    shift: "Full-time",
    timeLine: "Nov 2025 - Present",
    location: "Bengaluru, Karnataka, India",
    companyLogo:
    "assets/images/accenture.png",
    url: "https://www.accenture.com/",
  ),
  Experience(
    companyName: "Michael Page",
    designation: "Flutter Developer",
    shift: "Consultant",
    timeLine: "Feb 2025 - July 2025",
    location: "Bengaluru, Karnataka, India",
    companyLogo:
    "assets/images/michaelpage.png",
    url: "https://www.michaelpage.co.in/",
  ),
  Experience(
    companyName: "Dimiour",
    designation: "Software Engineer",
    shift: "Full-time",
    timeLine: "Nov 2023 - Feb 2025",
    location: "Bengaluru, Karnataka, India",
    companyLogo:
        "assets/images/dimiour_vdart.png",
    url: "https://www.dimiour.io/",
  ),
  Experience(
    companyName: "Dimiour",
    designation: "Software Trainee",
    shift: "Full-time",
    timeLine: "Jun 2021 - Nov 2023 | 2 yr 6 mon",
    location: "Bengaluru, Karnataka, India",
    companyLogo:
        "assets/images/dimiour_vdart.png",
    url: "https://www.dimiour.io/",
  ),
  Experience(
    companyName: "Dimiour",
    designation: "Software Intern",
    shift: "Internship",
    timeLine: "Mar 2021 - Jun 2021 | 3 mon",
    location: "Bengaluru, Karnataka, India",
    companyLogo:
        "assets/images/dimiour_vdart.png",
    url: "https://www.dimiour.io/",
  ),
];
