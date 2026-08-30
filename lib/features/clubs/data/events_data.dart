import '../models/event_model.dart';

final List<EventModel> collegeEvents = [
  EventModel(
    id: 'techniverse-2k25',
    title: 'Techniverse 2K25',
    organization: 'RGUKT Srikakulam',
    description:
        'Techniverse is a national-level techno-management festival organized by RGUKT Srikakulam. The flagship Techniverse 2K25 focused on AI-Powered Innovation and featured a prize pool exceeding ₹1.5 Lakhs. The three-day festival brought together engineering students through technical competitions, workshops, keynote lectures and cultural activities.',
    date: '3-Day Festival',
    time: 'Upcoming',
    venue: 'RGUKT Srikakulam',
    category: 'Technical & Innovation',
    highlights: [
      'Hackathons',
      'Robotics Competitions',
      'Paper & Project Presentations',
      'Tech Quizzes',
      'E-Sports & Gaming',
      'Treasure Hunt',
    ],
    technicalAreas: [
      'AI & Machine Learning',
      'VLSI',
      'Microprocessors',
      'Power Electronics',
      'Advanced Sensors',
      'Mechanical Engineering',
      'Hydrology',
      'BioSciences',
    ],
    additionalSectionTitle: 'EEE Track',
    additionalSectionDescription:
        'The EEE track included workshops covering solar energy grids, domestic wiring, coil winding and machine troubleshooting. It also featured Electrikking, Electropyramid, Circuit Masters, Research Ignite and MATLAB Simulations.',
    culturalSectionTitle: 'Cultural Extravaganza',
    culturalSectionDescription:
        'Lumina Nights featured performances, dance, musical battles and student showcase activities.',
  ),

  EventModel(
    id: 'qff-rgukt-sklm-2026',
    title: 'QFF RGUKT SKLM',
    organization: 'RGUKT Srikakulam',
    description:
        'Qiskit Fall Fest is a global quantum computing event hosted at RGUKT Srikakulam in collaboration with IBM Quantum. The PLUS Qiskit Fall Fest 2026 focuses on a decade of quantum computing on the cloud and gives students practical exposure to quantum programming, algorithms and real quantum systems.',
    date: '5-Day Festival',
    time: 'Upcoming',
    venue: 'RGUKT Srikakulam',
    category: 'Quantum Computing',
    highlights: [
      'Quantum Hackathons',
      'IBM Hardware Challenges',
      'Qiskit Code-Alongs',
      'Algorithm Pitches',
    ],
    technicalAreas: [
      'Quantum Mechanics & Qubits',
      'Quantum Gates',
      'Circuit Design',
      'Quantum Teleportation',
      'Qiskit SDK',
      'Quantum Error Mitigation',
      'Noise Simulation',
      'Quantum Machine Learning',
      'Cryptography',
      'Quantum Finance',
    ],
    additionalSectionTitle: 'Technical Toolkit',
    additionalSectionDescription:
        'Participants work primarily with Python, Jupyter Notebooks and the Qiskit software framework. The event also provides opportunities to execute quantum jobs using IBM Quantum systems and cloud simulators.',
    culturalSectionTitle: 'Learning & Innovation',
    culturalSectionDescription:
        'The event provides students with practical exposure to emerging quantum technologies and connects classical programming concepts with quantum computing.',
  ),
];