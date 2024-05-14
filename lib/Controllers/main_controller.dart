import 'package:abdulrehman/Constants/dimensions.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Models/project.dart';
import '../Models/service.dart';
import '../Models/skill.dart';
import '../Widgets/main-sections/projects_section.dart';
import '../Widgets/main-sections/services_section.dart';
import '../Widgets/main-sections/skills_section.dart';
import '/Constants/app_assets.dart';
import '/Models/navbar_item.dart';
import '/Widgets/main-sections/about_section.dart';
import '/Widgets/main-sections/home_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Models/social_link.dart';

class MainController extends GetxController{

  ScrollController scrollController = ScrollController();
  int _selectedSection = 0;
  final String myName = "Abdul Rehman";
  final List<SocialLink> socialLinks = [
    SocialLink(icon: AppAssets.linkedinIcon, url: "https://www.linkedin.com/in/mr-abdulrehman/", tooltip: "LinkedIn"),
    SocialLink(icon: AppAssets.githubIcon, url: "https://github.com/abdulrehman192/", tooltip: "Github"),
    SocialLink(icon: AppAssets.stackoverflowIcon, url: "https://stackoverflow.com/users/15030096/abdul-rehman", tooltip: "Stack Over Flow"),
    SocialLink(icon: AppAssets.mediumIcon, url: "https://medium.com/@mr.abdulrehman.ar", tooltip: "Medium"),
    SocialLink(icon: AppAssets.youtubeIcon, url: "https://www.youtube.com/@professionaltech1543", tooltip: "Youtube"),
    SocialLink(icon: AppAssets.xIcon, url: "https://x.com/mr_AbdulRehman1", tooltip: "X / Twitter"),
  ];
  final List<String> roles = [
    'Flutter Developer',
    'Node.js Api Developer',
    'Problem Solver',
    'Quick Learner',
    'Team Leader',
    'I can build android apps',
    'I can build iOS apps',
    'I can build web apps',
    'I can build desktop apps',
  ];
  final List<NavbarItem> sectionsList = [
    NavbarItem(title: 'Home', icon: AppAssets.homeIcon),
    NavbarItem(title: 'About', icon: AppAssets.aboutIcon),
    NavbarItem(title: 'Skills', icon: AppAssets.skillsIcon),
    NavbarItem(title: 'Services', icon: AppAssets.serviceIcon),
    NavbarItem(title: 'Projects', icon: AppAssets.projectIcon),
    NavbarItem(title: 'Experience', icon: AppAssets.experienceIcon),
    NavbarItem(title: 'Education', icon: AppAssets.educationIcon),
    NavbarItem(title: 'Contact', icon: AppAssets.contactIcon),
  ];
  final List<Widget> sections = const [
    HomeSection(),
    AboutSection(),
    SkillsSection(),
    ServicesSection(),
    ProjectsSection(),

  ];
  
  final List<Skill> skills = [
    Skill(title: "Flutter/Dart", value: 9.0),
    Skill(title: "Firebase", value: 8.0),
    Skill(title: "Supabase", value: 7.0),
    Skill(title: "SQLite", value: 7.0),
    Skill(title: "Rest APIs Integration", value: 9.0),
    Skill(title: "Rest APIs Development", value: 8.0),
    Skill(title: "State Management", value: 9.0),
    Skill(title: "Provider", value: 9.0),
    Skill(title: "Getx", value: 9.0),
    Skill(title: "Google APIs", value: 7.0),
    Skill(title: "MVC", value: 7.0),
    Skill(title: "MVP", value: 8.0),
    Skill(title: "MVVM", value: 9.0),
    Skill(title: "Git Version Control", value: 7.0),
    Skill(title: "Flutter Android", value: 9.0),
    Skill(title: "Flutter iOS", value: 8.0),
    Skill(title: "Flutter Web", value: 9.0),
    Skill(title: "Flutter Windows", value: 7.0),
  ];


