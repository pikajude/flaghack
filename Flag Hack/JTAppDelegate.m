//
//  JTAppDelegate.m
//  Flag Hack
//
//  Created by Joel on 1/4/13.
//  Copyright (c) 2013 Joel. All rights reserved.
//

#import "JTAppDelegate.h"

static NSString *countryName(NSString *country) {
    static NSDictionary *country_names;
    if(country_names == NULL)
        country_names = @{
        @"ad.png" : @"Andorra",
        @"ae.png" : @"United Arab Emirates",
        @"af.png" : @"Afghanistan",
        @"ag.png" : @"Antigua and Barbuda",
        @"ai.png" : @"Anguilla",
        @"al.png" : @"Albania",
        @"am.png" : @"Armenia",
        @"ao.png" : @"Angola",
        @"aq.png" : @"Antarctica",
        @"ar.png" : @"Argentina",
        @"as.png" : @"American Samoa",
        @"at.png" : @"Austria",
        @"au.png" : @"Australia",
        @"aw.png" : @"Aruba",
        @"ax.png" : @"Åland Islands",
        @"az.png" : @"Azerbaijan",
        @"ba.png" : @"Bosnia and Herzegovina",
        @"bb.png" : @"Barbados",
        @"bd.png" : @"Bangladesh",
        @"be.png" : @"Belgium",
        @"bf.png" : @"Burkina Faso",
        @"bg.png" : @"Bulgaria",
        @"bh.png" : @"Bahrain",
        @"bi.png" : @"Burundi",
        @"bj.png" : @"Benin",
        @"bl.png" : @"Saint Barthélemy",
        @"bm.png" : @"Bermuda",
        @"bn.png" : @"Brunei Darussalam",
        @"bo.png" : @"Bolivia",
        @"bq.png" : @"Bonaire",
        @"br.png" : @"Brazil",
        @"bs.png" : @"Bahamas",
        @"bt.png" : @"Bhutan",
        @"bv.png" : @"Bouvet Island",
        @"bw.png" : @"Botswana",
        @"by.png" : @"Belarus",
        @"bz.png" : @"Belize",
        @"ca.png" : @"Canada",
        @"cc.png" : @"Cocos Islands",
        @"cd.png" : @"Congo",
        @"cf.png" : @"Central African Republic",
        @"cg.png" : @"Congo",
        @"ch.png" : @"Switzerland",
        @"ci.png" : @"Côte d'Ivoire",
        @"ck.png" : @"Cook Islands",
        @"cl.png" : @"Chile",
        @"cm.png" : @"Cameroon",
        @"cn.png" : @"China",
        @"co.png" : @"Colombia",
        @"cr.png" : @"Costa Rica",
        @"cu.png" : @"Cuba",
        @"cv.png" : @"Cape Verde",
        @"cw.png" : @"Curaçao",
        @"cx.png" : @"Christmas Island",
        @"cy.png" : @"Cyprus",
        @"cz.png" : @"Czech Republic",
        @"de.png" : @"Germany",
        @"dj.png" : @"Djibouti",
        @"dk.png" : @"Denmark",
        @"dm.png" : @"Dominica",
        @"do.png" : @"Dominican Republic",
        @"dz.png" : @"Algeria",
        @"ec.png" : @"Ecuador",
        @"ee.png" : @"Estonia",
        @"eg.png" : @"Egypt",
        @"eh.png" : @"Western Sahara",
        @"er.png" : @"Eritrea",
        @"es.png" : @"Spain",
        @"et.png" : @"Ethiopia",
        @"fi.png" : @"Finland",
        @"fj.png" : @"Fiji",
        @"fk.png" : @"Falkland Islands",
        @"fm.png" : @"Micronesia",
        @"fo.png" : @"Faroe Islands",
        @"fr.png" : @"France",
        @"ga.png" : @"Gabon",
        @"gb.png" : @"United Kingdom",
        @"gd.png" : @"Grenada",
        @"ge.png" : @"Georgia",
        @"gf.png" : @"French Guiana",
        @"gg.png" : @"Guernsey",
        @"gh.png" : @"Ghana",
        @"gi.png" : @"Gibraltar",
        @"gl.png" : @"Greenland",
        @"gm.png" : @"Gambia",
        @"gn.png" : @"Guinea",
        @"gp.png" : @"Guadeloupe",
        @"gq.png" : @"Equatorial Guinea",
        @"gr.png" : @"Greece",
        @"gs.png" : @"South Georgia and the South Sandwich Islands",
        @"gt.png" : @"Guatemala",
        @"gu.png" : @"Guam",
        @"gw.png" : @"Guinea-Bissau",
        @"gy.png" : @"Guyana",
        @"hk.png" : @"Hong Kong",
        @"hm.png" : @"Heard Island and McDonald Islands",
        @"hn.png" : @"Honduras",
        @"hr.png" : @"Croatia",
        @"ht.png" : @"Haiti",
        @"hu.png" : @"Hungary",
        @"id.png" : @"Indonesia",
        @"ie.png" : @"Ireland",
        @"il.png" : @"Israel",
        @"im.png" : @"Isle of Man",
        @"in.png" : @"India",
        @"io.png" : @"British Indian Ocean Territory",
        @"iq.png" : @"Iraq",
        @"ir.png" : @"Iran",
        @"is.png" : @"Iceland",
        @"it.png" : @"Italy",
        @"je.png" : @"Jersey",
        @"jm.png" : @"Jamaica",
        @"jo.png" : @"Jordan",
        @"jp.png" : @"Japan",
        @"ke.png" : @"Kenya",
        @"kg.png" : @"Kyrgyzstan",
        @"kh.png" : @"Cambodia",
        @"ki.png" : @"Kiribati",
        @"km.png" : @"Comoros",
        @"kn.png" : @"Saint Kitts and Nevis",
        @"kp.png" : @"North Korea",
        @"kr.png" : @"South Korea",
        @"kw.png" : @"Kuwait",
        @"ky.png" : @"Cayman Islands",
        @"kz.png" : @"Kazakhstan",
        @"la.png" : @"Lao People's Democratic Republic",
        @"lb.png" : @"Lebanon",
        @"lc.png" : @"Saint Lucia",
        @"li.png" : @"Liechtenstein",
        @"lk.png" : @"Sri Lanka",
        @"lr.png" : @"Liberia",
        @"ls.png" : @"Lesotho",
        @"lt.png" : @"Lithuania",
        @"lu.png" : @"Luxembourg",
        @"lv.png" : @"Latvia",
        @"ly.png" : @"Libya",
        @"ma.png" : @"Morocco",
        @"mc.png" : @"Monaco",
        @"md.png" : @"Moldova",
        @"me.png" : @"Montenegro",
        @"mf.png" : @"Saint Martin",
        @"mg.png" : @"Madagascar",
        @"mh.png" : @"Marshall Islands",
        @"mk.png" : @"Macedonia",
        @"ml.png" : @"Mali",
        @"mm.png" : @"Myanmar",
        @"mn.png" : @"Mongolia",
        @"mo.png" : @"Macao",
        @"mp.png" : @"Northern Mariana Islands",
        @"mq.png" : @"Martinique",
        @"mr.png" : @"Mauritania",
        @"ms.png" : @"Montserrat",
        @"mt.png" : @"Malta",
        @"mu.png" : @"Mauritius",
        @"mv.png" : @"Maldives",
        @"mw.png" : @"Malawi",
        @"mx.png" : @"Mexico",
        @"my.png" : @"Malaysia",
        @"mz.png" : @"Mozambique",
        @"na.png" : @"Namibia",
        @"nc.png" : @"New Caledonia",
        @"ne.png" : @"Niger",
        @"nf.png" : @"Norfolk Island",
        @"ng.png" : @"Nigeria",
        @"ni.png" : @"Nicaragua",
        @"nl.png" : @"Netherlands",
        @"no.png" : @"Norway",
        @"np.png" : @"Nepal",
        @"nr.png" : @"Nauru",
        @"nu.png" : @"Niue",
        @"nz.png" : @"New Zealand",
        @"om.png" : @"Oman",
        @"pa.png" : @"Panama",
        @"pe.png" : @"Peru",
        @"pf.png" : @"French Polynesia",
        @"pg.png" : @"Papua New Guinea",
        @"ph.png" : @"Philippines",
        @"pk.png" : @"Pakistan",
        @"pl.png" : @"Poland",
        @"pm.png" : @"Saint Pierre and Miquelon",
        @"pn.png" : @"Pitcairn",
        @"pr.png" : @"Puerto Rico",
        @"ps.png" : @"Palestinian Territory",
        @"pt.png" : @"Portugal",
        @"pw.png" : @"Palau",
        @"py.png" : @"Paraguay",
        @"qa.png" : @"Qatar",
        @"re.png" : @"Réunion",
        @"ro.png" : @"Romania",
        @"rs.png" : @"Serbia",
        @"ru.png" : @"Russian Federation",
        @"rw.png" : @"Rwanda",
        @"sa.png" : @"Saudi Arabia",
        @"sb.png" : @"Solomon Islands",
        @"sc.png" : @"Seychelles",
        @"sd.png" : @"Sudan",
        @"se.png" : @"Sweden",
        @"sg.png" : @"Singapore",
        @"sh.png" : @"Saint Helena",
        @"si.png" : @"Slovenia",
        @"sj.png" : @"Svalbard and Jan Mayen",
        @"sk.png" : @"Slovakia",
        @"sl.png" : @"Sierra Leone",
        @"sm.png" : @"San Marino",
        @"sn.png" : @"Senegal",
        @"so.png" : @"Somalia",
        @"sr.png" : @"Suriname",
        @"ss.png" : @"South Sudan",
        @"st.png" : @"Sao Tome and Principe",
        @"sv.png" : @"El Salvador",
        @"sx.png" : @"Sint Maarten",
        @"sy.png" : @"Syrian Arab Republic",
        @"sz.png" : @"Swaziland",
        @"tc.png" : @"Turks and Caicos Islands",
        @"td.png" : @"Chad",
        @"tf.png" : @"French Southern Territories",
        @"tg.png" : @"Togo",
        @"th.png" : @"Thailand",
        @"tj.png" : @"Tajikistan",
        @"tk.png" : @"Tokelau",
        @"tl.png" : @"Timor-Leste",
        @"tm.png" : @"Turkmenistan",
        @"tn.png" : @"Tunisia",
        @"to.png" : @"Tonga",
        @"tr.png" : @"Turkey",
        @"tt.png" : @"Trinidad and Tobago",
        @"tv.png" : @"Tuvalu",
        @"tw.png" : @"Taiwan",
        @"tz.png" : @"Tanzania",
        @"ua.png" : @"Ukraine",
        @"ug.png" : @"Uganda",
        @"um.png" : @"United States Minor Outlying Islands",
        @"us.png" : @"United States",
        @"uy.png" : @"Uruguay",
        @"uz.png" : @"Uzbekistan",
        @"va.png" : @"Holy See",
        @"vc.png" : @"Saint Vincent and the Grenadines",
        @"ve.png" : @"Venezuela",
        @"vg.png" : @"Virgin Islands (British)",
        @"vi.png" : @"Virgin Islands (US)",
        @"vn.png" : @"Viet Nam",
        @"vu.png" : @"Vanuatu",
        @"wf.png" : @"Wallis and Futuna",
        @"ws.png" : @"Samoa",
        @"ye.png" : @"Yemen",
        @"yt.png" : @"Mayotte",
        @"za.png" : @"South Africa",
        @"zm.png" : @"Zambia",
        @"zw.png" : @"Zimbabwe"
        };
    return [country_names objectForKey:country] ?: [NSString stringWithFormat:@"Unknown (%@)", country];
}

