// By @CrazyMind90

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>



#pragma GCC diagnostic ignored "-Wunused-variable"
#pragma GCC diagnostic ignored "-Wprotocol"
#pragma GCC diagnostic ignored "-Wmacro-redefined"
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#pragma GCC diagnostic ignored "-Wincomplete-implementation"
#pragma GCC diagnostic ignored "-Wunknown-pragmas"
#pragma GCC diagnostic ignored "-Wformat"
#pragma GCC diagnostic ignored "-Wunknown-warning-option"
#pragma GCC diagnostic ignored "-Wincompatible-pointer-types"
#pragma GCC diagnostic ignored "-Wunused-value"
#pragma GCC diagnostic ignored "-Wunused-function"





NSString* getISOCodeFromCountryName(NSString *countryName) {
    // All ISO 3166-1 alpha-2 country codes
    NSDictionary *countryToISO = @{
        // A
        @"Afghanistan": @"AF",
        @"Åland Islands": @"AX",
        @"Albania": @"AL",
        @"Algeria": @"DZ",
        @"American Samoa": @"AS",
        @"Andorra": @"AD",
        @"Angola": @"AO",
        @"Anguilla": @"AI",
        @"Antarctica": @"AQ",
        @"Antigua and Barbuda": @"AG",
        @"Argentina": @"AR",
        @"Armenia": @"AM",
        @"Aruba": @"AW",
        @"Australia": @"AU",
        @"Austria": @"AT",
        @"Azerbaijan": @"AZ",
        
        // B
        @"Bahamas": @"BS",
        @"Bahrain": @"BH",
        @"Bangladesh": @"BD",
        @"Barbados": @"BB",
        @"Belarus": @"BY",
        @"Belgium": @"BE",
        @"Belize": @"BZ",
        @"Benin": @"BJ",
        @"Bermuda": @"BM",
        @"Bhutan": @"BT",
        @"Bolivia": @"BO",
        @"Bosnia and Herzegovina": @"BA",
        @"Botswana": @"BW",
        @"Bouvet Island": @"BV",
        @"Brazil": @"BR",
        @"British Indian Ocean Territory": @"IO",
        @"Brunei": @"BN",
        @"Brunei Darussalam": @"BN",
        @"Bulgaria": @"BG",
        @"Burkina Faso": @"BF",
        @"Burundi": @"BI",
        
        // C
        @"Cambodia": @"KH",
        @"Cameroon": @"CM",
        @"Canada": @"CA",
        @"Cape Verde": @"CV",
        @"Cayman Islands": @"KY",
        @"Central African Republic": @"CF",
        @"Chad": @"TD",
        @"Chile": @"CL",
        @"China": @"CN",
        @"Christmas Island": @"CX",
        @"Cocos (Keeling) Islands": @"CC",
        @"Colombia": @"CO",
        @"Comoros": @"KM",
        @"Congo": @"CG",
        @"Congo, Democratic Republic": @"CD",
        @"Cook Islands": @"CK",
        @"Costa Rica": @"CR",
        @"Côte d'Ivoire": @"CI",
        @"Ivory Coast": @"CI",
        @"Croatia": @"HR",
        @"Cuba": @"CU",
        @"Cyprus": @"CY",
        @"Czech Republic": @"CZ",
        @"Czechia": @"CZ",
        
        // D
        @"Denmark": @"DK",
        @"Djibouti": @"DJ",
        @"Dominica": @"DM",
        @"Dominican Republic": @"DO",
        
        // E
        @"Ecuador": @"EC",
        @"Egypt": @"EG",
        @"El Salvador": @"SV",
        @"Equatorial Guinea": @"GQ",
        @"Eritrea": @"ER",
        @"Estonia": @"EE",
        @"Ethiopia": @"ET",
        
        // F
        @"Falkland Islands": @"FK",
        @"Faroe Islands": @"FO",
        @"Fiji": @"FJ",
        @"Finland": @"FI",
        @"France": @"FR",
        @"French Guiana": @"GF",
        @"French Polynesia": @"PF",
        @"French Southern Territories": @"TF",
        
        // G
        @"Gabon": @"GA",
        @"Gambia": @"GM",
        @"Georgia": @"GE",
        @"Germany": @"DE",
        @"Ghana": @"GH",
        @"Gibraltar": @"GI",
        @"Greece": @"GR",
        @"Greenland": @"GL",
        @"Grenada": @"GD",
        @"Guadeloupe": @"GP",
        @"Guam": @"GU",
        @"Guatemala": @"GT",
        @"Guernsey": @"GG",
        @"Guinea": @"GN",
        @"Guinea-Bissau": @"GW",
        @"Guyana": @"GY",
        
        // H
        @"Haiti": @"HT",
        @"Heard Island and McDonald Islands": @"HM",
        @"Holy See": @"VA",
        @"Vatican": @"VA",
        @"Honduras": @"HN",
        @"Hong Kong": @"HK",
        @"Hungary": @"HU",
        
        // I
        @"Iceland": @"IS",
        @"India": @"IN",
        @"Indonesia": @"ID",
        @"Iran": @"IR",
        @"Iraq": @"IQ",
        @"Ireland": @"IE",
        @"Isle of Man": @"IM",
        @"Israel": @"IL",
        @"Italy": @"IT",
        
        // J
        @"Jamaica": @"JM",
        @"Japan": @"JP",
        @"Jersey": @"JE",
        @"Jordan": @"JO",
        
        // K
        @"Kazakhstan": @"KZ",
        @"Kenya": @"KE",
        @"Kiribati": @"KI",
        @"North Korea": @"KP",
        @"South Korea": @"KR",
        @"Korea, Republic of": @"KR",
        @"Kuwait": @"KW",
        @"Kyrgyzstan": @"KG",
        
        // L
        @"Laos": @"LA",
        @"Latvia": @"LV",
        @"Lebanon": @"LB",
        @"Lesotho": @"LS",
        @"Liberia": @"LR",
        @"Libya": @"LY",
        @"Liechtenstein": @"LI",
        @"Lithuania": @"LT",
        @"Luxembourg": @"LU",
        
        // M
        @"Macao": @"MO",
        @"Macau": @"MO",
        @"Macedonia": @"MK",
        @"North Macedonia": @"MK",
        @"Madagascar": @"MG",
        @"Malawi": @"MW",
        @"Malaysia": @"MY",
        @"Maldives": @"MV",
        @"Mali": @"ML",
        @"Malta": @"MT",
        @"Marshall Islands": @"MH",
        @"Martinique": @"MQ",
        @"Mauritania": @"MR",
        @"Mauritius": @"MU",
        @"Mayotte": @"YT",
        @"Mexico": @"MX",
        @"Micronesia": @"FM",
        @"Moldova": @"MD",
        @"Monaco": @"MC",
        @"Mongolia": @"MN",
        @"Montenegro": @"ME",
        @"Montserrat": @"MS",
        @"Morocco": @"MA",
        @"Mozambique": @"MZ",
        @"Myanmar": @"MM",
        @"Burma": @"MM",
        
        // N
        @"Namibia": @"NA",
        @"Nauru": @"NR",
        @"Nepal": @"NP",
        @"Netherlands": @"NL",
        @"New Caledonia": @"NC",
        @"New Zealand": @"NZ",
        @"Nicaragua": @"NI",
        @"Niger": @"NE",
        @"Nigeria": @"NG",
        @"Niue": @"NU",
        @"Norfolk Island": @"NF",
        @"Northern Mariana Islands": @"MP",
        @"Norway": @"NO",
        
        // O
        @"Oman": @"OM",
        
        // P
        @"Pakistan": @"PK",
        @"Palau": @"PW",
        @"Palestine": @"PS",
        @"Panama": @"PA",
        @"Papua New Guinea": @"PG",
        @"Paraguay": @"PY",
        @"Peru": @"PE",
        @"Philippines": @"PH",
        @"Pitcairn": @"PN",
        @"Poland": @"PL",
        @"Portugal": @"PT",
        @"Puerto Rico": @"PR",
        
        // Q
        @"Qatar": @"QA",
        
        // R
        @"Réunion": @"RE",
        @"Reunion": @"RE",
        @"Romania": @"RO",
        @"Russia": @"RU",
        @"Russian Federation": @"RU",
        @"Rwanda": @"RW",
        
        // S
        @"Saint Barthélemy": @"BL",
        @"Saint Helena": @"SH",
        @"Saint Kitts and Nevis": @"KN",
        @"Saint Lucia": @"LC",
        @"Saint Martin": @"MF",
        @"Saint Pierre and Miquelon": @"PM",
        @"Saint Vincent and the Grenadines": @"VC",
        @"Samoa": @"WS",
        @"San Marino": @"SM",
        @"Sao Tome and Principe": @"ST",
        @"Saudi Arabia": @"SA",
        @"Senegal": @"SN",
        @"Serbia": @"RS",
        @"Seychelles": @"SC",
        @"Sierra Leone": @"SL",
        @"Singapore": @"SG",
        @"Sint Maarten": @"SX",
        @"Slovakia": @"SK",
        @"Slovenia": @"SI",
        @"Solomon Islands": @"SB",
        @"Somalia": @"SO",
        @"South Africa": @"ZA",
        @"South Georgia and the South Sandwich Islands": @"GS",
        @"South Sudan": @"SS",
        @"Spain": @"ES",
        @"Sri Lanka": @"LK",
        @"Sudan": @"SD",
        @"Suriname": @"SR",
        @"Svalbard and Jan Mayen": @"SJ",
        @"Swaziland": @"SZ",
        @"Eswatini": @"SZ",
        @"Sweden": @"SE",
        @"Switzerland": @"CH",
        @"Syria": @"SY",
        @"Syrian Arab Republic": @"SY",
        
        // T
        @"Taiwan": @"TW",
        @"Tajikistan": @"TJ",
        @"Tanzania": @"TZ",
        @"Thailand": @"TH",
        @"Timor-Leste": @"TL",
        @"East Timor": @"TL",
        @"Togo": @"TG",
        @"Tokelau": @"TK",
        @"Tonga": @"TO",
        @"Trinidad and Tobago": @"TT",
        @"Tunisia": @"TN",
        @"Turkey": @"TR",
        @"Türkiye": @"TR",
        @"Turkmenistan": @"TM",
        @"Turks and Caicos Islands": @"TC",
        @"Tuvalu": @"TV",
        
        // U
        @"Uganda": @"UG",
        @"Ukraine": @"UA",
        @"United Arab Emirates": @"AE",
        @"UAE": @"AE",
        @"United Kingdom": @"GB",
        @"United States": @"US",
        @"USA": @"US",
        @"United States Minor Outlying Islands": @"UM",
        @"Uruguay": @"UY",
        @"Uzbekistan": @"UZ",
        
        // V
        @"Vanuatu": @"VU",
        @"Venezuela": @"VE",
        @"Vietnam": @"VN",
        @"Viet Nam": @"VN",
        @"Virgin Islands, British": @"VG",
        @"Virgin Islands, U.S.": @"VI",
        
        // W
        @"Wallis and Futuna": @"WF",
        @"Western Sahara": @"EH",
        
        // Y
        @"Yemen": @"YE",
        
        // Z
        @"Zambia": @"ZM",
        @"Zimbabwe": @"ZW",
    };
    
    NSString *isoCode = countryToISO[countryName];
    return isoCode ? isoCode : @"UN"; // Default to UN flag if not found
}
NSString *emojiFlagForISOCountryCode(NSString *countryCode) {

    if (countryCode.length < 2)
    countryCode = @"UN";

    int base = 127462 -65;

    wchar_t bytes[2] = {
        base +[countryCode characterAtIndex:0],
        base +[countryCode characterAtIndex:1]
    };

    return [[NSString alloc] initWithBytes:bytes
                                    length:countryCode.length *sizeof(wchar_t)
                                  encoding:NSUTF32LittleEndianStringEncoding];
}

