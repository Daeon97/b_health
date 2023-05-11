// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars

// Routes
const defaultRoute = '/';
const homeScreenRoute = '/home';
const introScreenRoute = '/intro';
const signInScreenRoute = '/signIn';
const signUpScreenRoute = '/signUp';
const bioDataScreenRoute = '/bioData';
const takeAssessmentScreenRoute = '/takeAssessment';

// Image paths
const _rootImagePath = 'assets/images';
const authBottomImagePath = '$_rootImagePath/auth_bottom_image.png';
const bHealthLogoImagePath = '$_rootImagePath/b_health_logo_image.png';
const emailAddressPrefixImagePath =
    '$_rootImagePath/email_address_prefix_image.png';
const heightImagePath = '$_rootImagePath/height_image.png';
const hidePasswordSuffixImagePath =
    '$_rootImagePath/hide_password_suffix_image.png';
const historyImagePath = '$_rootImagePath/history_image.png';
const homeImagePath = '$_rootImagePath/home_image.png';
const homeTopImagePath = '$_rootImagePath/home_top_image.png';
const introImagePath = '$_rootImagePath/intro_image.png';
const passwordPrefixImagePath = '$_rootImagePath/password_prefix_image.png';
const profileImagePath = '$_rootImagePath/profile_image.png';
const pulseImagePath = '$_rootImagePath/pulse_image.png';
const questionEighteenImagePath = '$_rootImagePath/question_eighteen_image.png';
const questionNineteenImagePath = '$_rootImagePath/question_nineteen_image.png';
const questionSeventeenImagePath =
    '$_rootImagePath/question_seventeen_image.png';
const questionSixteenImagePath = '$_rootImagePath/question_sixteen_image.png';
const questionTwentyFiveImagePath =
    '$_rootImagePath/question_twenty_five_image.png';
const questionTwentyFourImagePath =
    '$_rootImagePath/question_twenty_four_image.png';
const questionTwentyImagePath = '$_rootImagePath/question_twenty_image.png';
const questionTwentyOneImagePath =
    '$_rootImagePath/question_twenty_one_image.png';
const questionTwentySixImagePath =
    '$_rootImagePath/question_twenty_six_image.png';
const questionTwentyThreeImagePath =
    '$_rootImagePath/question_twenty_three_image.png';
const questionTwentyTwoImagePath =
    '$_rootImagePath/question_twenty_two_image.png';
const settingImagePath = '$_rootImagePath/setting_image.png';
const showPasswordSuffixImagePath =
    '$_rootImagePath/show_password_suffix_image.png';
const signInImagePath = '$_rootImagePath/sign_in_image.png';
const signUpImagePath = '$_rootImagePath/sign_up_image.png';
const splashImagePath = '$_rootImagePath/splash_image.png';
const weightImagePath = '$_rootImagePath/weight_image.png';

// Font families
const pacifico = 'Pacifico';
const inter = 'Inter';

// String literals
const startYourJourneyLiteral = 'Start your journey';
const withLiteral = 'with';
const bhealLiteral = 'B-Heal';
const hLiteral = 'h';
const signUpLiteral = 'Sign Up';
const signInLiteral = 'Sign In';
const emailAddressLiteral = 'Email Address';
const passwordLiteral = 'Password';
const confirmPasswordLiteral = 'Confirm Password';
const alreadyHaveAnAccountLiteral = 'Already have an account?';
const dontHaveAnAccountLiteral = "Don't have an account?";
const submitLiteral = 'Submit';
const logInLiteral = 'Log In';
const nextLiteral = 'Next';
const forgotPasswordLiteral = 'Forgot Password?';
const bioDataLiteral = 'Bio-data';
const fullNameLiteral = 'Full Name';
const addressLiteral = 'Address';
const phoneNumberLiteral = 'Phone number';
const dateOfBirthLiteral = 'Date of Birth';
const genderLiteral = 'Gender';
const bloodGroupLiteral = 'Blood Group';
const weightKgLiteral = 'Weight (Kg)';
const heightCmLiteral = 'Height (Cm)';
const doYouHaveAnyChronicMedicalConditionLiteral =
    'Do you have any chronic medial condition?';
const doYouHaveAFamilyHistoryOfCancerLiteral =
    'Do you have a family history of cancer?';