static NSInteger compareTitles_f(id a, id b, void *_ctx) {
    return [[(NSMenuItem *)a title] compare:[(NSMenuItem *)b title]];
}

@implementation JTAppDelegate

- (void)dealloc
{
    [super dealloc];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    NSMutableArray *items = [NSMutableArray array];
    NSMenuItem *m;
    NSArray *icons = [[NSBundle mainBundle] URLsForResourcesWithExtension:@"png" subdirectory:nil];
    for(NSURL *url in icons) {
        m = [[[NSMenuItem alloc] init] autorelease];
        [m setTitle:countryName([url lastPathComponent])];
        [m setImage:[[[NSImage alloc] initWithContentsOfURL:url] autorelease]];
        [m setAction:@selector(pickCountry:)];
        [m setTarget:self];
        [m setRepresentedObject:[[url lastPathComponent] substringToIndex:2]];
        [items addObject:m];
    }
    [items sortUsingFunction:&compareTitles_f context:nil];
    for(NSMenuItem *obj in items) {
        [[[self countries] menu] addItem:obj];
    }
    
    [[self countries] selectItemAtIndex:0];
    [self refresh:nil];
    
    backupIdx = [[self countries] indexOfSelectedItem];
}

- (IBAction)refresh:(id)sender
{
    [[self countries] setEnabled:NO];
    
    [[self progInd] startAnimation:nil];
    
    [self performSelectorInBackground:@selector(selectCurrentCountry:) withObject:nil];
}

