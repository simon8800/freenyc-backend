# frozen_string_literal: true

# Faker::Lorem https://github.com/stympy/faker/blob/master/doc/default/lorem.md
# Faker::Address https://github.com/stympy/faker/blob/master/doc/default/address.md

############################## Categories ##############################
martial_arts = Category.create(name: 'Martial Arts')
foreign_language = Category.create(name: 'Foreign Language')

############################## Courses ##############################

############### City Wing Tsun Athletic Association https://www.citywt.com/ ###############
cwtaa = Course.create(
  title: 'CWTAA Intro Class',
  description: Faker::Lorem.paragraph,
  instructor: 'Alex Richter',
  url: 'https://www.citywt.com/'
)

cwtaa.category = martial_arts
cwtaa_address = Address.create(
  address_first: Faker::Address.street_address,
  address_second: Faker::Address.seconday_address,
  street: Faker::Address.street_name,
  city: Faker::Address.city,
  country: Faker::Address.country
)
cwtaa_address.course = cwtaa

cwtaa_1 = Image.create(
  name: 'BKWT',
  description: 'Instructor working with Student',
  url: 'https://static.wixstatic.com/media/79dbf0_a6fcbdaa072b426b9b08bae6a3d75bd5~mv2_d_5184_3456_s_4_2.jpg/v1/fill/w_633,h_422,fp_0.50_0.50,q_90/79dbf0_a6fcbdaa072b426b9b08bae6a3d75bd5~mv2_d_5184_3456_s_4_2.webp'
)
cwtaa_1.course = cwtaa

cwtaa_2 = Image.create(
  name: 'BKWT',
  description: 'Instructor working with Student',
  url: 'https://static.wixstatic.com/media/79dbf0_85a019b0ccee492481a9713a6912fecd~mv2_d_5038_3230_s_4_2.jpg/v1/fill/w_633,h_406,fp_0.50_0.50,q_90/79dbf0_85a019b0ccee492481a9713a6912fecd~mv2_d_5038_3230_s_4_2.webp'
)
cwtaa_2.course = cwtaa

############### Brooklyn Wing Tsun http://www.bkwingtsun.com/ ###############
bkwt = Course.create(
  title: 'BKWT Intro Class',
  description: Faker::Lorem.paragraph,
  instructor: 'Ethan Hampton',
  url: 'http://www.bkwingtsun.com/'
)
bkwt.category = martial_arts

bkwt_address = Address.create(
  address_first: Faker::Address.street_address,
  address_second: Faker::Address.seconday_address,
  street: Faker::Address.street_name,
  city: Faker::Address.city,
  country: Faker::Address.country
)

bkwt_address.course = bkwt

bkwt_1 = Image.create(
  name: 'BKWT',
  description: 'Instructor working with Student',
  url: 'https://static1.squarespace.com/static/586aaaa0197aeaa909309464/586ac12a20099e287cff878c/586ac12bbe659472708017d5/1483391275710/aaaa.jpg'
)
bkwt_1.course = bkwt
bkwt_2 = Image.create(
  name: 'BKWT',
  description: 'Instructor working with Student',
  url: 'https://static1.squarespace.com/static/586aaaa0197aeaa909309464/586ac12a20099e287cff878c/586ac12b6b8f5b6deb251135/1483391275545/dan_chi.jpg'
)
bkwt_2.course = bkwt

############### Mandarin Level 1 ###############
mandarin = Course.create(
  title: 'Mandarin Level 1',
  description: Faker::Lorem.paragraph,
  instructor: 'Simon Mei',
  url: 'http://alesn.org/'
)

mandarin.category = foreign_language

mandarin_address = Address.create(
  address_first: Faker::Address.street_address,
  address_second: Faker::Address.seconday_address,
  street: Faker::Address.street_name,
  city: Faker::Address.city,
  country: Faker::Address.country
)

mandarin_address.course = mandarin

mandarin_1 = Image.create(
  name: 'Pearl Tower',
  description: 'Pearl Tower. Huangpu Qu, China',
  url: 'https://images.pexels.com/photos/683419/pexels-photo-683419.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=550&w=550'
)
mandarin_1.course = mandarin

mandarin_2 = Image.create(
  name: 'Chinatown',
  description: 'Streets of Chinatown',
  url: 'https://images.pexels.com/photos/1115175/pexels-photo-1115175.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=550&w=550'
)
mandarin_2.course = mandarin
