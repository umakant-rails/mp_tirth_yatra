district_array = ["Agar Malwa", "Alirajpur", "Anuppur", "Ashok Nagar", "Balaghat", "Barwani", "Betul", "Bhind", 
  "Bhopal", "Burhanpur", "Chhatarpur", "Chhindwara", "Damoh", "Datia", "Dewas", "Dhar", "Dindori", "Guna", 
  "Gwalior", "Harda", "Hoshangabad", "Indore", "Jabalpur", "Jhabua", "Katni", "Khandwa", 
  "Khargone", "Mandla", "Mandsaur", "Morena", "Narsinghpur", "Neemuch", "Panna", "Raisen", 
  "Rajgarh", "Ratlam", "Rewa", "Sagar", "Satna", "Sehore", "Seoni", "Shahdol", "Shajapur", "Sheopur", "Shivpuri", 
  "Sidhi", "Singrauli", "Tikamgarh", "Ujjain", "Umaria", "Vidisha"
];

district_array.each { | district | District.create!(name: district) if District.where(name: district).blank?}


tehsil_list = [{ district:"Morena",  tehsil:"Ambah"}, { district:"Bhind",  tehsil:"Ater"}, { district:"Sheopur",  tehsil:"Vijaypur"}, { district:"Gwalior",  tehsil:"Gird"}, { district:"Shivpuri",  tehsil:"Pohari"}, { district:"Guna",  tehsil:"Isagarh"}, { district:"Tikamgarh",  tehsil:"Niwari"}, { district:"Chhatarpur",  tehsil:"Gaurihar"}, { district:"Sagar",  tehsil:"Bina"}, { district:"Panna",  tehsil:"Ajaigarh"}, { district:"Damoh",  tehsil:"Hatta"}, { district:"Satna",  tehsil:"Raghurajnagar"}, { district:"Rewa",  tehsil:"Teonthar"}, { district:"Umaria",  tehsil:"Bandhogarh"}, { district:"Shahdol",  tehsil:"Beohari"}, { district:"Sidhi",  tehsil:"Rampur Naikin"}, { district:"Datia",  tehsil:"Seondha"}, { district:"Neemuch",  tehsil:"Jawad"}, { district:"Mandsaur",  tehsil:"Bhanpura"}, { district:"Ratlam",  tehsil:"Piploda"}, { district:"Ujjain",  tehsil:"Khacharod"}, { district:"Agar Malwa",  tehsil:"Susner"}, { district:"Jhabua",  tehsil:"Thandla"}, { district:"Dewas",  tehsil:"Tonk Khurd"}, { district:"Dhar",  tehsil:"Badnawar"}, { district:"Khargone",  tehsil:"Barwaha"}, { district:"Indore",  tehsil:"Depalpur"}, { district:"Barwani",  tehsil:"Barwani"}, { district:"Khandwa",  tehsil:"Harsud"}, { district:"Rajgarh",  tehsil:"Jirapur"}, { district:"Vidisha",  tehsil:"Lateri"}, { district:"Sehore",  tehsil:"Sehore"}, { district:"Raisen",  tehsil:"Raisen"}, { district:"Betul",  tehsil:"Bhainsdehi"}, { district:"Bhopal",  tehsil:"Berasia"}, { district:"Harda",  tehsil:"Khirkiya"}, { district:"Hoshangabad",  tehsil:"Seoni-Malwa"}, { district:"Katni",  tehsil:"Murwara"}, { district:"Jabalpur",  tehsil:"Sihora"}, { district:"Narsinghpur",  tehsil:"Gotegaon"}, { district:"Mandla",  tehsil:"Niwas"}, { district:"Chhindwara",  tehsil:"Tamia"}, { district:"Balaghat",  tehsil:"Katangi"}, { district:"Seoni",  tehsil:"Lakhnadon"}, { district:"Burhanpur",  tehsil:"Nepa Nagar"}, { district:"Dindori",  tehsil:"Shahpura"}, { district:"Singrauli",  tehsil:"Mada"}, { district:"Dindori",  tehsil:"Dindori "}, { district:"Burhanpur",  tehsil:"Burhanpur"}, { district:"Seoni",  tehsil:"Ghansor"},
  { district:"Balaghat",  tehsil:"Waraseoni"}, { district:"Chhindwara",  tehsil:"Amarwara"}, { district:"Mandla",  tehsil:"Mandla"}, { district:"Narsinghpur",  tehsil:"Gadarwara"}, { district:"Jabalpur",  tehsil:"Patan"}, { district:"Katni",  tehsil:"Vijayraghavgarh"}, { district:"Hoshangabad",  tehsil:"Itarsi"}, { district:"Harda",  tehsil:"Harda"}, { district:"Bhopal",  tehsil:"Huzur"}, { district:"Betul",  tehsil:"Betul "}, { district:"Raisen",  tehsil:"Gairatganj"}, { district:"Sehore",  tehsil:"Ashta"}, { district:"Vidisha",  tehsil:"Sironj"}, { district:"Rajgarh",  tehsil:"Khilchipur"}, { district:"Khandwa",  tehsil:"Khandwa"}, { district:"Barwani",  tehsil:"Thikri"}, { district:"Indore",  tehsil:"Sawer"}, { district:"Khargone",  tehsil:"Maheshwar"}, { district:"Dhar",  tehsil:"Sardarpur"}, { district:"Dewas",  tehsil:"Sonkatch"}, { district:"Jhabua",  tehsil:"Petlawad"}, { district:"Agar Malwa",  tehsil:"Agar"},{ district:"Agar Malwa",  tehsil:"Nalkheda"}, { district:"Ujjain",  tehsil:"Nagda"}, { district:"Ratlam",  tehsil:"Jaora"}, { district:"Mandsaur",  tehsil:"Malhargarh"}, { district:"Neemuch",  tehsil:"Neemuch"}, { district:"Datia",  tehsil:"Datia"}, { district:"Sidhi",  tehsil:"Churhat"}, { district:"Shahdol",  tehsil:"Jaisinghnagar"}, { district:"Rewa",  tehsil:"Sirmour"}, { district:"Satna",  tehsil:"Nagod"}, { district:"Damoh",  tehsil:"Patera"}, { district:"Panna",  tehsil:"Panna"}, { district:"Sagar",  tehsil:"Khurai"}, { district:"Chhatarpur",  tehsil:"Laundi"}, { district:"Tikamgarh",  tehsil:"Prithvipur"}, { district:"Guna",  tehsil:"Chanderi"}, { district:"Shivpuri",  tehsil:"Shivpuri"}, { district:"Gwalior",  tehsil:"Dabra"}, { district:"Sheopur",  tehsil:"Sheopur"}, { district:"Bhind",  tehsil:"Bhind"}, { district:"Morena",  tehsil:"Porsa"}, { district:"Morena",  tehsil:"Morena"}, { district:"Bhind",  tehsil:"Mehgaon"}, { district:"Sheopur",  tehsil:"Karahal"}, { district:"Gwalior",  tehsil:"Bhitarwar"}, { district:"Shivpuri",  tehsil:"Narwar"}, { district:"Guna",  tehsil:"Guna"}, { district:"Tikamgarh",  tehsil:"Jatara"}, { district:"Chhatarpur",  tehsil:"Nowgaon"},
  { district:"Sagar",  tehsil:"Banda"}, { district:"Panna",  tehsil:"Gunnor"}, { district:"Damoh",  tehsil:"Batiyagarh"}, { district:"Satna",  tehsil:"Unchehara"}, { district:"Rewa",  tehsil:"Hanumana"}, { district:"Shahdol",  tehsil:"Sohagpur"}, { district:"Sidhi",  tehsil:"Gopadbanas"}, { district:"Datia",  tehsil:"Bhander"}, { district:"Neemuch",  tehsil:"Manasa"}, { district:"Mandsaur",  tehsil:"Garoth"}, { district:"Ratlam",  tehsil:"Alot"}, { district:"Ujjain",  tehsil:"Mahidpur"}, { district:"Agar Malwa",  tehsil:"Badod"}, { district:"Jhabua",  tehsil:"Meghnagar"}, { district:"Dewas",  tehsil:"Dewas"}, { district:"Dhar",  tehsil:"Dhar"}, { district:"Khargone",  tehsil:"Kasrawad"}, { district:"Indore",  tehsil:"Indore"}, { district:"Barwani",  tehsil:"Rajpur"}, { district:"Khandwa",  tehsil:"Pandhana"}, { district:"Rajgarh",  tehsil:"Rajgarh"}, { district:"Vidisha",  tehsil:"Kurwai"}, { district:"Sehore",  tehsil:"Ichhawar"}, { district:"Raisen",  tehsil:"Begamganj"}, { district:"Betul",  tehsil:"Shahpur"}, { district:"Harda",  tehsil:"Timarni"}, { district:"Hoshangabad",  tehsil:"Hoshangabad"}, { district:"Katni",  tehsil:"Bahoriband"}, { district:"Jabalpur",  tehsil:"Jabalpur"}, { district:"Narsinghpur",  tehsil:"Narsinghpur"}, { district:"Mandla",  tehsil:"Bichhiya"}, { district:"Chhindwara",  tehsil:"Chaurai"}, { district:"Balaghat",  tehsil:"Balaghat"}, { district:"Seoni",  tehsil:"Keolari"}, { district:"Burhanpur",  tehsil:"Khaknar"}, { district:"Seoni",  tehsil:"Seoni"}, { district:"Gwalior",  tehsil:"Chinore"}, { district:"Balaghat",  tehsil:"Kirnapur"}, { district:"Chhindwara",  tehsil:"Jamai"}, { district:"Mandla",  tehsil:"Nainpur"}, { district:"Narsinghpur",  tehsil:"Kareli"}, { district:"Jabalpur",  tehsil:"Kundam"}, { district:"Katni",  tehsil:"Dhimar Kheda"}, { district:"Hoshangabad",  tehsil:"Babai"}, { district:"Betul",  tehsil:"Multai"}, { district:"Raisen",  tehsil:"Goharganj"}, { district:"Sehore",  tehsil:"Nasrullaganj"}, { district:"Vidisha",  tehsil:"Basoda"}, { district:"Rajgarh",  tehsil:"Biaora"}, { district:"Khandwa",  tehsil:"Burhanpur"},
  { district:"Barwani",  tehsil:"Pansemal"}, { district:"Indore",  tehsil:"Mhow "}, { district:"Khargone",  tehsil:"Segaon"}, { district:"Dhar",  tehsil:"Gandhwani"}, { district:"Dewas",  tehsil:"Kannod"}, { district:"Jhabua",  tehsil:"Jhabua"}, { district:"Shajapur",  tehsil:"Agar"}, { district:"Ujjain",  tehsil:"Ghatiya"}, { district:"Ratlam",  tehsil:"Sailana"}, { district:"Mandsaur",  tehsil:"Mandsaur"}, { district:"Sidhi",  tehsil:"Sihawal"}, { district:"Shahdol",  tehsil:"Jaitpur"}, { district:"Rewa",  tehsil:"Mauganj"}, { district:"Satna",  tehsil:"Rampur-Baghelan"}, { district:"Damoh",  tehsil:"Patharia"}, { district:"Panna",  tehsil:"Pawai"}, { district:"Sagar",  tehsil:"Rahatgarh"}, { district:"Chhatarpur",  tehsil:"Chhatarpur"}, { district:"Tikamgarh",  tehsil:"Palera"}, { district:"Guna",  tehsil:"Ashok Nagar"}, { district:"Shivpuri",  tehsil:"Karera"}, { district:"Bhind",  tehsil:"Gohad"}, { district:"Morena",  tehsil:"Joura"}, { district:"Morena",  tehsil:"Kailaras"}, { district:"Bhind",  tehsil:"Ron"}, { district:"Shivpuri",  tehsil:"Kolaras"}, { district:"Guna",  tehsil:"Raghogarh"}, { district:"Tikamgarh",  tehsil:"Baldeogarh"}, { district:"Chhatarpur",  tehsil:"Rajnagar"}, { district:"Sagar",  tehsil:"Sagar"}, { district:"Panna",  tehsil:"Shahnagar"}, { district:"Damoh",  tehsil:"Damoh"}, { district:"Satna",  tehsil:"Amarpatan"}, { district:"Rewa",  tehsil:"Huzur"}, { district:"Shahdol",  tehsil:"Kotma"}, { district:"Singrauli",  tehsil:"Chitrangi"}, { district:"Mandsaur",  tehsil:"Sitamau"}, { district:"Ratlam",  tehsil:"Bajna"}, { district:"Ujjain",  tehsil:"Tarana"}, { district:"Shajapur",  tehsil:"Shajapur"}, { district:"Alirajpur",  tehsil:"Bhavra"}, { district:"Dewas",  tehsil:"Bagli"}, { district:"Dhar",  tehsil:"Kukshi"}, { district:"Khargone",  tehsil:"Bhikangaon"}, { district:"Barwani",  tehsil:"Niwali"}, { district:"Khandwa",  tehsil:"Nepanagar"}, { district:"Rajgarh",  tehsil:"Sarangpur"}, { district:"Vidisha",  tehsil:"Nateran"}, { district:"Sehore",  tehsil:"Budni"}, { district:"Raisen",  tehsil:"Baraily"},
  { district:"Betul",  tehsil:"Amla"}, { district:"Hoshangabad",  tehsil:"Sohagpur"}, { district:"Narsinghpur",  tehsil:"Tendukheda"}, { district:"Chhindwara",  tehsil:"Parasia"}, { district:"Balaghat",  tehsil:"Baihar"}, { district:"Katni",  tehsil:"Barwara"}, { district:"Seoni",  tehsil:"Barghat"}, { district:"Seoni",  tehsil:"Kurai"}, { district:"Katni",  tehsil:"Barhi"}, { district:"Balaghat",  tehsil:"Lanji"}, { district:"Chhindwara",  tehsil:"Chhindwara"}, { district:"Hoshangabad",  tehsil:"Pipariya"}, { district:"Raisen",  tehsil:"Silwani"}, { district:"Vidisha",  tehsil:"Gyaraspur"}, { district:"Rajgarh",  tehsil:"Narsinghgarh"}, { district:"Barwani",  tehsil:"Sendhwa"}, { district:"Khargone",  tehsil:"Khargone"}, { district:"Dhar",  tehsil:"Manawar"}, { district:"Dewas",  tehsil:"Khategaon"}, { district:"Alirajpur",  tehsil:"Jobat"}, { district:"Shajapur",  tehsil:"Moman Badodiya"}, { district:"Ujjain",  tehsil:"Ujjain"}, { district:"Ratlam",  tehsil:"Ratlam"}, { district:"Singrauli",  tehsil:"Deosar"}, { district:"Shahdol",  tehsil:"Anuppur"}, { district:"Rewa",  tehsil:"Raipur Karchuliyan"}, { district:"Satna",  tehsil:"Ramnagar"}, { district:"Damoh",  tehsil:"Jabera"}, { district:"Sagar",  tehsil:"Garhakota"}, { district:"Chhatarpur",  tehsil:"Bada-Malhera"}, { district:"Tikamgarh",  tehsil:"Tikamgarh"}, { district:"Guna",  tehsil:"Mungaoli"}, { district:"Shivpuri",  tehsil:"Pichhore"}, { district:"Bhind",  tehsil:"Mihona"}, { district:"Morena",  tehsil:"Sabalgarh"}, { district:"Bhind",  tehsil:"Lahar"}, { district:"Shivpuri",  tehsil:"Khaniyadhana"}, { district:"Guna",  tehsil:"Kumbhraj"}, { district:"Chhatarpur",  tehsil:"Bijawar"}, { district:"Sagar",  tehsil:"Rehli"}, { district:"Damoh",  tehsil:"Tendukheda"}, { district:"Satna",  tehsil:"Maihar"}, { district:"Rewa",  tehsil:"Gurh"}, { district:"Shahdol",  tehsil:"Jaithari"}, { district:"Sidhi",  tehsil:"Majhauli"}, { district:"Ujjain",  tehsil:"Badnagar"}, { district:"Shajapur",  tehsil:"Shujalpur"}, { district:"Alirajpur",  tehsil:"Alirajpur"}, { district:"Dhar",  tehsil:"Dharampuri"}, { district:"Khargone",  tehsil:"Bhagwanpura"},
  { district:"Vidisha",  tehsil:"Vidisha"}, { district:"Raisen",  tehsil:"Udaipura"}, { district:"Hoshangabad",  tehsil:"Bankhedi"}, { district:"Chhindwara",  tehsil:"Sausar"}, { district:"Katni",  tehsil:"Rithi"}, { district:"Chhindwara",  tehsil:"Bichhua"}, { district:"Khargone",  tehsil:"Jhiranya"}, { district:"Jhabua",  tehsil:"Ranapur"}, { district:"Shajapur",  tehsil:"Kalapipal"}, { district:"Sidhi",  tehsil:"Kusmi"}, { district:"Shahdol",  tehsil:"Pushprajgarh"}, { district:"Sagar",  tehsil:"Kesli"}, { district:"Guna",  tehsil:"Aron"}, { district:"Guna",  tehsil:"Chachaura"}, { district:"Sagar",  tehsil:"Deori"}, { district:"Singrauli",  tehsil:"Singrauli"}, { district:"Chhindwara",  tehsil:"Pandhurna"}, { district:"Singrauli",  tehsil:"Sarai"}, { district:"Ashok Nagar",  tehsil:"Ashok Nagar"}, { district:"Khandwa",  tehsil:"Khandwa"}, { district:"Khandwa",  tehsil:"Punasa"}, { district:"Ashok Nagar",  tehsil:"Essaragh"}, { district:"Anuppur",  tehsil:"Anuppur"}, { district:"Anuppur",  tehsil:"Jaithari"}, { district:"Anuppur",  tehsil:"Kotma"}, { district:"Anuppur",  tehsil:"Pushprajgarh"}, { district:"Ashok Nagar",  tehsil:"Chanderi"}, { district:"Khandwa",  tehsil:"Harsud"}, { district:"Khandwa",  tehsil:"Pandhana"}, { district:"Ashok Nagar",  tehsil:"Mungaoli"}, { district:"Ashok Nagar",  tehsil:"Shadora"}, { district:"Khandwa",  tehsil:"Khalwa"}]

tehsil_list.each do |tehsil |
  
  count = 1
  email = tehsil[:tehsil].downcase.sub(" ", "_") + "@gmail.com"
  tehsil_password = tehsil[:tehsil].downcase
  
  district = District.where(name: tehsil[:district]).first
  tehsil_obj = User.where(email: email).first || User.where(user_name: tehsil[:tehsil].downcase.sub(" ", "_")).first
  
  while tehsil_password.length < 8
    tehsil_password = tehsil_password + count.to_s
    count = count + 1
  end
  if tehsil_obj.blank?
    User.create!(user_name: tehsil[:tehsil].downcase.sub(" ", "_"), district_id: district.id, email: email, 
      password: tehsil_password, password_confirmation: tehsil_password)
  end
  puts "Date entered for Tehsil : " + tehsil[:tehsil]
end

