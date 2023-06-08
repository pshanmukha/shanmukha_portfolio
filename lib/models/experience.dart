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
    companyName: "Dimiour",
    designation: "Flutter Developer",
    shift: "Full-time",
    timeLine: "Jun 2021 - Present | 1 yr 7 mos",
    location: "Bengaluru, Karnataka, India",
    companyLogo:
        "https://media-exp1.licdn.com/dms/image/C4D0BAQHQV5iPEdYhEA/company-logo_200_200/0/1657034303881?e=1678924800&v=beta&t=OdWFu8_Bncjw-mqIT8CmeBHtiZzxmDk0cVNX-vKB2N4",
    url: "https://www.dimiour.io/",
  ),
  Experience(
    companyName: "Dimiour",
    designation: "Software Intern",
    shift: "Internship",
    timeLine: "Mar 2021 - Jun 2021 | 3 mos",
    location: "Bengaluru, Karnataka, India",
    companyLogo:
        "https://media-exp1.licdn.com/dms/image/C4D0BAQHQV5iPEdYhEA/company-logo_200_200/0/1657034303881?e=1678924800&v=beta&t=OdWFu8_Bncjw-mqIT8CmeBHtiZzxmDk0cVNX-vKB2N4",
    url: "https://www.dimiour.io/",
  ),
];
