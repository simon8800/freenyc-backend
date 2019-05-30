# frozen_string_literal: true

####################### NOTES #####################
# A course needs an address and category, and has multiple images
# Relationship with belongs_to needs to be initialized with whatever it belongs to
ny = "New York, NY"
############################## Categories ##############################
martial_arts = Category.create(name: 'Martial Arts')
foreign_language = Category.create(name: 'Foreign Language')
music = Category.create(name: 'Music')
fitness = Category.create(name: 'Fitness')
programming = Category.create(name: "Programming")

############################## Courses ##############################

######################## City Wing Tsun Athletic Association https://www.citywt.com/ ###############
cwtaa = Course.create(
  title: 'CWTAA Intro Class',
  short_description: 'Chinese Kung Fu',
  description: 'You can try a free intro class to Wing Tsun with City Wing Tsun.',
  instructor: 'Alex Richter',
  url: 'https://www.citywt.com/',
  category_id: martial_arts.id
)

# cwtaa.category = martial_arts
cwtaa_address = Address.create(
  address_first: '1024 6th Ave',
  address_second: '4 fl',
  city: 'New York, NY',
  course_id: cwtaa.id,
  zipcode: '10018',
  lat: 40.752370,
  lng: -73.985460
)

cwtaa_1 = Image.create(
  name: 'CWTAA',
  description: 'Instructor working with Student',
  url: 'https://static.wixstatic.com/media/79dbf0_a6fcbdaa072b426b9b08bae6a3d75bd5~mv2_d_5184_3456_s_4_2.jpg/v1/fill/w_633,h_422,fp_0.50_0.50,q_90/79dbf0_a6fcbdaa072b426b9b08bae6a3d75bd5~mv2_d_5184_3456_s_4_2.webp',
  course_id: cwtaa.id
)

cwtaa_2 = Image.create(
  name: 'CWTAA',
  description: 'Instructor working with Student',
  url: 'https://static.wixstatic.com/media/79dbf0_85a019b0ccee492481a9713a6912fecd~mv2_d_5038_3230_s_4_2.jpg/v1/fill/w_633,h_406,fp_0.50_0.50,q_90/79dbf0_85a019b0ccee492481a9713a6912fecd~mv2_d_5038_3230_s_4_2.webp',
  course_id: cwtaa.id
)

############################### Brooklyn Wing Tsun http://www.bkwingtsun.com/ ###############
bkwt = Course.create(
  title: 'BKWT Intro Class',
  short_description: 'Chinese Kung Fu',
  description: 'Try a free Intro to Wing Tsun class with Sifu Ethan Hampton at Brooklyn Wing Tsun!',
  instructor: 'Ethan Hampton',
  url: 'http://www.bkwingtsun.com/',
  category_id: martial_arts.id
)
# bkwt.category = martial_arts

bkwt_address = Address.create(
  address_first: '808 Union St',
  address_second: '2nd flr',
  city: 'Brooklyn, NY',
  course_id: bkwt.id,
  zipcode: '11215',
  lat: 40.674470,
  lng: -73.975820
)

bkwt_1 = Image.create(
  name: 'BKWT',
  description: 'Instructor working with Student',
  url: 'https://static1.squarespace.com/static/586aaaa0197aeaa909309464/586ac12a20099e287cff878c/586ac12bbe659472708017d5/1483391275710/aaaa.jpg',
  course_id: bkwt.id
)
bkwt_2 = Image.create(
  name: 'BKWT',
  description: 'Instructor working with Student',
  url: 'https://static1.squarespace.com/static/586aaaa0197aeaa909309464/586ac12a20099e287cff878c/586ac12b6b8f5b6deb251135/1483391275545/dan_chi.jpg',
  course_id: bkwt.id
)

############################################ Mandarin Level 1 ###############
mandarin = Course.create(
  title: 'Mandarin Level 1',
  short_description: 'Beginner Mandarin',
  description: 'Learn basic Mandarin for greeting, traveling, and more day-to-day phrases',
  instructor: 'Staff',
  url: 'http://alesn.org/',
  category_id: foreign_language.id
)

mandarin_address = Address.create(
  address_first: '100 Hester St',
  address_second: '',
  city: 'New York, NY',
  course_id: mandarin.id,
  zipcode: '10002',
  lat: 40.716450,
  lng: -73.993530
)