  final List<Service> services = [
    //add max 8 items for description
    Service(icon: AppAssets.mobileAppDevelopmentIcon, title: "Mobile App Development", description: ['Flutter app development', 'Clean code with smooth states', 'Firebase integration', 'API integration', 'Responsive design', 'Deploy on store', 'app migration and cloning', 'maintenance and support'], startingFrom: "250"),
    Service(icon: AppAssets.apiIcon, title: "Rest API Development (Node.js)", description: ['Rest API Development', 'Clean code with MVC pattern', 'email and other services', 'MySql Database', 'Mongo Database', 'Deploy on server', 'can handle VPS server with dockers', 'maintenance and support'], startingFrom: "200"),
    Service(icon: AppAssets.webIcon, title: "Web Development (Flutter)", description: ['Single & multi page website', 'Fully responsive design', 'easily deployable on any hosting server', 'backend integration', 'Deploy on server', 'can handle VPS server with dockers', 'maintenance and support'], startingFrom: "2%0"),
    Service(icon: AppAssets.deploymentIcon, title: "App Deployment", description: ['Deploy flutter android on Play Store', 'Deploy flutter iOS on App Store', 'Deploy flutter web on hosting server', 'Flutter windows app installer', 'maintenance and support'], startingFrom: "50"),
    Service(icon: AppAssets.assistanceIcon, title: "Virtual Assistance", description: ['Flutter App Development', 'Cross-Platform Development', 'Technical Support', 'Code Review and Quality Assurance', 'Project Management', 'Training and Mentoring', 'Documentation and Reporting'], startingFrom: "150"),
  ];