static NSString *kProfileDataReceivedNotification = @"ProfileDataReceivedNotification";

static NSString *userProfileAbout = @"/UserProfileAbout?";
%hook NSURLSession
-(NSURLSessionDataTask *) dataTaskWithRequest:(NSURLRequest *)request {
 
    if ([request.URL.absoluteString containsString:userProfileAbout]) { 
        NSURLSessionDataTask *task = [self dataTaskWithRequest:request 
            completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                
            if (data) {
                NSError *jsonError;
                NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data 
                                                                     options:0 
                                                                       error:&jsonError];
                
                if (!jsonError && json) {
                    NSDictionary *aboutProfile = json[@"data"][@"user_result_by_rest_id"][@"result"][@"about_profile"];
                    
                    if (aboutProfile) {
                        NSMutableDictionary *profileData = [NSMutableDictionary dictionary];
                        
                        // Account Based In
                        if (aboutProfile[@"account_based_in"]) {
                            profileData[@"account_based_in"] = aboutProfile[@"account_based_in"];
                        }
                        
                        // Source
                        if (aboutProfile[@"source"]) {
                            profileData[@"source"] = aboutProfile[@"source"];
                        }
                        
                        // Verified Since
                        if (aboutProfile[@"verified_since_msec"]) {
                            long long timestamp = [aboutProfile[@"verified_since_msec"] longLongValue];
                            NSDate *verifiedDate = [NSDate dateWithTimeIntervalSince1970:(timestamp/1000.0)];
                            NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
                            [formatter setDateFormat:@"yyyy-MM-dd h:mm:ss a"];
                            NSString *readableDate = [formatter stringFromDate:verifiedDate];
                            
                            NSDate *now = [NSDate date];
                            NSTimeInterval interval = [now timeIntervalSinceDate:verifiedDate];
                            int daysAgo = (int)(interval / (60 * 60 * 24));
                            
                            profileData[@"verified_since"] = [NSString stringWithFormat:@"%@ (%d days ago)", readableDate, daysAgo];
                        }
                        
                        // Username Changes
                        NSDictionary *usernameChanges = aboutProfile[@"username_changes"];
                        if (usernameChanges) {
                            NSString *changesCount = [usernameChanges[@"count"] stringValue];
                            if (changesCount) {
                                profileData[@"username_changes_count"] = changesCount;
                            }
                            
                            if (usernameChanges[@"last_changed_at_msec"]) {
                                long long lastChangedTimestamp = [usernameChanges[@"last_changed_at_msec"] longLongValue];
                                NSDate *lastChangedDate = [NSDate dateWithTimeIntervalSince1970:(lastChangedTimestamp/1000.0)];
                                NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
                                [formatter setDateFormat:@"yyyy-MM-dd h:mm:ss a"];
                                NSString *lastChangedReadable = [formatter stringFromDate:lastChangedDate];
                                
                                NSDate *now = [NSDate date];
                                NSTimeInterval interval = [now timeIntervalSinceDate:lastChangedDate];
                                int daysAgo = (int)(interval / (60 * 60 * 24));
                                
                                profileData[@"username_last_changed"] = [NSString stringWithFormat:@"%@ (%d days ago)", lastChangedReadable, daysAgo];
                            }
                        }
                        
                        // Location Accurate
                        if (aboutProfile[@"location_accurate"]) {
                            profileData[@"location_accurate"] = [aboutProfile[@"location_accurate"] boolValue] ? @"YES" : @"NO";
                        }
                        
                        // Post notification with data
                        dispatch_async(dispatch_get_main_queue(), ^{
                            [[NSNotificationCenter defaultCenter] postNotificationName:kProfileDataReceivedNotification
                                                                                object:nil
                                                                              userInfo:profileData];
                        });
                    }
                }
            }
        }];
        
        return task;
    }
    
    return %orig;
}
%end