mandarin_1 = Image.create(
  name: 'Pearl Tower',
  description: 'Pearl Tower. Huangpu Qu, China',
  url: 'https://images.pexels.com/photos/683419/pexels-photo-683419.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=550&w=550',
  course_id: mandarin.id
)

mandarin_2 = Image.create(
  name: 'Chinatown',
  description: 'Streets of Chinatown',
  url: 'https://images.pexels.com/photos/1115175/pexels-photo-1115175.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=550&w=550',
  course_id: mandarin.id
)

#################### Guitar ######################
guitar = Course.create(
  title: "Guitar",
  short_description: "Learn to play Guitar",
  description: "Classes on Saturday from 12:30PM - 2:00PM. Just bring an ID! Brought to you by ALESN, the Asian Language Exchange and Social Network powered by volunteers.",
  instructor: "Staff",
  url: "http://alesn.org/",
  category_id: music.id
)

guitar_address = Address.create(
  address_first: '100 Hester St',
  address_second: '',
  city: 'New York, NY',
  course_id: guitar.id,
  zipcode: '10002',
  lat: 40.716450,
  lng: -73.993530
)

guitar_1 = Image.create(
  name: "Guitar",
  description: "Person strumming a guitar",
  url: 'https://images.pexels.com/photos/1407322/pexels-photo-1407322.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  course_id: guitar.id
)

guitar_2 = Image.create(
  name: "Guitar",
  description: "Person strumming a guitar",
  url: 'https://images.pexels.com/photos/164809/pexels-photo-164809.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  course_id: guitar.id
)

########### Yoga to the People ##############
yttp = Course.create(
  title: "Yoga to the People" ,
  category_id: fitness.id,
  short_description: "Power Vinyasa Flow Yoga",
  description: "All power vinyasa classes are $10 suggested cash donation.  $2 mat rental and $1 water available. Classes are 60 minutes unless otherwise noted. They have locations all across Manhattan and one location in Brooklyn.",
  instructor: "Staff",
  url: "https://yogatothepeople.com/"
)

yttp_address_1 = Address.create(
  address_first: "211 N. 11th Street",
  address_second: "2nd Floor",
  city: "Brooklyn, NY",
  course_id: yttp.id,
  zipcode: 11211,
  lat: 40.718837,
  lng: -73.953198
)

yttp_address_2 = Address.create(
  address_first: "12 Saint Marks Place",
  address_second: "2R",
  city: "New York, NY",
  course_id: yttp.id,
  zipcode: 10003,
  lat: 40.729113,
  lng: -73.989239
)

yttp_address_3 = Address.create(
  address_first: "115 W. 27th Street",
  address_second: "3rd Floor",
  city: "New York, NY",
  course_id: yttp.id,
  zipcode: 10001,
  lat: 40.745872,
  lng: -73.991778
)

yttp_address_4 = Address.create(
  address_first: "1017 6th Avenue",
  address_second: "38th Street, 3rd Fl",
  city: ny,
  course_id: yttp.id,
  zipcode: 10018,
  lat: 40.752351,
  lng: -73.986282
)

yttp_address_5 = Address.create(
  address_first: "2710 Broadway",
  address_second: "3rd Floor",
  city: ny,
  course_id: yttp.id,
  zipcode: 10025,
  lat: 40.799500,
  lng: -73.968036
)

yttp_image_1 = Image.create(
  name: "Two People Practicing Yoga",
  course_id: yttp.id,
  description: "Man and Woman Doing Yoga",
  url: "https://images.pexels.com/photos/1882004/pexels-photo-1882004.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260"
)
yttp_image_2 = Image.create(
  name: "Man doing Yoga",
  course_id: yttp.id,
  description: "Man wearing tanktop and shorts practicing yoga on a mat.",
  url: "https://images.pexels.com/photos/892681/pexels-photo-892681.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260"
)

falun_dafa = Course.create(
  title: "Falun Dafa with Tianti Books",
  category_id: fitness.id,
  short_description: "Buddhist Practice for Self-Cultivation",
  description: "Their Mission: Tianti offers programs to the general public to improve their wellbeing. It is our honer to serve you with our mission. You are welcome to Tianti to learn about Falun Dafa and join our mediation classes.",
  instructor: "Staff",
  url: "https://www.tiantibooks.org/pages/classes-workshops"
)