- (void)selectCurrentCountry:(id)sender
{
    @try {
        if ([[[[self countries] selectedItem] title] isEqualToString:@"Loading..."]) {
            [[self countries] removeItemAtIndex:0];
            [[self countries] removeItemAtIndex:0];
        }
        NSString *s = [JTCountryManager currentCountryCode];
        [[self countries] setEnabled:YES];
        NSInteger idx = [[self countries] indexOfItemWithRepresentedObject:s];
        [[self countries] selectItemAtIndex:idx];
        [[self progInd] stopAnimation:nil];
    } @catch (id _) {
        [self performSelectorOnMainThread:@selector(errorBegin:)
                               withObject:@"Can't find your haxball prefs file. This means you've never played haxball. Go do that."
                            waitUntilDone:YES];
    }
}

- (void)pickCountry:(NSMenuItem *)sender
{
    [[self progInd] startAnimation:nil];
    [[self countries] setEnabled:NO];
    [self performSelectorInBackground:@selector(changeCountry:) withObject:sender];
}

- (void)changeCountry:(NSMenuItem *)sender
{
    @try {
        [JTCountryManager updateCountryCode:[sender representedObject]];
        [[self progInd] stopAnimation:nil];
        [[self countries] setEnabled:YES];
    } @catch (id _) {
        [self performSelectorOnMainThread:@selector(errorBegin:)
                               withObject:@"Can't find Flash prefs folder! This means you've never visited haxball.com. Go do that."
                            waitUntilDone:YES];
    }
}

- (void)errorBegin:(NSString *)err
{
    [[NSAlert alertWithMessageText:@"Error!"
                     defaultButton:@"OK"
                   alternateButton:nil
                       otherButton:nil
         informativeTextWithFormat:@"%@", err]
        beginSheetModalForWindow:[self window]
                   modalDelegate:self
                  didEndSelector:@selector(errorCleanup)
                     contextInfo:nil];
}

- (void)errorCleanup
{
    [[NSApplication sharedApplication] terminate:nil];
}

@end
