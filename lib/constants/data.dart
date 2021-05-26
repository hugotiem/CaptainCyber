class Data {
  static final List<Map<String, Object>> _data = [
    {
      "title": "Master your passwords",
      "image": "assets/illustration_1.jpeg",
      "type": "Training",
      "tags": "Identification/Digital identity",
      'points': 35,
      "duration": "15min",
      "modulesCompleted": 2 / 3,
    },
    {
      "title": "Protect personal data",
      "image": "assets/illustration_2.jpeg",
      "type": "Training",
      "tags": "Protection/Gdpr",
      'points': 35,
      "duration": "15min",
      "modulesCompleted": 1 / 4,
    },
    {
      "title": "Harden your social profiles",
      "image": "assets/illustration_1.jpeg",
      "type": "Checkup",
      "tags": "Social network / Privacy",
      'points': 10,
      "duration": "5min",
      "modulesCompleted": 0 / 3,
    },
    {
      "title": "Do your part against ransomwares",
      "image": "assets/illustration_2.jpeg",
      "type": "Checkup",
      "tags": "Social engineering / Phishing / Vishing",
      'points': 10,
      "duration": "5min",
      "modulesCompleted": 4 / 4,
    },
    {
      "title": "Software updates and installs at home",
      "image": "assets/illustration_1.jpeg",
      "type": "Quiz",
      "tags": "Update / Software",
      'points': 15,
      "duration": "10min",
      "modulesCompleted": 2 / 3,
    },
    {
      "title": "Protect your browser at home",
      "image": "assets/illustration_2.jpeg",
      "type": "Quiz",
      "tags": "Protection / Update",
      'points': 15,
      "duration": "10min",
      "modulesCompleted": 1 / 4,
    },
  ];

  static get data => _data;
}