falun_dafa_address = Address.create(
  address_first: "535 8th Avenue",
  city: ny,
  course_id: falun_dafa.id,
  zipcode: 10018,
  lat: 40.754014,
  lng: -73.992549
)

falun_dafa_image_1 = Image.create(
  name: "Falun Dafa Practicioners",
  course_id: falun_dafa.id,
  description: "Falun Dafa practitioners participate in a World Falun Dafa Day activity at Union Square, New York City, on May 11, 2017. (Samira Bouaou/The Epoch Times)",
  url: "https://www.theepochtimes.com/assets/uploads/2017/05/11/20170511-FalunDafaDay-SamiraBouaou-3836-3.jpg"
)
falun_dafa_image_2 = Image.create(
  name: "Woman practicing Falun Dafa",
  course_id: falun_dafa.id,
  description: "Falun Dafa practitioners meditate during the World Falun Dafa Day event at Union Square, New York City, on May 11, 2017. (Samira Bouaou/The Epoch Times)",
  url: "https://www.theepochtimes.com/assets/uploads/2017/05/11/20170511-FalunDafaDay-SamiraBouaou-3909-3.jpg"
)

python_meetup = Course.create(
  title: "Learn Python Meetup in Brooklyn",
  category_id: programming.id,
  short_description: "Learn to Program in Python",
  description: "Learn Python NYC is open to developers of any background and skill level. Newcomers to programming, Python, or NYC are all welcome, as well as experienced programmers and locals. The purpose of this group is to promote learning and community involvement within the NYC Python community.",
  instructor: "Gene Callahan",
  url: "https://www.meetup.com/learn-python-nyc/"
)

python_meetup_address = Address.create(
  address_first: "5 MetroTech Center",
  city: "Brooklyn, NY",
  course_id: python_meetup.id,
  zipcode: 11201, 
  lat: 40.694576,
  lng: -73.985030
)
python_meetup_image_1 = Image.create(
  name: "Saturday Study Group",
  course_id: python_meetup.id,
  description: "A group of people sitting at a table with their laptops programming.",
  url: "https://secure.meetupstatic.com/photos/event/c/1/5/8/highres_436429496.jpeg"
)

python_meetup_image_2 = Image.create(
  name: "Intro to Data Analysis Meetup",
  course_id: python_meetup.id,
  description: "A large group of people sitting at tables with their laptops learning data analysis.",
  url: "https://secure.meetupstatic.com/photos/event/7/9/9/4/highres_447271124.jpeg"
)

japanese_meetup = Course.create(
  title: "New York Japanese and English Language Exchange Meetup",
  category_id: foreign_language.id,
  short_description: "Meetup for those practicing English and Japanese.",
  description: "For those who practice English and Japanese. The meetup is held in Midtown East near Grand central station - basically, every Saturday morning from 9 am at a coffee shop. This is a very casual meetup where it's more self-organized by participants.",
  instructor: "Participants",
  url: "https://www.meetup.com/New-York-Japanese-and-English-Language-Exchange-Meetup/"
)

japanese_meetup_address = Address.create(
  address_first: "99 Park Ave",
  city: ny,
  course_id: japanese_meetup.id,
  zipcode: 10016, 
  lat: 40.747051,
  lng: -73.981263
)

japanese_meetup_image_1 = Image.create(
  name: "Two People Learning English/Japanese",
  course_id: japanese_meetup.id,
  description: "Two cartoon characters depicted as exchanging knowledge of English and Japanese language.",
  url: "https://secure.meetupstatic.com/photos/event/8/7/9/d/600_480094717.jpeg"
)

japanese_meetup_image_2 = Image.create(
  name: "Pret A Manager",
  course_id: japanese_meetup.id,
  description: "Photo of Pret A Manager Store taken from the outside.",
  url: "https://secure.meetupstatic.com/photos/event/4/6/7/600_481681127.jpeg"
)

# course_name = Course.create(
#   title:,
#   category_id:,
#   short_description:,
#   description:,
#   instructor:,
#   url:
# )

# address = Address.create(
  #   address_first:,
  #   address_second:,
  #   city:,
  #   course_id:,
#   zipcode:, 
#   lat:,
#   lng:
# )

# image = Image.create(
  #   name:,
  #   course_id: ,
  #   description:,
#   url:
# )