  final List<Project> projects = [
    Project(
        title: "Walking Challenge App",
        shortDescription: "Walking Challenge app to boost your health and fitness! Compete in exciting events and challenges, earn coins, and unlock rewards as you step towards a healthier lifestyle.",
        longDescription: '''
        <h1>50K + Downloads on Play Store</h1>
        <h2>Introduction:</h2>
        <p>The Walking Challenge App UI Design project focuses on creating a visually appealing and user-friendly interface for a mobile application aimed at promoting physical activity and improving users' health through walking challenges and events. Leveraging Flutter for the front-end development and GetX for state management, this project aims to provide a seamless user experience while encouraging users to stay active and achieve their fitness goals.</p>
        
        <h2>Key Features:</h2>
        <ol>
          <li><strong>Modern and Intuitive Design:</strong> Utilizing Flutter's flexible UI toolkit, the app features a modern and intuitive design that prioritizes ease of use and accessibility for users of all fitness levels.</li>
          
          <li><strong>Walking Challenges and Events:</strong> Users can participate in various walking challenges and events designed to motivate them to increase their daily step count and engage in regular physical activity.</li>
          
          <li><strong>Gamification and Rewards:</strong> Incorporating gamification elements, users earn coins and unlock exciting gifts and rewards upon reaching milestones and completing challenges, enhancing user engagement and motivation.</li>
          
          <li><strong>GetX State Management:</strong> The app utilizes the GetX state management library for efficient and reactive state management, ensuring smooth performance and responsiveness across different app screens and components.</li>
          
          <li><strong>Personalized Profiles:</strong> Users can create personalized profiles, track their progress, view past achievements, and connect with friends and fellow participants to share their fitness journey and achievements.</li>
        </ol>
        
        <h2>Future Enhancements:</h2>
        <ol>
          <li><strong>Integration with Fitness Trackers:</strong> Integration with popular fitness trackers and wearable devices to automatically track users' steps and provide real-time progress updates.</li>
          
          <li><strong>Social Sharing Features:</strong> Implementing social sharing features to allow users to share their achievements, challenge progress, and encourage others to join the walking challenge community.</li>
          
          <li><strong>Advanced Analytics:</strong> Incorporating advanced analytics to provide users with insights into their walking habits, activity trends, and health improvements over time, empowering them to make informed decisions about their fitness goals.</li>
        </ol>
        
        <h2>Conclusion:</h2>
        <p>By focusing on creating an engaging and motivating user interface, coupled with seamless state management using GetX, the Walking Challenge App UI Design project aims to inspire users to lead healthier and more active lifestyles through fun and rewarding walking challenges and events.</p>''',
        coverImage: AppAssets.coverImageProject1,
        images: [AppAssets.project1Image1, AppAssets.project1Image2, AppAssets.project1Image3, AppAssets.project1Image4, AppAssets.project1Image5, AppAssets.project1Image6, AppAssets.project1Image7, AppAssets.project1Image8,],
        url: "https://play.google.com/store/apps/details?id=com.walking.android"
    ),
    Project(
        title: "One Facilities",
        shortDescription: "One Facilities is a service and maintenance provider app facilitating hassle-free bookings with preferred professionals. It integrates Google Fitness API for step counting, rewarding users for physical activity.",
        longDescription: '''
        <h2>Introduction:</h2>
        <p>One Facilities is a comprehensive service and maintenance provider app designed to streamline the booking process for users seeking professional services. With a user-friendly interface, users can easily book services with their favorite professionals for selected hours, ensuring convenience and reliability. The app also incentivizes physical activity by rewarding users for their walking efforts, integrated seamlessly with Google Fitness API for accurate step counting.</p>
        
        <h2>Key Features:</h2>
        <ul>
          <li><strong>Service Booking:</strong> Users can book services with their preferred professionals for selected hours, choosing from a variety of service categories.</li>
          
          <li><strong>Professional Profiles:</strong> Detailed profiles of professionals, including ratings, reviews, and availability, empower users to make informed decisions when booking services.</li>
          
          <li><strong>Rewards System:</strong> Users earn rewards for their physical activity, with step counts tracked using Google Fitness API, encouraging a healthy and active lifestyle.</li>
          
          <li><strong>REST API Integration:</strong> Seamless integration with REST APIs developed using Node.js ensures efficient communication between the app and the backend server, enabling real-time updates and data synchronization.</li>
          
          <li><strong>Responsive Design:</strong> The app is fully responsive, adapting seamlessly to different screen sizes and orientations, providing a consistent user experience across devices.</li>
          
          <li><strong>Admin Panel:</strong> An accompanying admin panel app allows administrators to manage categories, services, users, professionals, and supervisors. Admins can also manage bookings, allocate bookings to supervisors, assign tasks to professionals, and view upcoming bookings in a calendar. Notifications are sent to admin upon user bookings, supervisors upon assignment, and users/admins upon service completion.</li>
          
          <li><strong>Live on Play Store:</strong> One Facilities is available for download on the Google Play Store, making it accessible to a wide audience of users.</li>
        </ul>
        
        <h2>Technologies Used:</h2>
        <ul>
          <li>Flutter (for front-end development)</li>
          <li>GetX (for state management)</li>
          <li>Node.js (for backend development)</li>
          <li>Google Fitness API (for step count tracking)</li>
        </ul>
        
        <h2>Conclusion:</h2>
        <p>With its user-centric design, seamless integrations, and focus on promoting both convenience and wellness, One Facilities stands as a versatile solution for individuals seeking reliable service and maintenance providers. By combining advanced technologies and a commitment to user satisfaction, the app sets a new standard in the service industry, offering a holistic approach to booking services and promoting healthy lifestyle choices.</p>

        ''',
        coverImage: AppAssets.coverImageProject2,
        images: [AppAssets.project2Image1, AppAssets.project2Image2, AppAssets.project2Image3, AppAssets.project2Image4, AppAssets.project2Image5, AppAssets.project2Image6, AppAssets.project2Image7, AppAssets.project2Image8, AppAssets.project2Image9, AppAssets.project2Image10, AppAssets.project2Image11, AppAssets.project2Image12, AppAssets.project2Image13, AppAssets.project2Image14, AppAssets.project2Image15, AppAssets.project2Image16, AppAssets.project2Image17, AppAssets.project2Image18, AppAssets.project2Image19, AppAssets.project2Image20, AppAssets.project2Image21,],
        url: "https://play.google.com/store/apps/details?id=com.the1bm.the_one_facilities_app"
    ),
    Project(
        title: "Service Booking Website",
        shortDescription: "The Service Booking Website, developed with Flutter for web, facilitates seamless online service appointments. Employing Provider for MVVM architecture and Firebase backend ensures reliability and scalability.",
        longDescription: '''
        <h2>Introduction:</h2>
        <p>The Service Booking Website is a user-friendly platform designed for seamless booking of various services. Built using Flutter for web, the website follows the MVVM architecture pattern with Provider for state management, ensuring robustness and scalability. Firebase is integrated as the backend, providing a secure and reliable data storage and authentication solution.</p>
        
        <h2>Key Features:</h2>
        <ul>
          <li><strong>Service Booking:</strong> Users can easily browse available services and book appointments online with just a few clicks, enhancing convenience and accessibility.</li>
          
          <li><strong>MVVM Architecture:</strong> The website is structured using the Model-View-ViewModel (MVVM) architectural pattern, promoting code organization, maintainability, and separation of concerns.</li>
          
          <li><strong>Provider State Management:</strong> Provider is utilized for state management, offering a simple and efficient way to manage and propagate application state throughout the website.</li>
          
          <li><strong>Firebase Integration:</strong> Firebase serves as the backend for the website, handling data storage, real-time updates, and user authentication, ensuring data security and reliability.</li>
          
          <li><strong>User-Friendly Interface:</strong> The website features an intuitive and responsive design, providing users with a seamless and enjoyable booking experience across devices.</li>
        </ul>
        
        <h2>Technologies Used:</h2>
        <ul>
          <li>Flutter for Web (front-end)</li>
          <li>Provider (for state management)</li>
          <li>Firebase (for backend services)</li>
        </ul>
        
        <h2>Conclusion:</h2>
        <p>The Service Booking Website offers a modern and efficient solution for users to book services online. With its user-friendly interface, robust architecture, and seamless Firebase integration, the website provides a reliable and convenient platform for service providers and customers alike.</p>

        ''',
        coverImage: AppAssets.project4Image1,
        images: [AppAssets.project4Image1, AppAssets.project4Image2, AppAssets.project4Image3, AppAssets.project4Image4, AppAssets.project4Image5, AppAssets.project4Image6, AppAssets.project4Image7, AppAssets.project4Image8,],
        url: "https://the-one-facilities.vercel.app/#/Home",
        isWeb: true
    ),
    Project(
        title: "IMS - HR Portal",
        shortDescription: "The Information Management System with HR Portal is a comprehensive solution for managing company data and HR processes. Built with Flutter for web, it offers role-based access control and responsive design for efficient operations.",
        longDescription: '''
        <h2>Introduction:</h2>
        <p>The Information Management System with HR Portal is a comprehensive solution for managing all aspects of company information and HR processes. From company details and office locations to employee data and payroll management, the portal centralizes information and streamlines operations. With role-based access control, users can only access data relevant to their roles and permissions, ensuring data security and privacy.</p>
        <strong>Email : mr.abdulrehman.ar@gmail.com</strong></br>
        <strong>Pass : 12345678</strong>
        <h2>Key Features:</h2>
        <ul>
          <li><strong>Company Information:</strong> Manage company details, office locations, and department information within the portal.</li>
          
          <li><strong>Employee Management:</strong> Store and manage employee data, including general information, identity details, salary information, job history, payroll timelines, attendance records, emergency contacts, bank information, dependents, documents, leave requests, and benefits.</li>
          
          <li><strong>HR Portal:</strong> Provide a dedicated HR portal with features such as announcements, shared files, digital assets, physical assets, user management, user roles with permissions management, job titles, currencies, and more.</li>
          
          <li><strong>Role-Based Access Control:</strong> Implement role-based access control to restrict user access to data based on their roles and permissions, ensuring data security and compliance.</li>
          
          <li><strong>Responsive Web Design:</strong> The portal is built using Flutter for web, ensuring full responsiveness across devices and screen sizes. Bootstrap is used for responsive design, and a dark theme mode is available for improved user experience.</li>
          
          <li><strong>Backend APIs:</strong> Develop backend APIs using Node.js to handle data storage, retrieval, and manipulation, providing seamless integration with the portal frontend.</li>
        </ul>
        
        <h2>Technologies Used:</h2>
        <ul>
          <li>Flutter for Web (front-end)</li>
          <li>GetX (for state management)</li>
          <li>Node.js (for backend development)</li>
          <li>Bootstrap (for responsive design)</li>
        </ul>
        
        <h2>Conclusion:</h2>
        <p>The Information Management System with HR Portal offers a comprehensive solution for companies to streamline their information management and HR processes. By centralizing data, providing role-based access control, and ensuring full responsiveness and security, the portal empowers organizations to efficiently manage their workforce and operations, enhancing productivity and compliance.</p>
          
        ''',
        coverImage: AppAssets.project3Image3,
        images: [AppAssets.project3Image1, AppAssets.project3Image2, AppAssets.project3Image3, AppAssets.project3Image4, AppAssets.project3Image5, AppAssets.project3Image6, AppAssets.project3Image7, AppAssets.project3Image8, AppAssets.project3Image9, AppAssets.project3Image10, AppAssets.project3Image11, AppAssets.project3Image12, AppAssets.project3Image13, AppAssets.project3Image14, AppAssets.project3Image15, AppAssets.project3Image16, AppAssets.project3Image17, AppAssets.project3Image18, AppAssets.project3Image19, AppAssets.project3Image20, AppAssets.project3Image21, AppAssets.project3Image22, AppAssets.project3Image23, AppAssets.project3Image24, AppAssets.project3Image25, AppAssets.project3Image26, AppAssets.project3Image27, AppAssets.project3Image28, AppAssets.project3Image29, AppAssets.project3Image30, AppAssets.project3Image31, AppAssets.project3Image32, AppAssets.project3Image33],
        url: "https://hr-portal-tau.vercel.app/",
        isWeb: true
    ),

  ];

