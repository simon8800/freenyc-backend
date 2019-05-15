# frozen_string_literal: true

####################### NOTES #####################
# A course needs an address and category, and has multiple images
# Relationship with belongs_to needs to be initialized with whatever it belongs to

############################## Categories ##############################
martial_arts = Category.create(name: 'Martial Arts')
foreign_language = Category.create(name: 'Foreign Language')

############################## Courses ##############################

######################## City Wing Tsun Athletic Association https://www.citywt.com/ ###############
cwtaa = Course.create(
  title: 'CWTAA Intro Class',
  description: 'Learn to protect yourself with Wing Tsun',
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
  zipcode: '10018'
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
  description: 'Learn to protect yourself with Wing Tsun',
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
  zipcode: '11215'
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
  description: 'Learn beginner Mandarin',
  instructor: 'Staff',
  url: 'http://alesn.org/',
  category_id: foreign_language.id
)

mandarin_address = Address.create(
  address_first: '100 Hester St',
  address_second: '',
  city: 'New York, NY',
  course_id: mandarin.id,
  zipcode: '10002'
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
