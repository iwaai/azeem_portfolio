'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "c3e81176ec733c288e4cd4446712edda",
"index.html": "1a54bf207b142aec1e06d6be43c6f795",
"/": "1a54bf207b142aec1e06d6be43c6f795",
"main.dart.js": "d6535d3e16b46631a943e56393612710",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a",
"favicon.png": "bb756a6414fa1d57c2a248f2508bae73",
"icons/Icon-192.png": "4ec6376df6ddbd63bd04bc5de81f9774",
"icons/Icon-maskable-192.png": "4ec6376df6ddbd63bd04bc5de81f9774",
"icons/Icon-maskable-512.png": "7e3d790eb8a040ff35d80242e1b3edb8",
"icons/Icon-512.png": "7e3d790eb8a040ff35d80242e1b3edb8",
"manifest.json": "80868d705d3cc3fb06a1957ae8bf4eea",
"assets/AssetManifest.json": "d5484bc7eab552257522b4acc00ce6c0",
"assets/NOTICES": "2c257c8a82ff4413c7bfc787c0e6b501",
"assets/FontManifest.json": "565c21b99423b702ea202451df3ce532",
"assets/AssetManifest.bin.json": "1916e4665ecd3932182738f2dde6c9a3",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "391ff5f9f24097f4f6e4406690a06243",
"assets/packages/wakelock_plus/assets/no_sleep.js": "7748a45cd593f33280669b29c2c8919a",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "72f39f71973db7cfaf84030bb8fc6a60",
"assets/fonts/MaterialIcons-Regular.otf": "20111628fc6f3d72502669c0268e8e88",
"assets/assets/images/skypeIcon.svg": "6e0bb1510be41a373adb24567cd43810",
"assets/assets/images/contactImage.png": "ed44507641bcbc331afd54cc4d3317a6",
"assets/assets/images/experienceIcon.svg": "9449d3819790eb67c50af582fe21c476",
"assets/assets/images/whatsappIcon.svg": "b39ff32cdcba88c8cd3131aeafb87778",
"assets/assets/images/contactIcon.svg": "1bd01457a6daf7ce1300413e0a3ccdea",
"assets/assets/images/mypic.jpg": "ac660309f428e99b3f4617cf0a2a86af",
"assets/assets/images/codeIcon.svg": "910417a8b957d405cb895810fa632ce4",
"assets/assets/images/deploymentIcon.svg": "681cc340fc27b93e97bc4731b222d34e",
"assets/assets/images/experience.png": "c4486433746f6ecb65b0028d24d1a38c",
"assets/assets/images/projectIcon.svg": "ad9f01989d4c95fe94cab60f094a29bc",
"assets/assets/images/apiIcon.svg": "b019086f5047dfc0bbe5ae4d4d68ca6a",
"assets/assets/images/brightnessIcon.svg": "9be3c75a38634421642a242de7452941",
"assets/assets/images/assistanceIcon.svg": "4ea953326d936e557b873b48bf4f3b73",
"assets/assets/images/educationImage.png": "8cc382bf85d1a03dbf69efd9cda7be85",
"assets/assets/images/mypic1.png": "37e875b24907d404cceb872d60480d45",
"assets/assets/images/mypic2.png": "e62c286178e98ee811efa1991d284c48",
"assets/assets/images/performanceIcon.svg": "efd4f19f7a0e19d01a53db369fd6cb95",
"assets/assets/images/xIcon.svg": "487b96d315089fbc2b32d21923d8ef14",
"assets/assets/images/phoneIcon.svg": "70b2a3d45b879a9c079b609550ed8486",
"assets/assets/images/tools.png": "be364d9f0c4e0f71d9849a59c0dfacf8",
"assets/assets/images/homeIcon.svg": "0071a9273fc8e876ce4b92440ebc1c9d",
"assets/assets/images/portfolioIcon.png": "f5f71544d612fd4c8ad10d8874ac9fd4",
"assets/assets/images/linkedinIcon.svg": "b10794f1d2cfb39d57b3216e801dd9a7",
"assets/assets/images/educationIcon.svg": "d4c5ae4485f114a21086380fa4334b2f",
"assets/assets/images/serviceIcon.svg": "5976ea8d6a16e37b15917f7ded2b0c2c",
"assets/assets/images/youtubeIcon.svg": "ca2c58d1a15661bc9e1b67dcc69bbff0",
"assets/assets/images/emailIcon.svg": "19feb931912a6e8afbf32c4cb73c286d",
"assets/assets/images/locationIcon.svg": "754d9ba6984e8b70f9bf3e1d228d23bf",
"assets/assets/images/githubIcon.svg": "c23a95fcb4b1d25765107e4e73b06438",
"assets/assets/images/stackoverflowIcon.svg": "e0e322280d2984cf4168a3c1c2c91d94",
"assets/assets/images/webIcon.svg": "23479a1147344ed45f29f8622d3986ef",
"assets/assets/images/uxIcon.svg": "f7fd74050ce14188a6412212eee00ebd",
"assets/assets/images/aboutIcon.svg": "ffc3ea08feecbb0bc9458bd5a9936e44",
"assets/assets/images/mobileAppDevelopmentIcon.svg": "3695b6b43685e9839d58fd45743d1e01",
"assets/assets/images/hi.gif": "cad5918d86b6a7e83f1fb4acead70e4c",
"assets/assets/images/skillsIcon.svg": "2521b5499ad3be3211fc9295be988d06",
"assets/assets/images/mediumIcon.svg": "7bc0acc9f4505b4f4d0ca98d2567a261",
"assets/assets/project_images/project6Image1.png": "e6db234bfc70ad0d0023bdd09400f0d5",
"assets/assets/project_images/project2Image16.png": "012b363071728c78f490a87f05ba8cf5",
"assets/assets/project_images/coverImageProject13.png": "2a2d6f3d90b3637bd41bbfd408004740",
"assets/assets/project_images/project5Image9.png": "5ea1a776943c8fce963f497aef5bb7cf",
"assets/assets/project_images/project12Image5.png": "85ae0a67aee5dbfe57348791a8192181",
"assets/assets/project_images/project12Image4.png": "de32356e32321ddb25371b335341ece5",
"assets/assets/project_images/project5Image8.png": "ba90ca4b1715bb30912487cbc476b7a6",
"assets/assets/project_images/coverImageProject12.png": "b0ac5ceed8abf0c24d6f0a7dc7388ffe",
"assets/assets/project_images/project2Image17.png": "52451f2aa31308a34b95575268f3ff57",
"assets/assets/project_images/project6Image2.png": "7b0ca3b132c75db2d2784544686ab42f",
"assets/assets/project_images/project2Image15.png": "8689396363cb56d13f332f8d17a0740a",
"assets/assets/project_images/coverImageProject10.png": "a5b7a155bea142ce15c2795628459188",
"assets/assets/project_images/project8Image9.png": "8095d40fc050b2992b22a4a47463106d",
"assets/assets/project_images/project7Image10.png": "64d7a2793a1518f64dfd1403fa4f78d9",
"assets/assets/project_images/project12Image6.png": "efb3be680e47291140670e5da295261f",
"assets/assets/project_images/project12Image7.png": "f2f328ec2f1d9b050c3af2fbd56bd6ef",
"assets/assets/project_images/project7Image11.png": "fbbf0d048d46dfc51449df624b79a2c8",
"assets/assets/project_images/project8Image8.png": "0fa0bd4d94c0e47e74b844ebb7b6343d",
"assets/assets/project_images/coverImageProject11.png": "9ee1657b38b1994e68ecddf7f203bffa",
"assets/assets/project_images/project2Image14.png": "343afac8fa62d9ec99827be8fbd8bac6",
"assets/assets/project_images/project6Image3.png": "9ad402d2bddadd2360ccd8ed3347d8d2",
"assets/assets/project_images/project6Image7.png": "83b16e7d494f95f90fdfda69a24374bc",
"assets/assets/project_images/project2Image10.png": "6ccf915b486dad1eeca6645d8fe78212",
"assets/assets/project_images/project12Image3.png": "fdbe7e22c8f30ba0c8c00ab8f7a01349",
"assets/assets/project_images/project13Image10.png": "0ee042a8b732a25c5b531534cb4262f0",
"assets/assets/project_images/project3Image8.png": "d38e7680215ed7460362d11245e1d855",
"assets/assets/project_images/project3Image9.png": "2cd2be436d95511371c5585f23e9e5fa",
"assets/assets/project_images/project12Image2.png": "7cb84ac6e21824e2b723196d33cb2a64",
"assets/assets/project_images/project13Image11.png": "74b5e25b9968e8a02545cc5b60aa4272",
"assets/assets/project_images/project2Image11.png": "82a36a71c81a4d6a4962a6709a3f7d48",
"assets/assets/project_images/project6Image6.png": "e49efa7589d87fa30b943ecd073adad1",
"assets/assets/project_images/project6Image4.png": "3319cac24680e9ed2778a9ee31d004bb",
"assets/assets/project_images/project2Image13.png": "d1f63c5500168e0cbe9e4fafb7fbe06e",
"assets/assets/project_images/project11Image8.png": "3fb13c4b0055e774de5205e3de95407d",
"assets/assets/project_images/project11Image9.png": "6a69f924d056b79ab5fddcba11ef410c",
"assets/assets/project_images/project12Image1.png": "bf66bcec4425ad6b644342025bf05f29",
"assets/assets/project_images/project2Image12.png": "e1f7be395b714e977de71f290b8500fa",
"assets/assets/project_images/project6Image5.png": "1ce7e722b5332acbdbdc4a6ca0358be8",
"assets/assets/project_images/project13Image5.png": "4996a5beef4a6187b76a227d0d3169c1",
"assets/assets/project_images/project1Image6.png": "3a057626de37ffefac21db383a696106",
"assets/assets/project_images/project5Image12.png": "5cc68cfe8a3b53edf31bd325cd71885c",
"assets/assets/project_images/project7Image1.png": "cc976f6bc88202d85e0fdea161fc7397",
"assets/assets/project_images/project3Image19.png": "85be41951d4793a947fa13088181c08b",
"assets/assets/project_images/project3Image25.png": "a12689b04c8b5f2d53b16585aa73031f",
"assets/assets/project_images/project3Image31.png": "180b02eadf819da7b5fce39555290002",
"assets/assets/project_images/project4Image9.png": "5ea1a776943c8fce963f497aef5bb7cf",
"assets/assets/project_images/project4Image8.png": "3c3a388308d7a40e8031e41cec85c07e",
"assets/assets/project_images/project3Image30.png": "860af41e742dadb9e8a688e18e68d648",
"assets/assets/project_images/project3Image24.png": "6b24b165512070f81f33c1cb6d2e10f0",
"assets/assets/project_images/project8Image10.png": "e09a09dde90105c1d05f2ae079980161",
"assets/assets/project_images/project3Image18.png": "7580e01d76fbb938821fe090f77f44ed",
"assets/assets/project_images/project5Image13.png": "ff6f36355243a1a732385e67bd8f50ee",
"assets/assets/project_images/project1Image7.png": "40d5c93b0deabaa5b370aa3c34c915bc",
"assets/assets/project_images/project13Image4.png": "1d83f4c2cc5e70f018a23c806b5622b2",
"assets/assets/project_images/project13Image6.png": "186d470343d9819e89f44c9a14c5a1a1",
"assets/assets/project_images/project1Image5.png": "f90a6cb686caca90d9816ea72c17a002",
"assets/assets/project_images/project5Image11.png": "6be5694aee5611d12767b7ddac6dbfeb",
"assets/assets/project_images/project7Image2.png": "0b75583b947596ccff9c0caf1e717675",
"assets/assets/project_images/project3Image32.png": "608987184495e45902fa2d017a093134",
"assets/assets/project_images/project3Image26.png": "134834907a8698a7d30ef801d8df834d",
"assets/assets/project_images/project3Image27.png": "6f42266e498600c23423533e933db2ca",
"assets/assets/project_images/project3Image33.png": "f97725d2a558255c187faf4a6553e64c",
"assets/assets/project_images/project7Image3.png": "116e2c3ab8bd6a19a4c72e33b26bac1f",
"assets/assets/project_images/project5Image10.png": "c7cf5bde6b881721a2fecbd2a0f4efa7",
"assets/assets/project_images/project1Image4.png": "73d2580321f0c2a1de2486b99011d233",
"assets/assets/project_images/project13Image7.png": "0f9b83ba7b8d1fde48d3b48d0531c065",
"assets/assets/project_images/project13Image3.png": "6b53dc02b95051b36da69872dfd1102e",
"assets/assets/project_images/project2Image8.png": "ea68fecc86f5463a8f3537873a62d0c6",
"assets/assets/project_images/project5Image14.png": "faafcb091cea8d83563fa3ac16cd1476",
"assets/assets/project_images/project7Image7.png": "77a550d69b2747dca63fd4984ac82de8",
"assets/assets/project_images/project3Image23.png": "b9c89dff6fdf5e8aab443a9770da4027",
"assets/assets/project_images/coverImageProject8.png": "8d795ea69a6a452f7328be29f8dbd405",
"assets/assets/project_images/coverImageProject9.png": "e224cc2f22460bc68db68787dcfe18f8",
"assets/assets/project_images/project3Image22.png": "53f9a1ee4080a670b3e8508680da2117",
"assets/assets/project_images/project7Image6.png": "5e85f82455ebf9ac5bf61e1464cde958",
"assets/assets/project_images/project5Image15.png": "2a098fa6c9a0ba5bb990a18003a78c1b",
"assets/assets/project_images/project2Image9.png": "bcce5a269527819ba751c93b0ba97500",
"assets/assets/project_images/project1Image1.png": "8d8748c346862d5fc8389dddafdf59cc",
"assets/assets/project_images/project13Image2.png": "432e853d80517d6f37e2662b60e52974",
"assets/assets/project_images/project1Image3.png": "3c81e0120239e8cd8386f14831410830",
"assets/assets/project_images/project10Image8.png": "642cbec371c9cd081bc0e8600d471fc5",
"assets/assets/project_images/project5Image17.png": "ef1db46f45e96ef10dc0cb2debbfca61",
"assets/assets/project_images/project7Image4.png": "733a47f7bb10b902e2176b3480e7d264",
"assets/assets/project_images/project3Image20.png": "fb1ba2c92fc4e3426218cd779d9b9178",
"assets/assets/project_images/project3Image21.png": "5e712438d85412090be5d84dd7cbe19b",
"assets/assets/project_images/project7Image5.png": "f3e13503f3fb81b8ad0e24d94e6442bb",
"assets/assets/project_images/project5Image16.png": "3b4bbe89b0f5fe47238e01a8d9a46fe3",
"assets/assets/project_images/project10Image9.png": "b51dea2de96807396e5dd77c6eb53cbe",
"assets/assets/project_images/project1Image2.png": "45e793bc554b3cd0f01ec600adc5a81d",
"assets/assets/project_images/project13Image1.png": "5af8eda7a73ee43ffdf6a0eb9a003c31",
"assets/assets/project_images/project12Image10.png": "febd1c179b7a6d7a57d841d10546d05b",
"assets/assets/project_images/project6Image15.png": "f176e1ee66db45eaf9873ef22e4b50e9",
"assets/assets/project_images/project10Image4.png": "8a3281a8249ceb57dc266de678b1cd56",
"assets/assets/project_images/project2Image7.png": "0371368121aa773f28e65580cdaa9433",
"assets/assets/project_images/project7Image8.png": "e3eab02c30ce401f66f3d0a6f8a5275a",
"assets/assets/project_images/coverImageproject7.png": "f3f6c009e9eaf2e9c8c2602f05035232",
"assets/assets/project_images/project3Image10.png": "d21bd663caa9ae4a4f3b2b99513bc67e",
"assets/assets/project_images/project9Image3.png": "d8a9755e5bb479dbc820da13c67c8214",
"assets/assets/project_images/project9Image2.png": "a8237a5fa55d9443d7dd4cab5fe788b4",
"assets/assets/project_images/project4Image1.png": "c0e184ebd4480a33d6572f880883fba7",
"assets/assets/project_images/project3Image11.png": "f933f7fefb15ac9f18458065cf1af990",
"assets/assets/project_images/coverImageProject6.png": "a4782e464b8a54bcaf0a2263b0559af1",
"assets/assets/project_images/project7Image9.png": "8c9593b8df8967bfe91929b8995522b6",
"assets/assets/project_images/project2Image6.png": "c47f69f1d15c09c48aea8f827bacd9ee",
"assets/assets/project_images/project10Image5.png": "421affc0b6d6ae01d6d914de3a05c352",
"assets/assets/project_images/project6Image14.png": "a0a760d1917c9751a161ec61ddd27dae",
"assets/assets/project_images/project12Image11.png": "872e82ce16f110583a3fa2051c54a74d",
"assets/assets/project_images/project10Image7.png": "dc3b5cf495d4c45719737649172f7c58",
"assets/assets/project_images/project2Image4.png": "de4ace8784c5eafac502b4e90f740ac5",
"assets/assets/project_images/project3Image13.png": "4ab4e2f6deee5d6bbfb2826b736908e0",
"assets/assets/project_images/project4Image3.png": "516abe1be8499a55c04ccd91a88df147",
"assets/assets/project_images/project9Image1.png": "15134fb026f10da1a9f238ec85c03073",
"assets/assets/project_images/project4Image2.png": "1e1d6f7687960f2f47b76d35ecf26333",
"assets/assets/project_images/project3Image12.png": "28329980790b29f0dc04edd43d393e53",
"assets/assets/project_images/coverImageProject5.png": "f1285d5ae0641978a9bada4ec78ab42d",
"assets/assets/project_images/project2Image5.png": "b392741ea5515e8e87039876d379eee6",
"assets/assets/project_images/project10Image6.png": "17710ee4cc7671008a45860be6df387b",
"assets/assets/project_images/project6Image13.png": "e19ffd5094e5ea864371e5578783750f",
"assets/assets/project_images/project10Image2.png": "e6c712169ec8bda7f6cd24334a7916e7",
"assets/assets/project_images/project2Image1.png": "7dc43babe6de65a0cc7559370fe13d7c",
"assets/assets/project_images/coverImageProject1.png": "b59218c183bec0b46f4d22b9a8d732e5",
"assets/assets/project_images/project3Image16.png": "bd170bec0b0df4a53e3a74be3c4ac6de",
"assets/assets/project_images/project4Image6.png": "07fd2c0687a899c99f757f914edd242b",
"assets/assets/project_images/project9Image4.png": "b59a4fa814449864373951c5bc2d5c8c",
"assets/assets/project_images/project4Image7.png": "ea63174d9a95fd1ff3660737c0e7d3c2",
"assets/assets/project_images/project3Image17.png": "bc68af510b2b3049ea8b381b12644ec5",
"assets/assets/project_images/project10Image3.png": "d152aefb19cd49ccd0d0b2a8ba337c01",
"assets/assets/project_images/project1Image8.png": "45a8cf5f89b363ae61f2b0ec832d34be",
"assets/assets/project_images/project6Image12.png": "c3aeb347781716f5dab1fcdb96f93dbe",
"assets/assets/project_images/project6Image10.png": "9c9dfb2a5e7923355293c7bb93b20b70",
"assets/assets/project_images/project13Image9.png": "813ffaf13dcab5882e9b076a74481583",
"assets/assets/project_images/project10Image1.png": "7becbf91cf26cd3eae49c4f49528bad2",
"assets/assets/project_images/project2Image2.png": "f11c594202d2f198f2689ee2730d98b7",
"assets/assets/project_images/coverImageProject2.png": "6f200c750a81d3eeb2cb52a4db862dab",
"assets/assets/project_images/project3Image15.png": "5eb76b36c3493a9cf0eabf37417446a6",
"assets/assets/project_images/project3Image29.png": "a056ba644a3ddd66206c67654ea6de8c",
"assets/assets/project_images/project4Image5.png": "4d7a5a73c76e0078e0655f2566977404",
"assets/assets/project_images/project4Image4.png": "0066d2a1d1b177bd013d811ae09f38e5",
"assets/assets/project_images/project3Image28.png": "b9b6640fea3dd5261bf5bf410985ff98",
"assets/assets/project_images/project3Image14.png": "0f0071e374fbc289973323f06c3d3d09",
"assets/assets/project_images/project2Image3.png": "466fb9680c8ef48e3ad3f821eef440f6",
"assets/assets/project_images/project13Image8.png": "8b15f23836a14f50a1ddade510cdb5cb",
"assets/assets/project_images/project6Image11.png": "f1fed28f74482d75c2958ff630d4e274",
"assets/assets/project_images/project6Image8.png": "5e08b8efe7bb4e9aaeadc59effbd3bff",
"assets/assets/project_images/project8Image3.png": "f68a7f1597dfc4191b64e8be8447c0a2",
"assets/assets/project_images/project11Image4.png": "4c535ec9aabd512c36e24bb67eb392ab",
"assets/assets/project_images/project10Image11.png": "77ad91b6713d047b8c59d6643db2ca2c",
"assets/assets/project_images/project4Image14.png": "faafcb091cea8d83563fa3ac16cd1476",
"assets/assets/project_images/project3Image7.png": "dd9782fa32e451eb186acf7aaca01f9c",
"assets/assets/project_images/project3Image6.png": "1d2a6556b3c5be375d71d8cecfa04cc3",
"assets/assets/project_images/project4Image15.png": "2a098fa6c9a0ba5bb990a18003a78c1b",
"assets/assets/project_images/project10Image10.png": "37c06f48a8f00e39c23198b5a6366b07",
"assets/assets/project_images/project11Image5.png": "66792009d53d61171c709da75c325d67",
"assets/assets/project_images/project8Image2.png": "5ffa16dc7d84de7df69f0e202e0d45f8",
"assets/assets/project_images/project5Image1.png": "1b9e8c580c2ce7448c90095eda5f17a4",
"assets/assets/project_images/project6Image9.png": "9c58399ac36f3e655509edafa5b7c58d",
"assets/assets/project_images/project2Image20.png": "92a2acdb57f41b1e4a22c69252df3017",
"assets/assets/project_images/project5Image3.png": "1ce389fe2403df36518544ef111da705",
"assets/assets/project_images/project11Image7.png": "b64e720fe7abe665acfa470511036e0a",
"assets/assets/project_images/project4Image17.png": "ef1db46f45e96ef10dc0cb2debbfca61",
"assets/assets/project_images/project3Image4.png": "2a659eadde780bfe2d57bf22941f3d3e",
"assets/assets/project_images/project10Image12.png": "c8d19836465b38b1eb65e11e459d4a69",
"assets/assets/project_images/project10Image13.png": "4caab614663cb4f4ddbeaf2c26f1c38d",
"assets/assets/project_images/project3Image5.png": "c24d0685105614e81f8936c09f759f48",
"assets/assets/project_images/project4Image16.png": "3b4bbe89b0f5fe47238e01a8d9a46fe3",
"assets/assets/project_images/project11Image6.png": "97da3e0d48a240235f8c4bd16411c333",
"assets/assets/project_images/project8Image1.png": "a903c8cea5b0cb0709c59034cd9f8019",
"assets/assets/project_images/project5Image2.png": "f5dc532a5738707244529cf622c6c16e",
"assets/assets/project_images/project2Image21.png": "e704932bd414b42575058cb351e06988",
"assets/assets/project_images/project2Image19.png": "c042e8c7771bcbe4884683d278275c3a",
"assets/assets/project_images/project5Image6.png": "f3e0ac142acfd00adbe21d7dcd028031",
"assets/assets/project_images/project8Image5.png": "2476bcf5b7bb6cef937433cbeb8436f2",
"assets/assets/project_images/project11Image2.png": "163c3994e934de51719726c83fb901ec",
"assets/assets/project_images/project3Image1.png": "de5008991906169bf4551d30ba3805c3",
"assets/assets/project_images/project4Image12.png": "5cc68cfe8a3b53edf31bd325cd71885c",
"assets/assets/project_images/project4Image13.png": "ff6f36355243a1a732385e67bd8f50ee",
"assets/assets/project_images/project11Image3.png": "f71797e007cec1cd57b0936fa5f754b0",
"assets/assets/project_images/project8Image4.png": "f55380d93f6315dd9b4ee21e7eb06bab",
"assets/assets/project_images/project5Image7.png": "ee0e0c98460683566cd58dca4f863c22",
"assets/assets/project_images/project2Image18.png": "1cc0c904fa0c0fc06a9d9cb41648ca0d",
"assets/assets/project_images/project5Image5.png": "7af27195ff21564acd1cb64062fccbed",
"assets/assets/project_images/project8Image6.png": "10edbf43397d3ae5b96d22bc4eef80d3",
"assets/assets/project_images/project12Image9.png": "a04635f22e4e64b9b5e0902a29d875f4",
"assets/assets/project_images/project11Image1.png": "5427d569fab9e4b99d0a81da522f50d7",
"assets/assets/project_images/project10Image14.png": "7b300c4175803174455d0ca5a41ee259",
"assets/assets/project_images/project3Image2.png": "1fc94f9875b838dc57d15eb345b3ceb0",
"assets/assets/project_images/project4Image11.png": "6be5694aee5611d12767b7ddac6dbfeb",
"assets/assets/project_images/project4Image10.png": "c7cf5bde6b881721a2fecbd2a0f4efa7",
"assets/assets/project_images/project3Image3.png": "5b3778d9dd3cf811122ef6c091749cf8",
"assets/assets/project_images/project12Image8.png": "85360b0d711357c3124db0409c04da69",
"assets/assets/project_images/project8Image7.png": "035e90d7fc8f5bb1e42aac90a97384d9",
"assets/assets/project_images/project5Image4.png": "b5006040847401a3dee7d8e89e008059",
"assets/assets/fonts/agustina/agustina.otf": "7b9833076716a8d14eec0cf885a3153c",
"assets/assets/fonts/montserrat/montserrat.ttf": "ee6539921d713482b8ccd4d0d23961bb",
"assets/assets/fonts/poppins/Poppins-Light.ttf": "f6ea751e936ade6edcd03a26b8153b4a",
"assets/assets/fonts/poppins/Poppins-Medium.ttf": "f61a4eb27371b7453bf5b12ab3648b9e",
"assets/assets/fonts/poppins/Poppins-Regular.ttf": "8b6af8e5e8324edfd77af8b3b35d7f9c",
"assets/assets/fonts/poppins/Poppins-Bold.ttf": "a3e0b5f427803a187c1b62c5919196aa",
"assets/assets/fonts/poppins/Poppins-SemiBold.ttf": "4cdacb8f89d588d69e8570edcbe49507",
"assets/assets/fonts/poppins/Poppins-Italic.ttf": "5e956c44060a7b3c0e39819ae390ab15",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/skwasm.js.symbols": "741d50ffba71f89345996b0aa8426af8",
"canvaskit/canvaskit.js.symbols": "38cba9233b92472a36ff011dc21c2c9f",
"canvaskit/skwasm.wasm": "e42815763c5d05bba43f9d0337fa7d84",
"canvaskit/chromium/canvaskit.js.symbols": "4525682ef039faeb11f24f37436dca06",
"canvaskit/chromium/canvaskit.js": "43787ac5098c648979c27c13c6f804c3",
"canvaskit/chromium/canvaskit.wasm": "f5934e694f12929ed56a671617acd254",
"canvaskit/canvaskit.js": "c86fbd9e7b17accae76e5ad116583dc4",
"canvaskit/canvaskit.wasm": "3d2a2d663e8c5111ac61a46367f751ac",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