// Hook from "BHTwitter/NeoFreeBird"
%hook T1ProfileHeaderViewController
- (void)viewDidAppear:(_Bool)arg1 {
    %orig(arg1);
    
    T1ProfileHeaderView *headerView = [self valueForKey:@"_headerView"];
    UIView *innerContentView = [headerView.actionButtonsView valueForKey:@"_innerContentView"];
    
    UIView *existingButton = [headerView.actionButtonsView viewWithTag:9002];
    if (existingButton) {
        [existingButton removeFromSuperview];
    }
    
    [[NSNotificationCenter defaultCenter] addObserverForName:kProfileDataReceivedNotification
                                                       object:nil
                                                        queue:[NSOperationQueue mainQueue]
                                                   usingBlock:^(NSNotification *notification) {
        
        NSDictionary *profileData = notification.userInfo;
        
        UIButton *flagButton = [UIButton buttonWithType:UIButtonTypeCustom];
        
        NSString *countryName = profileData[@"account_based_in"];
        NSString *flagEmoji = emojiFlagForISOCountryCode(getISOCodeFromCountryName(countryName));

        [flagButton setTitle:flagEmoji forState:UIControlStateNormal];
        flagButton.titleLabel.font = [UIFont systemFontOfSize:20];
        flagButton.tag = 9002;
        
        [flagButton setShowsMenuAsPrimaryAction:true];
        
        NSMutableArray *actions = [NSMutableArray array];

        // Account Based In
        if (profileData[@"account_based_in"]) {
            UIAction *basedInAction = [UIAction actionWithTitle:profileData[@"account_based_in"]
                                                        image:nil
                                                    identifier:nil
                                                        handler:^(__kindof UIAction * _Nonnull action) {
                UIPasteboard.generalPasteboard.string = profileData[@"account_based_in"];
            }];
            
            UIMenu *basedInSection = [UIMenu menuWithTitle:@"Based In"
                                                    image:nil
                                                identifier:nil
                                                options:UIMenuOptionsDisplayInline
                                                children:@[basedInAction]];
            [actions addObject:basedInSection];
        }

        // Source
        if (profileData[@"source"]) {
            UIAction *sourceAction = [UIAction actionWithTitle:profileData[@"source"]
                                                        image:nil
                                                    identifier:nil
                                                    handler:^(__kindof UIAction * _Nonnull action) {
                UIPasteboard.generalPasteboard.string = profileData[@"source"];
            }];
            
            UIMenu *sourceSection = [UIMenu menuWithTitle:@"Source"
                                                    image:nil
                                            identifier:nil
                                                options:UIMenuOptionsDisplayInline
                                                children:@[sourceAction]];
            [actions addObject:sourceSection];
        }

        // Verified Since
        if (profileData[@"verified_since"]) {
            UIAction *verifiedAction = [UIAction actionWithTitle:profileData[@"verified_since"]
                                                        image:nil
                                                    identifier:nil
                                                        handler:^(__kindof UIAction * _Nonnull action) {
                UIPasteboard.generalPasteboard.string = profileData[@"verified_since"];
            }];
            
            UIMenu *verifiedSection = [UIMenu menuWithTitle:@"Verified Since"
                                                    image:nil
                                                identifier:nil
                                                    options:UIMenuOptionsDisplayInline
                                                children:@[verifiedAction]];
            [actions addObject:verifiedSection];
        }

        // Username Changes Count
        if (profileData[@"username_changes_count"]) {
            UIAction *changesAction = [UIAction actionWithTitle:profileData[@"username_changes_count"]
                                                        image:nil
                                                    identifier:nil
                                                        handler:^(__kindof UIAction * _Nonnull action) {
                UIPasteboard.generalPasteboard.string = profileData[@"username_changes_count"];
            }];
            
            UIMenu *changesSection = [UIMenu menuWithTitle:@"Username Changes"
                                                    image:nil
                                                identifier:nil
                                                options:UIMenuOptionsDisplayInline
                                                children:@[changesAction]];
            [actions addObject:changesSection];
        }

        // Last Username Change
        if (profileData[@"username_last_changed"]) {
            UIAction *lastChangedAction = [UIAction actionWithTitle:profileData[@"username_last_changed"]
                                                            image:nil
                                                        identifier:nil
                                                            handler:^(__kindof UIAction * _Nonnull action) {
                UIPasteboard.generalPasteboard.string = profileData[@"username_last_changed"];
            }];
            
            UIMenu *lastChangedSection = [UIMenu menuWithTitle:@"Last Username Change"
                                                        image:nil
                                                    identifier:nil
                                                    options:UIMenuOptionsDisplayInline
                                                    children:@[lastChangedAction]];
            [actions addObject:lastChangedSection];
        }

        // Location Accurate
        if (profileData[@"location_accurate"]) {
            UIAction *locationAction = [UIAction actionWithTitle:profileData[@"location_accurate"]
                                                        image:nil
                                                    identifier:nil
                                                        handler:^(__kindof UIAction * _Nonnull action) {
                UIPasteboard.generalPasteboard.string = profileData[@"location_accurate"];
            }];
            
            UIMenu *locationSection = [UIMenu menuWithTitle:@"Location Accurate"
                                                    image:nil
                                                identifier:nil
                                                    options:UIMenuOptionsDisplayInline
                                                children:@[locationAction]];
            [actions addObject:locationSection];
        }
        
        BOOL location_accurate = NO;
        if (profileData[@"location_accurate"]) {
            location_accurate = [profileData[@"location_accurate"] isEqualToString:@"YES"];
        }

        [flagButton setMenu:[UIMenu menuWithTitle:NULL children:actions]];
        
        [flagButton setTintColor:UIColor.labelColor];
        [flagButton.layer setCornerRadius:32.0/2.0];
        [flagButton.layer setBorderWidth:1.0];
        [flagButton.layer setBorderColor:location_accurate ? [UIColor colorFromHexString:@"00A36C"].CGColor : [UIColor colorFromHexString:@"2F3336"].CGColor]; 
        [flagButton setTranslatesAutoresizingMaskIntoConstraints:false];
        [headerView.actionButtonsView addSubview:flagButton];
        
        [NSLayoutConstraint activateConstraints:@[
            [flagButton.centerYAnchor constraintEqualToAnchor:headerView.actionButtonsView.centerYAnchor],
            [flagButton.widthAnchor constraintEqualToConstant:32.0],
            [flagButton.heightAnchor constraintEqualToConstant:32.0],
        ]];
        
        if (isDeviceLanguageRTL()) {
            [NSLayoutConstraint activateConstraints:@[
                [flagButton.leadingAnchor constraintEqualToAnchor:innerContentView.trailingAnchor constant:47.0],
            ]];
        } else {
            [NSLayoutConstraint activateConstraints:@[
                [flagButton.trailingAnchor constraintEqualToAnchor:innerContentView.leadingAnchor constant:-47.0],
            ]];
        }
    }];
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    %orig;
}