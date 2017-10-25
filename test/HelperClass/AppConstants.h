//
//  AppConstants.h
//  test
//
//  Created by Rameshwar Gupta on 25/10/17.
//  Copyright © 2017 Rameshwar Gupta. All rights reserved.
//

#ifndef AppConstants_h
#define AppConstants_h



// Image Constants 

static NSString *const  kIMG_BG                   = @"background.png";
static NSString *const  kIMG_BACKBUTTON                   = @"back";
static NSString *const  kIMG_MENUBUTTON                   = @"menu";

static NSString *const  kIMG_CARTBUTTON                   = @"cart";


static NSString *const  kIMG_SEARCHBUTTON                   = @"search";

static NSString *const  kIMG_LIKEBUTTON                   = @"wishlist";


static NSString *const  kIMG_EMAIL                = @"email";

static NSString *const  kIMG_PWD                  = @"pwd";
static NSString *const  kIMG_PHONE                = @"phone";
static NSString *const  kIMG_ADDRESS              = @"address";
static NSString *const  kIMG_SALON_NAME           = @"salon_name";
static NSString *const  kIMG_YOUR_NAME              = @"yourname";

static NSString *const  kIMG_ZIPCODE                = @"radar";



//
// Customer Support Details
static NSString *const  kIMG_SUPPORT_MOBILE_NUMBER   = @"1800-245-6879";
static NSString *const  kIMG_SUPPORT_EMAILID         = @"support@testbooking.com";




// COLORS CONSTANTS 

static NSString *const  kCOLOR_NAV                             = @"#00B3E4";
static NSString *const  kCOLOR_DASHBOARD_TOPBAR                             = @"#14253A";
static NSString *const  kCOLOR_DASHBOARD_TOPBAR_TITLE                             = @"#D0E2FA";
static NSString *const  kCOLOR_DETAIL_SEPARATOR                             = @"#F9671E";
static NSString *const kCOLOR_BUTTONRED  = @"#F9671E";
//#
static NSString *const  kCOLOR_MENU      = @"#0D0F1E";
static NSString *const  kCOLOR_PENDING_YELLOW = @"#E5AF3C";
static NSString *const  kCOLOR_BLUE_BUTTON = @"#2870AB";



#define kCOLOR_LOADERBG [UIColor colorWithRed:0.0/255.0 green:0.0/255.0 blue:0.0/255.0 alpha:0.6]
#define  kCOLOR_WHITE       [UIColor whiteColor]
#define  kCOLOR_BLACK       [UIColor blackColor]
#define  kCOLOR_CLEAR       [UIColor clearColor]
#define  kCOLOR_DARKGRAY    [UIColor darkGrayColor]
#define  kCOLOR_GRAY        [UIColor grayColor]
#define  kCOLOR_LIGHT_GRAY  [UIColor lightGrayColor]
#define  kCOLOR_RED         [UIColor redColor]
#define  kCOLOR_GREEN       [UIColor greenColor]
#define  kCOLOR_BLUE        [UIColor blueColor]
#define  kCOLOR_CYAN        [UIColor cyanColor]
#define  kCOLOR_YELLOW      [UIColor yellowColor]
#define  kCOLOR_MANGENTA    [UIColor magentaColor]
#define  kCOLOR_ORANGE      [UIColor orangeColor]
#define  kCOLOR_PURPLE      [UIColor purpleColor]
#define  kCOLOR_BROWN       [UIColor brownColor]



static NSString *const kAPPICATION_TITLE        = @"Test App";
static NSString *const kPasswordMissmatch       = @"Password Missmatch!";
static NSString *const kLastName                = @"Please enter a valid Last name.";
static NSString *const kFirstName               = @"Please enter a valid First name.";
static NSString *const kUserName                = @"Please enter a valid User name.";
static NSString *const kPassword                = @"Please enter your password.";
static NSString *const kLOGOUT_CONFIRMATION     = @"Are you sure you want to logout?";
static NSString *const kLOGOUT                  = @"You have successfully logged out.";
static NSString *const kCNG_PWD                 = @"Change password";
static NSString *const kPHONE_NUMBER            = @"Phone number would be 10 digits.";
static NSString *const kLOGIN_USER_DATA         = @"user_info";
static NSString *const kCancel                  = @"CANCEL";
static NSString *const kLOGOUT_BUTTON           = @"Logout";
static NSString *const kOK                      = @"OK";


static NSString *const kMSG_ADD                 = @"Address would be minimum 2 characters.";
static NSString *const kPwdLengh                = @"Password would be minimum 6 characters.";
static NSString *const kMSG_SALON_NAME          = @"Salon name would be minimum 2 characters.";
static NSString *const kMSG_NAME                = @"Name would be minimum 2 characters.";
static NSString *const kEmptyFields             = @"Fields can't be blank!";
static NSString *const kEmail_Validate          = @"Please enter a valid Email ID!";
static NSString *const kLOGIN                   = @"Login";


//****************************** FONTS

static NSString *const  kFONT_REGULAR            = @"HelveticaNeue";
static NSString *const  kFONT_BOLD                    = @"HelveticaNeue-Bold";
static NSString *const  kFONT_MEDIUM               = @"HelveticaNeue-Medium";