const maritalStatusLiteral = 'Marital Status';
const occupationLiteral = 'Occupation';
const maleLiteral = 'Male';
const femaleLiteral = 'Female';
const otherLiteral = 'Other';
const aLiteral = 'A';
const bLiteral = 'B';
const aBLiteral = 'AB';
const oLiteral = 'O';
const singleLiteral = 'Single';
const marriedLiteral = 'Married';
const divorcedLiteral = 'Divorced';
const widowedLiteral = 'Widowed';
const yesLiteral = 'Yes';
const noLiteral = 'No';
const notSureLiteral = 'Not sure';
const officeWorkerLiteral = 'Office Worker';
const factoryWorkerLiteral = 'Factory Worker';
const artisanWorkerLiteral = 'Artisan Worker';
const farmerLiteral = 'Farmer';
const howAreYouTodayLiteral = 'How are you today?';
const takeAssessmentLiteral = 'Take Assessment';
const enterValidInputLiteral = 'Enter a valid input';
const scheduleLiteral = 'Schedule';
const startLiteral = 'Start';
const stopLiteral = 'Stop';
const weigthLiteral = 'Weight';
const heightLiteral = 'Height';
const pulseLiteral = 'Pulse';
const eightFiveLiteral = '85';
const kgLiteral = 'KG';
const oneSevenThreeLiteral = '17.3';
const cmLiteral = 'CM';
const oneTwoTwoLiteral = '122';
const bpmLiteral = 'BPM';
const assessmentHintLiteral = 'mm/yyyy';
const homeLiteral = 'Home';
const historyLiteral = 'History';
const profileLiteral = 'Profile';
const settingLiteral = 'Setting';
const assessmentLiteral = 'Assessment';
const questionOneLiteral =
    'How often do you go for medical check-up in a month?';
const questionTwoLiteral =
    'Have you been diagnosed with any kind of disease before?';
const questionThreeLiteral = 'If yes, Specify which disease(s)';
const questionFourLiteral = 'Have you used any birth control pills before?';
const questionFiveLiteral = 'If yes, How many times in a month?';
const questionSixLiteral = 'Have you been pregnant before?';
const questionSevenLiteral = 'If yes, How many times?';
const questionEightLiteral = 'Are you breast feeding?';
const questionNineLiteral =
    'Have you ever been exposed to any form of radiation?';
const questionTenLiteral = 'Do you smoke cigarette?';
const questionElevenLiteral = 'If yes, How many times in a week?';
const questionTwelveLiteral = 'If you stopped, when did you start and stop?';
const questionThirteenLiteral = 'Do you drink alcohol?';
const questionFourteenLiteral = 'If yes, How many times in a week?';
const questionFifteenLiteral = 'Do you notice any changes in your breast?';
const questionSixteenLiteral =
    'Please follow the instructions to properly examine your breast for the following changes and respond accordingly';
const questionSeventeenHeaderLiteral = 'step 1';
const questionSeventeenLiteral = 'take off your clothes';
const questionEighteenHeaderLiteral = 'step 2';
const questionEighteenLiteral = 'Put your both hands behind your head';
const questionNineteenHeaderLiteral = 'step 3';
const questionNineteenLiteral =
    'Take you right hand and feel your left breast for abnormalities';
const questionTwentyHeaderLiteral = 'step 4';
const questionTwentyLiteral = 'Do the same for the right breast';
const questionTwentyOneLiteral = 'Do you feel any lump in your breast?';
const questionTwentyOneFooterLiteral = 'Visible Lump';
const questionTwentyTwoLiteral = 'Do you experience nipple retraction?';
const questionTwentyTwoFooterLiteral = 'Nipple Turning';
const questionTwentyThreeLiteral = 'Do you experience breast or nipple pain?';
const questionTwentyThreeFooterLiteral = 'Skin texture change';
const questionTwentyFourLiteral =
    'Have you noticed any discharge other than breast milk from the nipple?';
const questionTwentyFourFooterLiteral = 'Nipple Discharge';
const questionTwentyFiveLiteral =
    'Have you noticed any redness or irritation on your breast?';
const questionTwentyFiveFooterLiteral = 'Skin Irritation';
const questionTwentySixLiteral =
    'Have you noticed scaliness or thickening of the nipple or breast skin';
const questionTwentySixFooterLiteral = 'Dimpling';
const questionTwentySevenLiteral =
    'Do you have a personal doctor or family doctor?';
const questionTwentyEightLiteral =
    'Do you wish that your information is sent to your personal doctor or family doctor?';
const questionTwentyNineLiteral =
    'If yes, please fill in the information of your doctor';

// Special characters
const newLine = '\n';
const whiteSpace = ' ';
const emptyString = '';
const leadingBullet = '•';
