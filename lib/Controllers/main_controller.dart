import 'package:abdulrehman/Constants/dimensions.dart';
import 'package:abdulrehman/Widgets/main-sections/education_section.dart';
import 'package:abdulrehman/Widgets/main-sections/experience_section.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Models/education.dart';
import '../Models/experience.dart';
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
  bool _showAllProjects = false;
  final List<Widget> sections = const [
    HomeSection(),
    AboutSection(),
    SkillsSection(),
    ServicesSection(),
    ProjectsSection(),
    ExperienceSection(),
    EducationSection(),
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
    Project(
        title: "Malaysian Products–Luxury Shop",
        shortDescription: "Developed a comprehensive E-commerce application using Flutter, featuring user authentication, product catalog, detailed product pages, shopping cart, and order tracking. Integrated backend APIs for efficient data management, ensuring a seamless and secure shopping experience.",
        longDescription: '''
        <h2>Introduction:</h2>
        <p>I developed a comprehensive E-commerce application using Flutter, designed to provide an intuitive and seamless shopping experience. This app integrates a wide range of features to enhance user engagement and ensure smooth and secure transactions. The backend APIs were implemented to manage the application data efficiently.</p>
        
        <h2>Key Features</h2>
        <ul>
          <li><strong>User Authentication</strong>: The app supports multiple authentication methods, including Email, Facebook, Google, and Apple, ensuring a secure and convenient login experience for users.</li>
          <li><strong>Product Catalog</strong>: Users can browse a wide range of products categorized and filtered based on various attributes to help them find exactly what they are looking for.</li>
          <li><strong>Product Details</strong>: Each product page includes high-quality images, detailed descriptions, and user reviews to provide comprehensive information and assist in decision-making.</li>
          <li><strong>Shopping Cart and Checkout</strong>: A streamlined shopping cart and checkout process, including multiple payment gateway integrations, ensures a smooth purchasing experience.</li>
          <li><strong>Order Tracking</strong>: Users can track their orders with an interactive timeline, providing real-time updates on the status of their deliveries.</li>
          <li><strong>Push Notifications</strong>: The app sends push notifications for promotions, order updates, and other relevant information to keep users engaged and informed.</li>
          <li><strong>User Profile Management</strong>: Users can manage their profiles, update personal information, and view their order history within the app.</li>
          <li><strong>Advanced Search</strong>: The app features a powerful search functionality with autocomplete suggestions to help users find products quickly and easily.</li>
          <li><strong>Social Sharing</strong>: Users can share their favorite products on various social media platforms, enhancing the app's reach and engagement.</li>
          <li><strong>Wishlist Management</strong>: Users can add products to their wishlist for future reference and easy access.</li>
          <li><strong>Rating and Review System</strong>: A comprehensive rating and review system allows users to share their feedback and read others' experiences, fostering a trustworthy shopping environment.</li>
          <li><strong>Multi-Language Support</strong>: The app supports multiple languages, catering to a diverse user base and ensuring accessibility for users from different regions.</li>
          <li><strong>Responsive Design</strong>: The app's design is optimized for both mobile and tablet devices, providing a consistent and user-friendly experience across different screen sizes.</li>
          <li><strong>Google Maps Integration</strong>: The app integrates with Google Maps to provide a store locator feature, helping users find physical store locations easily.</li>
        </ul>
      
        <h2>Conclusion</h2>
        <p>This E-commerce application showcases advanced Flutter development skills, integrating a variety of functionalities to deliver a high-performance, user-friendly, and secure shopping experience. The backend APIs efficiently manage the application data, demonstrating a deep understanding of modern app development practices and backend integration.</p>
        ''',
        coverImage: AppAssets.coverImageProject5,
        images: [AppAssets.project5Image1, AppAssets.project5Image2, AppAssets.project5Image3, AppAssets.project5Image4, AppAssets.project5Image5, AppAssets.project5Image6, AppAssets.project5Image7, AppAssets.project5Image8, AppAssets.project5Image9, AppAssets.project5Image10, AppAssets.project5Image11, AppAssets.project5Image12, AppAssets.project5Image13, AppAssets.project5Image14, AppAssets.project5Image15, AppAssets.project5Image16, AppAssets.project5Image17],
        isWeb: false,
        url: "https://play.google.com/store/apps/details?id=com.malaysia.MalaysianProduct"
    ),
    Project(
        title: "IELTS Preparation App",
        shortDescription: "Developed an IELTS preparation app with Flutter and GetX, featuring quizzes, speaking and writing practice, reading materials, listening lessons, and a comprehensive vocabulary section. It also includes band score definitions, a calculator, and essential IELTS tips.",
        longDescription: '''
        <h1>1K + Downloads on Play Store</h1>
        <h2>Introduction</h2>
          <p>I developed a comprehensive IELTS preparation application using Flutter and GetX for state management. This app is designed to provide a complete solution for users aiming to improve their English language skills and prepare effectively for the IELTS exam. Below are the detailed features and functionalities included in the app.</p>
        
          <div class="section">
            <h2>Quiz Section</h2>
            <p>The app includes IELTS quizzes with multiple choice questions categorized into three levels: Beginners, Intermediate, and Advanced. At the end of each quiz, users can review the actual answers, enabling them to learn from their mistakes and improve their knowledge.</p>
          </div>
        
          <div class="section">
            <h2>Speaking Improvement Feature</h2>
            <p>This feature helps users enhance their English speaking skills. Users are provided with a paragraph to read aloud. The app records their voice and stores the audio files for future reference and practice.</p>
          </div>
        
          <div class="section">
            <h2>Writing Practice</h2>
            <p>The writing section offers various topics for users to write about. Each topic includes an example answer to guide users. This feature helps users practice and improve their writing skills, which are crucial for the IELTS exam.</p>
          </div>
        
          <div class="section">
            <h2>Reading Materials</h2>
            <p>The app includes a rich collection of reading materials to enhance users' comprehension skills:</p>
            <ul>
              <li>Essays</li>
              <li>Stories</li>
              <li>American Slangs</li>
              <li>Irregular Verbs</li>
              <li>Articles and Publications</li>
            </ul>
          </div>
        
          <div class="section">
            <h2>Listening Section</h2>
            <p>The listening section is divided into three levels: Beginners, Intermediate, and Advanced. Each level contains different lessons. The Text to Speech feature is used in this section to provide users with clear and accurate pronunciation. Additionally, the app includes English TV talk shows to further improve users' listening skills.</p>
          </div>
        
          <div class="section">
            <h2>Vocabulary Building</h2>
            <p>This section includes a comprehensive vocabulary list with over 5000 words. For each word, the app provides:</p>
            <ul>
              <li>Word type</li>
              <li>Definition</li>
              <li>Text to Speech option</li>
            </ul>
            <p>Users can also favorite, translate, copy, and share words. Additionally, the app includes Proverbs and Idioms to help users understand and use English more naturally.</p>
          </div>
        
          <div class="section">
            <h2>Band Score Definitions and Calculator</h2>
            <p>The app provides definitions of different band scores to help users understand the scoring system of the IELTS exam. It also includes a band calculator to estimate their potential score based on their practice performance.</p>
          </div>
        
          <div class="section">
            <h2>IELTS Tips and Tricks</h2>
            <p>This section offers valuable tips and tricks for IELTS preparation, helping users to strategize and approach their studies more effectively.</p>
          </div>
        
          <div class="section">
            <h2>Backend and Data Management</h2>
            <p>The application uses SQLite as the backend database to efficiently manage and store user data and app content. This ensures quick data retrieval and smooth app performance.</p>
          </div>
        
          <h2>Conclusion</h2>
          <p>This IELTS preparation app is a comprehensive tool designed to help users improve their English language skills across all aspects: reading, writing, listening, and speaking. With a wide range of features and a user-friendly interface, it serves as an effective solution for anyone aiming to achieve a high score in the IELTS exam.</p>
        
        ''',
        coverImage: AppAssets.coverImageProject6,
        images: [AppAssets.project6Image1, AppAssets.project6Image2, AppAssets.project6Image3, AppAssets.project6Image4, AppAssets.project6Image5, AppAssets.project6Image6, AppAssets.project6Image7, AppAssets.project6Image8, AppAssets.project6Image9, AppAssets.project6Image10, AppAssets.project6Image11, AppAssets.project6Image12, AppAssets.project6Image13, AppAssets.project6Image14, AppAssets.project6Image15,],
        isWeb: false,
        url: "https://play.google.com/store/apps/details?id=com.streamlogic.ielts_app"
    ),
    Project(
        title: "D-Share",
        shortDescription: "D-Share is a seamless file sharing app built with Flutter, allowing users to share photos, videos, songs, files, and apps across various devices on the same network. Even without the app, users can receive data via a web browser using an IP address and port.",
        longDescription: '''
        <h2>Introduction</h2>
        <p>D-Share is a powerful and user-friendly file sharing app built with Flutter. Share photos, videos, songs, files, and apps effortlessly across various devices.</p>
        
        <h2>Key Features:</h2>
        <ul>
            <li>Seamless sharing of photos, videos, songs, files, and apps across multiple devices.</li>
            <li>Data sharing over the same network (e.g., both devices on the same Wi-Fi, or one on Wi-Fi and the other on Ethernet).</li>
            <li>HTTP protocol-based data transfer using IP address and port number.</li>
            <li>Receive data even without the app installed on the device by entering the IP address and port in a browser.</li>
            <li>QR code scanning for quick and easy data reception if the app is installed.</li>
            <li>View sending and receiving history for easy tracking of shared files.</li>
        </ul>

        <h2>How It Works:</h2>
        <p>To share files with D-Share:</p>
        <ul>
            <li>Ensure both devices are connected to the same network.</li>
            <li>Open D-Share and select the files you want to share.</li>
            <li>If the recipient device has D-Share installed, scan the QR code to start receiving the files.</li>
            <li>If the recipient device does not have D-Share installed, open a browser and enter the IP address with the port number displayed in D-Share.</li>
            <li>The recipient can now download the files directly from the browser.</li>
        </ul>

        <h2>Download D-Share</h2>
        <p>Start sharing files effortlessly with D-Share. Download now and experience seamless file sharing across your devices.</p>
    
        ''',
        coverImage: AppAssets.coverImageProject12,
        images: [AppAssets.project12Image1, AppAssets.project12Image2, AppAssets.project12Image3, AppAssets.project12Image4, AppAssets.project12Image5, AppAssets.project12Image6, AppAssets.project12Image7, AppAssets.project12Image8, AppAssets.project12Image9, AppAssets.project12Image10, AppAssets.project12Image11],
        isWeb: false,
        url: "https://play.google.com/store/apps/details?id=com.techomatic.dshare"
    ),
    Project(
        title: "Barcode & QR Code Scanner",
        shortDescription: "Simplifying barcode and QR code tasks. Scan codes from camera or gallery. Generate QR codes for URLs, Wi-Fi, and more. Record history, share, and save codes with ease.",
        longDescription: '''
        <h2>Introduction</h2>
         <p>QRGenX is a versatile mobile application that simplifies the process of scanning and generating barcodes and QR codes with ease.</p>
        <h2>Key Features:</h2>
        <ul>
            <li>Scan Codes:
                <ul>
                    <li>Effortlessly scan barcodes and QR codes using the device camera or from images stored in the gallery.</li>
                </ul>
            </li>
            <li>Generate Codes:
                <ul>
                    <li>Create QR codes for various purposes including website URLs, Wi-Fi credentials, social media profiles, text messages, contacts, phone numbers, emails, SMS, calendar events, business cards, PayPal links, and more.</li>
                    <li>Generate barcodes for different categories, providing flexibility for diverse use cases.</li>
                </ul>
            </li>
            <li>History:
                <ul>
                    <li>Record scanning and generation history for easy access to previously scanned or created codes.</li>
                </ul>
            </li>
            <li>Share and Save:
                <ul>
                    <li>Share scanned or generated codes as text, copy to clipboard, share as image, or save as image for future reference.</li>
                </ul>
            </li>
        </ul>
        <h2>Technology Stack:</h2>
        <p>The QRGenX app is developed using the following technologies:</p>
        <ul>
            <li>Flutter: A versatile framework for cross-platform app development, ensuring compatibility with both Android and iOS platforms.</li>
            <li>Camera Plugin: Integration with camera plugin for Flutter to enable real-time code scanning.</li>
            <li>Image Picker Plugin: Integration with image picker plugin for Flutter to allow code scanning from images stored in the device gallery.</li>
        </ul>
        <p>Experience the convenience of barcode and QR code scanning and generation at your fingertips with QRGenX. Download the app now!</p>
        ''',
        coverImage: AppAssets.coverImageProject8,
        images: [AppAssets.project8Image1, AppAssets.project8Image2, AppAssets.project8Image3, AppAssets.project8Image4, AppAssets.project8Image5, AppAssets.project8Image6, AppAssets.project8Image7, AppAssets.project8Image8, AppAssets.project8Image9, AppAssets.project8Image10,],
        isWeb: false,
        url: "https://play.google.com/store/apps/details?id=com.techomatic.barcode_scanner"
    ),
    Project(
        title: "Sirat-e-Mustaqeem App",
        shortDescription: "All-in-one Islamic app. Features include Allah's names, Quranic duas, prayer timings with notifications, Qibla direction, Surah collection, Six Kalma, favorites, dark/light theme, and multi-language support. Experience spiritual enrichment and convenience.",
        longDescription: '''
        <h2>Introduction</h2>
         <p>Sirat-e-Mustaqeem is a comprehensive Islamic mobile application designed to assist users in practicing their faith and deepening their understanding of Islam. With a wide range of features, the app serves as a valuable companion for Muslims seeking guidance and inspiration in their daily lives.</p>
        <h2>Key Features:</h2>
        <ul>
            <li>Allah Names:
                <ul>
                    <li>Discover and learn the beautiful names of Allah with detailed meanings and significance.</li>
                </ul>
            </li>
            <li>Quranic Duas:
                <ul>
                    <li>Access a collection of supplications (Duas) from different chapters of the Holy Quran for various occasions and needs.</li>
                </ul>
            </li>
            <li>Prayer Timings and Notifications:
                <ul>
                    <li>Stay updated with accurate prayer timings and receive timely notifications for the next prayer.</li>
                </ul>
            </li>
            <li>Islamic Date:
                <ul>
                    <li>Track the Islamic date alongside the Gregorian calendar for religious observance and planning.</li>
                </ul>
            </li>
            <li>Tasbih Counter:
                <ul>
                    <li>Engage in Dhikr with the Tasbih feature, allowing selection of Ayats from different Surahs of the Quran.</li>
                </ul>
            </li>
            <li>Qibla Direction:
                <ul>
                    <li>Find the Qibla direction accurately to perform prayers in the right direction, no matter where you are.</li>
                </ul>
            </li>
            <li>Important Surah Collection:
                <ul>
                    <li>Access a curated collection of five important Surahs for recitation and reflection.</li>
                </ul>
            </li>
            <li>Six Kalma:
                <ul>
                    <li>Recite and memorize the Six Kalmas for spiritual enlightenment and devotion.</li>
                </ul>
            </li>
            <li>Favorites:
                <ul>
                    <li>Bookmark your favorite Ayats, Surahs, Paras, Juz, Duas, Kalmas, and Allah's names for quick access and reference.</li>
                </ul>
            </li>
            <li>Dark/Light Theme and Time Format:
                <ul>
                    <li>Customize your app experience with dark or light themes and choose between 12-hour and 24-hour time formats.</li>
                </ul>
            </li>
            <li>Local Notifications:
                <ul>
                    <li>Receive local notifications for prayer timings, ensuring you never miss a prayer.</li>
                </ul>
            </li>
            <li>Multi-language Support:
                <ul>
                    <li>Enjoy the app's content in multiple languages, catering to diverse user preferences.</li>
                </ul>
            </li>
        </ul>
        <p>Experience the guidance and blessings of Islam with Sirat-e-Mustaqeem. Download the app now and embark on a journey of spiritual growth and enlightenment!</p>
        ''',
        coverImage: AppAssets.coverImageProject10,
        images: [AppAssets.project10Image1, AppAssets.project10Image2, AppAssets.project10Image3, AppAssets.project10Image4, AppAssets.project10Image5, AppAssets.project10Image6, AppAssets.project10Image7, AppAssets.project10Image8, AppAssets.project10Image9, AppAssets.project10Image10, AppAssets.project10Image11, AppAssets.project10Image12, AppAssets.project10Image13, AppAssets.project10Image14,],
        isWeb: false,
        url: "https://www.mediafire.com/file/fyatcu62r0a9c71/sirat-e-mustaqeem.apk/file"
    ),
    Project(
        title: "PetTag",
        shortDescription: "PetTag is a free social app for pet owners, designed to help pets and their owners meet, socialize, and create lasting connections. Join us to swipe, like, meet new friends, and support animal shelters with 10% of our earnings donated to the ASPCA.",
        longDescription: '''
        <h2>Introduction</h2>
        <p>PetTag is the FREE exclusive social app for pet owners. Pets are a big part of our lives and identity, so doesn’t it make sense to look for someone special for you and your pet? We are happy to bring you a unique communal experience that brings people and pets together!</p>
        
        <h2>Our Story</h2>
        <p>It all began with five friends, five dogs, and play dates. While on one of these playdates, the question arose, “Do our puppies need more socializing?” This singular question from one of the founders took all five friends on a quest to find the answer.</p>
        <p>The answer: They can never get too much socializing!</p>
        <p>The next question was, “How do we find more like-minded people to meet?” So we decided to build a platform for owners and pets to Swipe, Like, Meet, and Socialize.</p>

        <h2>Features</h2>
        <ul class="feature-list">
            <li><strong>Swipe and Like:</strong> Enjoyable swipe features similar to popular dating apps, but without the commitment or anxiety.</li>
            <li><strong>PetWall:</strong> Post moments of your adventures with your matches!</li>
            <li><strong>PackTrack and FindAPark:</strong> See what your matches are up to and find pet-friendly parks to hang out!</li>
        </ul>
        
        <h2>Our Mission</h2>
        <p>We want to make an impact and help pets who don’t have owners. We have made it our mission to donate 10% of our subscription earnings to the ASPCA.</p>
        <div class="donation">
            <p>Together, we can help save animals in shelters and bring the community closer. This journey started as a way to socialize with our dogs and has now become a way to bring people and pets together, to make new friends, and to help save animals in need.</p>
        </div>
        
        <h2>Technology</h2>
        <p>Our app utilizes Firebase as the backend to ensure real-time updates and seamless performance. We have implemented in-app purchases and integrated Google Maps for easy navigation to pet-friendly locations.</p>
        
        <h2>Join Us!</h2>
        <p>We invite you and your pets to join our community. Together, let’s create memorable experiences, make new friends, and support animals in need. Download PetTag today and start your adventure!</p>
    
        ''',
        coverImage: AppAssets.coverImageProject11,
        images: [AppAssets.project11Image1, AppAssets.project11Image2, AppAssets.project11Image3, AppAssets.project11Image4, AppAssets.project11Image5, AppAssets.project11Image6, AppAssets.project11Image7, AppAssets.project11Image8, ],
        isWeb: false,
        url: "https://play.google.com/store/apps/details?id=com.pettag.utechware.socialapppettag"
    ),
    Project(
        title: "Meal Over",
        shortDescription: "Developed an IELTS preparation app with Flutter and GetX, featuring quizzes, speaking and writing practice, reading materials, listening lessons, and a comprehensive vocabulary section. It also includes band score definitions, a calculator, and essential IELTS tips.",
        longDescription: '''
        <h2>Introduction:</h2>
          p>MealOver is a cutting-edge food delivery application designed to revolutionize the way users experience food ordering and delivery.</p>
          <h2>Key Features:</h2>
          <ul>
              <li>User Authentication:
                  <ul>
                      <li>Secure phone number authentication via Firebase OTP for seamless login experience.</li>
                  </ul>
              </li>
              <li>Intuitive User Interface:
                  <ul>
                      <li>User-friendly interface with easy navigation to browse offers, select items, and manage orders.</li>
                  </ul>
              </li>
              <li>Order Management:
                  <ul>
                      <li>Efficient order management system allowing users to view previous orders, track current orders, and reorder favorite items.</li>
                  </ul>
              </li>
              <li>Customizable Cart:
                  <ul>
                      <li>Dynamic cart functionality enabling users to add items, adjust quantities, select delivery addresses, and choose preferred delivery dates and time slots.</li>
                  </ul>
              </li>
              <li>Rewards Program:
                  <ul>
                      <li>Weekly and monthly targets incentivizing users with reward points for achieving milestones, which can be redeemed during future orders.</li>
                  </ul>
              </li>
          </ul>
          <h2>Technology Stack:</h2>
          <p>The MealOver app is built using the following technologies:</p>
          <ul>
              <li>Flutter: A versatile framework for cross-platform app development, ensuring a consistent user experience across Android and iOS platforms.</li>
              <li>GetX: A state management library for Flutter, enhancing app performance and maintainability.</li>
              <li>Node.js: A powerful backend runtime environment for building scalable and efficient server-side applications.</li>
              <li>Firebase: A comprehensive platform providing authentication, database, and hosting services for seamless app development and deployment.</li>
          </ul>
          <p>Experience the convenience of ordering delicious meals at your fingertips with MealOver. Download the app now!</p>
        ''',
        coverImage: AppAssets.coverImageProject7,
        images: [AppAssets.project7Image1, AppAssets.project7Image2, AppAssets.project7Image3, AppAssets.project7Image4, AppAssets.project7Image5, AppAssets.project7Image6, AppAssets.project7Image7, AppAssets.project7Image8, AppAssets.project7Image9, AppAssets.project7Image10, AppAssets.project7Image11, ],
        isWeb: false,
        url: "https://www.mediafire.com/file/fnqt7xu43w4itcn/mealover.apk/file"
    ),
    Project(
        title: "English Stories",
        shortDescription: "Offers a rich collection of English stories for children, ranging from fairy tales to folktales. With dark and light mode options, bookmarking, text-to-speech, zoom functionality, and easy sharing, StoryTale provides an immersive and enjoyable reading experience for kids of all ages.",
        longDescription: '''
        <h2>Introduction</h2>
         <p>StoryTale is an engaging mobile application offering a wide collection of English stories for children of all ages. Dive into captivating narratives and let your imagination soar!</p>
        <h2>Key Features:</h2>
        <ul>
            <li>Rich Story Collection:
                <ul>
                    <li>Explore a diverse range of stories curated for children, including fairy tales, folktales, fables, and more.</li>
                </ul>
            </li>
            <li>Dark and Light Mode:
                <ul>
                    <li>Switch between dark and light themes to suit your reading preferences and enhance readability.</li>
                </ul>
            </li>
            <li>Bookmarking:
                <ul>
                    <li>Bookmark your favorite stories for quick access and revisit them anytime.</li>
                </ul>
            </li>
            <li>Text-to-Speech:
                <ul>
                    <li>Listen to stories with the built-in text-to-speech feature, providing an immersive reading experience.</li>
                </ul>
            </li>
            <li>Zoom Functionality:
                <ul>
                    <li>Zoom in to view text and illustrations with ease, catering to users of all age groups.</li>
                </ul>
            </li>
            <li>Share Stories:
                <ul>
                    <li>Share your favorite stories with friends and family through various social media and messaging platforms.</li>
                </ul>
            </li>
        </ul>
        <p>Experience the magic of storytelling with StoryTale. Download the app now and embark on unforgettable adventures!</p>
        ''',
        coverImage: AppAssets.coverImageProject9,
        images: [AppAssets.project9Image1, AppAssets.project9Image2, AppAssets.project9Image3, AppAssets.project9Image4, ],
        isWeb: false,
        url: "https://play.google.com/store/apps/details?id=com.streamlogic.english.stories"
    ),

    Project(
        title: "Academy Manager",
        shortDescription: "I developed an academy management app using Flutter and Firebase. Admin features include course, batch, and student management, fee tracking, task assignments, and notifications. Students can manage profiles, track course progress and fees, view tasks, and receive updates. The app uses email authentication, push notifications, and MVVM architecture with provider.",
        longDescription: '''
        <h2>Introduction</h2>
        <p>This app is built for academies offering digital courses like digital marketing and mobile app development. It facilitates both administrative and student activities.</p>
        
        <h2>Admin Side Features:</h2>
        <ul>
            <li>Manage courses, batches, and student admissions with detailed course information, duration, and fee.</li>
            <li>Query section to save visitor queries with contact details.</li>
            <li>Fee manager to manage monthly fee records and track pending fees.</li>
            <li>Task assignment for students and progress tracking with a detailed course outline.</li>
            <li>Feed manager to post updates visible in the student app.</li>
            <li>Success story management to highlight student achievements.</li>
            <li>Send important notifications directly to students.</li>
            <li>Expense management for the institution's financial tracking.</li>
        </ul>

        <h2>Student Side Features:</h2>
        <ul>
            <li>View and edit profile information and change password.</li>
            <li>Track course progress, view fee records, and see assigned tasks.</li>
            <li>Module-wise progress tracking for detailed performance monitoring.</li>
            <li>Access feed updates and notifications from the admin.</li>
            <li>Browse available courses and view success stories.</li>
            <li>Locate the academy office using provided location details.</li>
        </ul>

        <h2>Technical Details:</h2>
        <ul>
            <li>Built with Flutter for a seamless cross-platform experience.</li>
            <li>Firebase as backend for robust and scalable data management.</li>
            <li>Email authentication and push notifications for secure and effective communication.</li>
            <li>Provider with MVVM architecture for efficient state management and clean code structure.</li>
        </ul>
        
        ''',
        coverImage: AppAssets.coverImageProject13,
        images: [AppAssets.project13Image1, AppAssets.project13Image2, AppAssets.project13Image3, AppAssets.project13Image4, AppAssets.project13Image5, AppAssets.project13Image6, AppAssets.project13Image7, AppAssets.project13Image8, AppAssets.project13Image9, AppAssets.project13Image10, AppAssets.project13Image11],
        isWeb: false,
        url: "https://www.mediafire.com/file/idg2g7zt1ksafwe/academy+manager.apk/file"
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
  ];

  final List<Experience> experiences = [
    Experience(
        jobTitle: 'Desktop Application Developer',
        start: DateTime(2019,12,01),
        end: DateTime(2020,18,01),
        details: [
          'Orchestrated the development of robust C# desktop applications, specializing in Point of Sale systems and innovative food delivery management solutions for restaurants ensuring seamless operations and enhanced efficiency.',
          'Leveraged expertise as a C# desktop application developer to deliver tailored software solutions, optimizing restaurant management workflows and offering feature-rich Point of Sale systems that meet the specific needs of clients.',
        ],
        company: 'Professional Tech',
        location: 'Okara, Pakistan'
    ),
    Experience(
        jobTitle: 'Mobile Application Trainer',
        start: DateTime(2020,09,01),
        end: DateTime(2021,05,01),
        details: [
          'Spearheaded mobile app training initiatives for a government project, imparting essential skills in Flutter development, contributing to the capacity-building goals of the program.',
          'Played a pivotal role in equipping participants with the latest mobile app development techniques, ensuring alignment with industry standards and fostering a skilled workforce as part of a strategic government initiative.'
        ],
        company: 'Kamyab Jawan Program',
        location: 'Okara, Pakistan'
    ),
    Experience(
        jobTitle: 'Flutter Developer',
        start: DateTime(2021,05,01),
        end: DateTime(2022,05,01),
        details: [
          'Executed diverse freelance projects encompassing Flutter mobile app development, delivering bespoke solutions aligned with client objectives.',
          'Designed and implemented user-friendly solutions for business management, creating intuitive applications for both mobile and desktop platforms.'
        ],
        company: 'eFAIDA Technologies',
        location: 'Okara, Pakistan'
    ),
    Experience(
        jobTitle: 'Flutter Developer',
        start: DateTime(2022,06,01),
        end: DateTime(2023,06,01),
        details: [
          'Engineered a top-tier food delivery app, harmonizing Flutter front-end with a resilient Node.js back-end for seamless order processing and an enriched user inter-face.',
          'Spearheaded a cutting-edge job finder app, capitalizing on Firebase back-end for real-time data sync, personalized job recommendations.',
          'Indicatively crafted a walking challenge app, amplifying user motivation in a distinctive fitness context.'
        ],
        company: 'Software Hub',
        location: 'Karachi, Pakistan (Remote)'
    ),
    Experience(
        jobTitle: 'Flutter Developer - Part-Time',
        start: DateTime(2023,05,01),
        end: DateTime(2023,12,01),
        details: [
          'End-to-end app development using Firebase, REST APIs, and integration of real-time chat features.',
          'Utilizes Twilio API for audio and video calling functionalities.',
        ],
        company: 'XSquare Technology',
        location: 'Gujrat, India (Remote)'
    ),
    Experience(
        jobTitle: 'Senior Flutter Developer',
        start: DateTime(2023,06,01),
        end: DateTime.now(),
        details: [
          'Developed advanced mobile and web apps, optimizing operations and user experience in cleaning and maintenance services.',
          'Designed user-friendly solutions for business management, resulting in a 20% increase in user engagement.',
          'Led the development of an HR portal, streamlining processes and improving efficiency by 25%.',
          'Acted as both Flutter developer and back-end specialist, enhancing API performance by 15%.',
        ],
        company: 'The One Properties',
        location: 'Ras Al Khaimah, UAE (Remote)'
    ),
  ];
  
  final List<Education> educations = [
    Education(
        degree: "Bachelor of Science Computer Science (BSCS)",
        university: "Bahauddin Zakariya University - BZU",
        location: "Multan, Pakistan",
        details: [
          'Focus on Software development and programming concepts',
          'Developed a sophisticated Point of Sale system as a capstone project'
        ],
        start: DateTime(2015, 09,01),
        end: DateTime(2019, 09, 01)
    ),
    Education(
        degree: "Master of Science Computer Science (MSCS)",
        university: "University of Okara",
        location: "Okara, Pakistan",
        details: [
          'Focus on Machine Learning and Deep Learning',
          'Write thesis on Multimodal approach to detect deep fake videos'
        ],
        start: DateTime(2021, 09,01),
        end: DateTime(2024, 02, 01)
    ),
  ];

  final String aboutPara = '''Dynamic and results-driven Flutter Developer with over 3 years of extensive experience in designing and implementing high-performance mobile applications. Adept at transforming intricate designs and visionary concepts into visually stunning, user-centric applications. Passionate about delivering exceptional user experiences, I excel in both front-end and back-end development, leveraging a robust foundation in Dart, Flutter, and Node.js.

  Throughout my career, I have successfully led and contributed to diverse projects, ranging from advanced mobile solutions for business management to innovative fitness and job-finding applications. My expertise extends to utilizing Firebase and real-time data synchronization, ensuring seamless app functionality and enhanced user engagement.

  With a proven track record of optimizing app performance, streamlining processes, and driving project success, I bring a strategic and innovative approach to problem-solving. My commitment to continuous learning and staying abreast of the latest industry trends empowers me to deliver cutting-edge solutions that meet and exceed client expectations.

  I thrive in collaborative environments, consistently demonstrating strong communication skills and a team-oriented mindset. As a proactive and adaptable professional, I am dedicated to contributing top-tier development skills to forward-thinking projects and organizations, ensuring impactful results and sustainable growth.
  '''
  ;

  //getters
  int get selectedSection => _selectedSection;
  bool get showAllProjects => _showAllProjects;


  //setters
  set selectedSection(int val){
    _selectedSection = val;
    _scrollToWidget(val);
    update();
  }

  set showAllProjects(bool val){
    _showAllProjects = val;
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
      position = 650;
    }
    else if(index == 5){
      position = 700;
    }
    else if(index == 6){
      position = 880;
    }
    if(Get.width <= mobileWidth){
      position += 650;
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

  @override
  void onInit() {
    super.onInit();
    experiences.sort((a,b) => b.start.compareTo(a.start));
    educations.sort((a,b) => b.end.compareTo(a.end));
    update();
  }
}