#define INTERNAL_ERROR               @"There is an error.Please try again."
#define INTERNET_MESSAGE             @"Internet connection is not available. Please check your wifi setting or cellular data."
#define LOCATION_INVALID             @"Please enter valid address."
#define SlowInternet                 @"Your internet connection is very slow.PLease tr again later."
#define EmailExisted                 @"Email Id/Username does not exist."
#define EMAIL_VALIDATE               @"Enter valid email id."
#define AccountUnAuthenticated       @"Please enter valid e-mail and password"
#define REQUIRED_FIELDS              @"All fields are mandatory."
#define MOBILE_NUMBER_INVALID        @"Mobile number is not valid."
#define PASSWORD_VALIDTION           @"Password should be minimum of 6 characters."
#define PASSWORD_MATCHES             @"Password & confirm password should be same."



// Hight and width of Screen
#define kSCREEN_WIDTH ([[UIScreen mainScreen] bounds].size.width)
#define kSCREEN_HEIGHT ([[UIScreen mainScreen] bounds].size.height)
#define textFieldPaddingValue 50

#define navigationBarHeight 64






//************** Custom Medthods for ViewControllers  *************************

#define IS_NSArray_Class(array)         [array isKindOfClass:[NSArray class]]

#define IS_NSNull_Class(value)          [value isKindOfClass:[NSNull class]]
#define IS_NSDictinory_Class(dict)      [dict isKindOfClass:[NSDictionary class]]

#define IS_NSArrrayClass(dict)          [dict isKindOfClass:[NSArray class]]


#define NSUSERDEFAULT_SET_OBJECT(object, key) \
[[NSUserDefaults standardUserDefaults] setObject:object forKey:key]; \
[[NSUserDefaults standardUserDefaults] synchronize]; \

#define NSUSERDEFAULT_GET_OBJECT(key)      [[NSUserDefaults standardUserDefaults] valueForKey:key]

#define GET_VIEW_CONTROLLER(viewController) [self.storyboard instantiateViewControllerWithIdentifier:viewController]


#define GET_VIEW_CONTROLLER_STORYBOARD(viewController) [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:viewController]

#define SET_IMAGE(img) [UIImage imageNamed:img]

#ifdef DEBUG
#   define DLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
#else
#    define DLog(...)

#endif

#define kPayPalEnvironment PayPalEnvironmentSandbox

#define isNull(value) value == nil || [value isKindOfClass:[NSNull class]]


#define UIAppDelegate \
((AppDelegate *)[UIApplication sharedApplication].delegate)

#define GOBACK                              [self.navigationController popViewControllerAnimated:YES]

#define GOBACK_ROOT                         [self.navigationController popToRootViewControllerAnimated:YES];

#define PRESENT_VIEW_CONTOLLER(viewController,animation) [self.navigationController presentViewController:viewController animated:animation completion:nil];

#define MOVE_VIEW_CONTROLLER(viewController,animation)    [self.navigationController pushViewController:viewController animated:animation];

#define kNETWORK_PROBLEM    [RCGLOBAL alertControllerTitle:kAPPICATION_TITLE msg:INTERNET_MESSAGE ok:kOK controller:self.navigationController];



#define DISMISS_VIEW_CONTROLLER             [self.navigationController dismissViewControllerAnimated:YES completion:nil];

#define  SYNCHRONIZED   [[NSUserDefaults standardUserDefaults]synchronize];

#define        VIDEO_LENGTH                        5


#define SYSTEM_VERSION_EQUAL_TO(v)                  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedSame)
#define SYSTEM_VERSION_GREATER_THAN(v)              ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN(v)                 ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v)     ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedDescending)



//********************* Story Board Identifier*****************//


static NSString *const  kSBI_WELCOME_VC     = @"RCWelcomeViewController";
static NSString *const  kSBI_LOGIN_VC       = @"RCLoginVC";
static NSString *const  kSBI_REGISTER_VC    = @"RCRegisterViewController";
static NSString *const  kSBI_MY_SALON_VC    = @"MySalonViewController";
static NSString *const  kSBI_MENU_VC        = @"MenuViewController";
static NSString *const  kSBI_BOOKING_HISTORY_VC  = @"RCBookingHistoryViewController";
static NSString *const  kSBI_BOOKING_ACCEPTED_HISTORY_VC  = @"AcceptedHistoryViewController";
static NSString *const  kSBI_BOOKING_DENIED_HISTORY_VC  = @"DeniedHistoryViewController";
static NSString *const  kSBI_BOOKING_COMPLETED_HISTORY_VC  = @"CompeledHistoryViewController";
static NSString *const  kSBI_CHNAGE_PWD_VC  = @"ChangePasswordViewController";
static NSString *const  kSBI_DETAILS_HISTORY_VC  = @"BookingDetailsViewController";
static NSString *const  kSBI_HELP_VC  = @"HelpViewController";
static NSString *const  kSBI_REVIEW_RATTINGS_VC  = @"ReviewRattingVCViewController";


// USER PROFILE
static NSString *const  kSBI_USER_DASHBOARD_VC  = @"RCDashboardVC";
static NSString *const  kSBI_USER_FIND_N_BOOK_VC  = @"FindNBookViewController";

static NSString *const  kSBI_USER_FIND_N_BOOK_CAT_VC  = @"FindBooksCategoryViewController";

static NSString *const  kSBI_USER_FAVORITE_SALON_VC  = @"FavoriteSalonViewController";

static NSString *const  kSBI_SETTINGS_VC  = @"SettingsViewController";

static NSString *const  kSBI_EDIT_PROFILE_VC  = @"EditProfileViewController";

static NSString *const  kSBI_FORGOT_PWD_VC  = @"ForgotPasswordViewController";

#define kUSER_ID                                  @"id"
#define kUSER_EMAIL                               @"email"
#define kUSER_PASSWORD                            @"password"


#endif /* AppConstants_h */
