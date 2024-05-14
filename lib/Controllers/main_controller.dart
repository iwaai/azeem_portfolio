import 'package:abdulrehman/Constants/dimensions.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Models/service.dart';
import '../Models/skill.dart';
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
      position = 800;
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