  final String aboutPara = "With over 3 years of experience in software development, specializing in Flutter, Node.js, and Python, I am dedicated to crafting innovative solutions that empower businesses and enhance user experiences. My passion lies in leveraging cutting-edge technologies to create seamless mobile applications that meet the unique needs of clients across various industries. I thrive in collaborative environments where I can contribute my expertise in full-stack development to drive projects from conception to execution. Committed to staying at the forefront of emerging technologies, I continuously seek opportunities to expand my skills and knowledge, ensuring that my solutions are always at the forefront of industry standards. As a detail-oriented professional, I approach each project with precision and creativity, striving to exceed expectations and deliver exceptional results. With a proven track record of delivering high-quality software solutions, I am poised to tackle the challenges of tomorrow's digital landscape with confidence and enthusiasm. Let's connect and explore how I can help bring your vision to life.";

  //getters
  int get selectedSection => _selectedSection;


  //setters
  set selectedSection(int val){
    _selectedSection = val;
    _scrollToWidget(val);
    update();
  }


  findTheSelectedItemIndex(String item){
    for(int i = 0; i < sectionsList.length; i++){
      if(sectionsList[i].title == item){
        _selectedSection = i;
      }
    }
    _scrollToWidget(_selectedSection);
    update();
  }

  void _scrollToWidget(int index) {
    double position = 350;
    if(index == 2){
      position = 600;
    }
    else if(index == 3){
      position = 650;
    }
    else if(index == 4){
      position = 750;
    }
    if(Get.width <= mobileWidth){
      position += 700;
    }
    scrollController.animateTo(
      index * position, // Adjust the value as needed (depends on your item height)
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  hireMe()async{
    await launchUrl(Uri.parse("https://www.upwork.com/freelancers/~0124249d5c292635ee?viewMode=1"), mode: LaunchMode.externalApplication);
  }

  downloadCV()async{
    await launchUrl(Uri.parse("https://drive.google.com/file/d/1Xx61KQTcrByxeQE3X8JGtyeiIoMqqLrJ/view?usp=sharing"), mode: LaunchMode.externalApplication);
  }
}