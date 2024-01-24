
import 'dart:ui';
import 'package:bike_specs/model/bikes.dart';
import 'package:flutter/material.dart';
import 'package:bike_specs/model/bike_category.dart';
import 'package:bike_specs/screen/bike_category_grid_screen.dart';

var availableCategories = [
  const CateGory(
      id: 'c1',
      name: 'Yamaha',
      color: Colors.redAccent
  ),

  const CateGory(
      id: 'c2',
      name: 'Honda',
      color: Colors.blueAccent
  ),

  const CateGory(
      id: 'c3',
      name: 'Harley-Davidson',
      color: Colors.orange
  ),

  const CateGory(
      id: 'c4',
      name: 'BMW',
      color: Colors.grey
  ),

  const CateGory(
      id: 'c5',
      name: 'Kawasaki',
      color: Colors.cyanAccent
  ),

  const CateGory(
      id: 'c6',
      name: 'Ducati',
      color: Colors.amberAccent
  ),

  const CateGory(
      id: 'c7',
      name: 'KTM',
      color: Colors.blueGrey
  ),

  const CateGory(
      id: 'c8',
      name: 'Suzuki',
      color: Colors.greenAccent
  ),

  const CateGory(
      id: 'c9',
      name: 'Bajaj',
      color: Colors.yellowAccent
  ),

  const CateGory(
      id: 'c10',
      name: 'TVS',
      color: Colors.tealAccent
  ),

  const CateGory(
      id: 'c11',
      name: 'Hero',
      color: Colors.purpleAccent
  ),

  const CateGory(
      id: 'c12',
      name: 'Royal-Enfield',
      color: Colors.limeAccent
  ),

  const CateGory(
      id: 'c13',
      name: 'Aprilia',
      color: Colors.deepOrangeAccent
  ),

  const CateGory(
      id: 'c4',
      name: 'Benneli',
      color: Colors.indigoAccent
  ),

  const CateGory(
      id: 'c15',
      name: 'Taro Bangla',
      color: Colors.pinkAccent
  ),

  const CateGory(
      id: 'c15',
      name: 'Lifan',
      color: Colors.indigo
  ),


];

var bikes = [
  const Bike_Model(
      id: 'b1',
      categories: [
        'c1'
      ],
      title: 'R15 M',
      affordability: Affordability.luxurious,
      complexity: Complexity.challenging,
      imageURL: 'https://www.banglamotor.net/images/yamaha/yamaha-r15m-image02.jpg',
      bikeCategory : 'Sports',
      price: '610,000',
      ingredients: [
        '2-Wheeler Type -	Sports',
        'Engine cc (Displacement)	155 cc',
        'Maximum Power	18.4 HP @ 10,000 rpm',
        'Maximum Torque	14.2 Nm @ 7,500 rpm',
        'Number of Cylinders	1',
        'Number of Gears	6',
        'Seat Height	815 mm',
        'Ground Clearance	170 mm',
        'Kerb Weight	141 kg',
        'Fuel Tank Capacity	11 litres'

      ],
      steps: 'The Yamaha R15M is an excellent choice for those looking for an entry-level bike that offers'
          ' a great balance between performance and affordability. The engine is powerful and responsive,'
          ' with plenty of power for everyday and weekend rides. The bike comes with a host of features such as ABS,'
          ' traction control, and a digital console.'
          ' The bike is also easy to maintain and has a good fuel efficiency.'
          ' In short, it is a great bike for anyone looking for a dependable and'
          ' affordable ride.',

  ),

  const Bike_Model(
    id: 'b2',
    categories: [
      'c1'
    ],
    title: 'XSR 155',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageURL: 'https://kickstart.bikeexif.com/wp-content/uploads/2019/09/yamaha-xsr155-scrambler.jpg',
    bikeCategory : 'Cafe Racer',
    price: '545,000',
    ingredients: [
      '2-Wheeler Type	Naked',
      'Engine cc (Displacement)	155.1 cc',
      'Maximum Power	19.3 HP @ 10,000 rpm',
      'Maximum Torque	14.7 NM @ 8500 rpm',
      'Number of Cylinders	1',
      'Number of Gears 6',
      'Seat Height	810 mm',
      'Ground Clearance	170 mm',
      'Kerb Weight	134 kg',
      'Fuel Tank Capacity	10 litres'
    ],
    steps: 'The appeal of the Yamaha XSR and its retro style'
  'motorcycle looks will probably depend on your age. For many it'
      'will rekindle memories of the FZRs and YPVSs that ruled the'
  'roost in the late. The shape of the tank alone'
  'does it for me!'

     ' But look past the retro appeal,'
      'take away those well-judged looks, and you'
     ' still have a fantastic road bike with a brilliant engine. '
  'There’s more than enough power and torque for the road, backed up by '
  'excellent rider aids and chassis. Priced very competitively, I can see the 2022'
  'Yamaha XSR900 being a huge success.'

     ' Some taller, heavier riders may want more comfort, but as a'
      'road bike, it’s very hard to fault and I never stopped smiling on the XSR. I’m unsure what more you’d want from a road bike.'

  ),


  const Bike_Model(
    id: 'b3',
    categories: [
      'c1'
    ],
    title: 'MT-15 V2',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageURL: 'https://imgd.aeplcdn.com/664x374/n/cw/ec/115871/mt-15-v2-right-side-view.jpeg?isig=0&q=80',
    bikeCategory : 'Naked Sports',
    price: '525,000',
    ingredients: [
      '2-Wheeler Type -	Sports',
      'Engine cc (Displacement)	155 cc',
      'Maximum Power	18.4 HP @ 10,000 rpm',
      'Maximum Torque	14.2 Nm @ 7,500 rpm',
      'Number of Cylinders	1',
      'Number of Gears	6',
      'Seat Height	815 mm',
      'Ground Clearance	170 mm',
      'Kerb Weight	141 kg',
      'Fuel Tank Capacity	11 litres'

    ],
    steps: 'The Yamaha R15M is an excellent choice for those looking for an entry-level bike that offers'
        ' a great balance between performance and affordability. The engine is powerful and responsive,'
        ' with plenty of power for everyday and weekend rides. The bike comes with a host of features such as ABS,'
        ' traction control, and a digital console.'
        ' The bike is also easy to maintain and has a good fuel efficiency.'
        ' In short, it is a great bike for anyone looking for a dependable and'
        ' affordable ride.',

  ),

  const Bike_Model(
    id: 'b5',
    categories: [
      'c1'
    ],
    title: 'FZ-X',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageURL: 'https://5.imimg.com/data5/SELLER/Default/2023/5/304772155/ZS/NM/XX/27872283/yamaha-fz-x-150-bike-500x500.png',
    bikeCategory : 'Cafe Racer',
    price: '360,000',
    ingredients: [
      '2-Wheeler Type -	Sports',
      'Engine cc (Displacement)	155 cc',
      'Maximum Power	18.4 HP @ 10,000 rpm',
      'Maximum Torque	14.2 Nm @ 7,500 rpm',
      'Number of Cylinders	1',
      'Number of Gears	6',
      'Seat Height	815 mm',
      'Ground Clearance	170 mm',
      'Kerb Weight	141 kg',
      'Fuel Tank Capacity	11 litres'

    ],
    steps: 'The Yamaha R15M is an excellent choice for those looking for an entry-level bike that offers'
        ' a great balance between performance and affordability. The engine is powerful and responsive,'
        ' with plenty of power for everyday and weekend rides. The bike comes with a host of features such as ABS,'
        ' traction control, and a digital console.'
        ' The bike is also easy to maintain and has a good fuel efficiency.'
        ' In short, it is a great bike for anyone looking for a dependable and'
        ' affordable ride.',

  ),

  const Bike_Model(
    id: 'b6',
    categories: [
      'c1'
    ],
    title: 'Fazer FI V2',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageURL: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSLPTBnNBEqsq2d0N8Ep6ypmdkZlJ5p76VztA8LpPGPusTBOMph_Tcu9uGRlTjgbMUIv0&usqp=CAU',
    bikeCategory : 'Standard',
    price: '325,000',
    ingredients: [
      '2-Wheeler Type -	Sports',
      'Engine cc (Displacement)	155 cc',
      'Maximum Power	18.4 HP @ 10,000 rpm',
      'Maximum Torque	14.2 Nm @ 7,500 rpm',
      'Number of Cylinders	1',
      'Number of Gears	6',
      'Seat Height	815 mm',
      'Ground Clearance	170 mm',
      'Kerb Weight	141 kg',
      'Fuel Tank Capacity	11 litres'

    ],
    steps: 'The Yamaha R15M is an excellent choice for those looking for an entry-level bike that offers'
        ' a great balance between performance and affordability. The engine is powerful and responsive,'
        ' with plenty of power for everyday and weekend rides. The bike comes with a host of features such as ABS,'
        ' traction control, and a digital console.'
        ' The bike is also easy to maintain and has a good fuel efficiency.'
        ' In short, it is a great bike for anyone looking for a dependable and'
        ' affordable ride.',

  ),

  const Bike_Model(
    id: 'b7',
    categories: [
      'c1'
    ],
    title: 'FZS V3 ABS',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageURL: 'https://bd.gaadicdn.com/processedimages/yamaha/fzs-fi-v4/640X309/fzs-fi-v464b79813a4eef.jpg',
    bikeCategory: 'Standard',
    price: '257,500',
    ingredients: [
      '2-Wheeler Type -	Sports',
      'Engine cc (Displacement)	155 cc',
      'Maximum Power	18.4 HP @ 10,000 rpm',
      'Maximum Torque	14.2 Nm @ 7,500 rpm',
      'Number of Cylinders	1',
      'Number of Gears	6',
      'Seat Height	815 mm',
      'Ground Clearance	170 mm',
      'Kerb Weight	141 kg',
      'Fuel Tank Capacity	11 litres'

    ],
    steps: 'The Yamaha R15M is an excellent choice for those looking for an entry-level bike that offers'
        ' a great balance between performance and affordability. The engine is powerful and responsive,'
        ' with plenty of power for everyday and weekend rides. The bike comes with a host of features such as ABS,'
        ' traction control, and a digital console.'
        ' The bike is also easy to maintain and has a good fuel efficiency.'
        ' In short, it is a great bike for anyone looking for a dependable and'
        ' affordable ride.',

  ),

  const Bike_Model(
    id: 'b8',
    categories: [
      'c1'
    ],
    title: 'FZS FI Double Disc',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageURL: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS91HNS6l8cl-u9nRBjSVKSahLemq1zbJOc9Qmey-5DtDcgd_JrMs8RWm_h_ozt6rV8-20&usqp=CAU',
    bikeCategory : 'Standard',
    price: '229,000',
    ingredients: [
      '2-Wheeler Type -	Sports',
      'Engine cc (Displacement)	155 cc',
      'Maximum Power	18.4 HP @ 10,000 rpm',
      'Maximum Torque	14.2 Nm @ 7,500 rpm',
      'Number of Cylinders	1',
      'Number of Gears	6',
      'Seat Height	815 mm',
      'Ground Clearance	170 mm',
      'Kerb Weight	141 kg',
      'Fuel Tank Capacity	11 litres'

    ],
    steps: 'The Yamaha R15M is an excellent choice for those looking for an entry-level bike that offers'
        ' a great balance between performance and affordability. The engine is powerful and responsive,'
        ' with plenty of power for everyday and weekend rides. The bike comes with a host of features such as ABS,'
        ' traction control, and a digital console.'
        ' The bike is also easy to maintain and has a good fuel efficiency.'
        ' In short, it is a great bike for anyone looking for a dependable and'
        ' affordable ride.',

  ),

  const Bike_Model(
    id: 'b9',
    categories: [
      'c1'
    ],
    title: 'Yamaha Saluto 125 UBS',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageURL: 'https://deshibiker.com/wp-content/uploads/2022/03/Untitled-design-3.png',
    bikeCategory : 'Commuter',
    price: '158,000',
    ingredients: [
      '2-Wheeler Type -	Sports',
      'Engine cc (Displacement)	155 cc',
      'Maximum Power	18.4 HP @ 10,000 rpm',
      'Maximum Torque	14.2 Nm @ 7,500 rpm',
      'Number of Cylinders	1',
      'Number of Gears	6',
      'Seat Height	815 mm',
      'Ground Clearance	170 mm',
      'Kerb Weight	141 kg',
      'Fuel Tank Capacity	11 litres'

    ],
    steps: 'The Yamaha R15M is an excellent choice for those looking for an entry-level bike that offers'
        ' a great balance between performance and affordability. The engine is powerful and responsive,'
        ' with plenty of power for everyday and weekend rides. The bike comes with a host of features such as ABS,'
        ' traction control, and a digital console.'
        ' The bike is also easy to maintain and has a good fuel efficiency.'
        ' In short, it is a great bike for anyone looking for a dependable and'
        ' affordable ride.',

  ),

  const Bike_Model(
    id: 'b9',
    categories: [
      'c12'
    ],
    title: 'Hunter 350',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageURL: 'https://imgd.aeplcdn.com/664x374/n/cw/ec/124013/hunter-350-right-front-three-quarter.jpeg?isig=0&q=80',
    bikeCategory : 'Cruiser',
    price: '450,000',
    ingredients: [
      '2-Wheeler Type -	Sports',
      'Engine cc (Displacement)	155 cc',
      'Maximum Power	18.4 HP @ 10,000 rpm',
      'Maximum Torque	14.2 Nm @ 7,500 rpm',
      'Number of Cylinders	1',
      'Number of Gears	6',
      'Seat Height	815 mm',
      'Ground Clearance	170 mm',
      'Kerb Weight	141 kg',
      'Fuel Tank Capacity	11 litres'

    ],
    steps: 'The Yamaha R15M is an excellent choice for those looking for an entry-level bike that offers'
        ' a great balance between performance and affordability. The engine is powerful and responsive,'
        ' with plenty of power for everyday and weekend rides. The bike comes with a host of features such as ABS,'
        ' traction control, and a digital console.'
        ' The bike is also easy to maintain and has a good fuel efficiency.'
        ' In short, it is a great bike for anyone looking for a dependable and'
        ' affordable ride.',

  ),

  const Bike_Model(
    id: 'b9',
    categories: [
      'c12'
    ],
    title: 'Bullet 350',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageURL: 'https://imgd.aeplcdn.com/664x374/n/cw/ec/127499/bullet-right-front-three-quarter-3.jpeg?isig=0&q=80',
    bikeCategory : 'Cruiser',
    price: '490,000',
    ingredients: [
'2-Wheeler Type	Cruiser',
'Engine cc (Displacement)	349 cc',
'Maximum Power	20.2 HP @ 6100 rpm',
'Maximum Torque	27 Nm @ 4000 rpm',
'Number of Cylinders	1',
'Number of Gears	5',
'Seat Height	800 mm',
'Ground Clearance	140 mm',
'Kerb Weight	195 kg',
'Fuel Tank Capacity	15 litres',

    ],
    steps:
    'The Bullet 350 certainly retains its original character, personality'
      'and silhouette, while getting all the advancements of modern technology, with'
  'engine refinement, better dynamics and ride quality. Yes, a few things could have been better.'
  'For a motorcycle built in 2023, the Bullet 350’s fit and finish and build quality could have'
  'been better. The electrical wires and plumbing could have been neatly concealed, giving'
  'a cleaner overall look, the welds on the frame definitely leaves room for improvement.'
  'More features on the console, as well as better braking performance and slightly better'
  'top-end performance could have given the Bullet 350 more ammunition to make a mark in every'
  'market it will be offered on sale.'

  ),

  const Bike_Model(
    id: 'b9',
    categories: [
      'c12'
    ],
    title: 'Super Mateor 650',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageURL: 'https://www.royalenfield.com/content/dam/royal-enfield/india/motorcycles/landing/motorcycle_landing.png',
    bikeCategory : 'Cruiser',
    price: '11,00000',
    ingredients: [
'2-Wheeler Type	Cruiser',
'Engine cc (Displacement)	648 cc',
'Maximum Power	47 HP @ 7250 rpm',
'Maximum Torque	52.3 Nm @ 5650 rpm',
'Number of Cylinders	2',
'Number of Gears	6',
'Seat Height	740 mm',
'Ground Clearance	135 mm',
'Kerb Weight	241 kg',
'Fuel Tank Capacity	15.7 litres',

    ],
    steps: 'The Royal Enfield Super Meteor 650 is the first spin-off of the firms'
  ' 650 twin range. This cruiser motorcycle is available in standard or Touring trim.'

  'Enfield started building their first twin-cylinder motorcycles to be '
  'made in India back in 2018 with the Interceptor roadster and Continental GT'
  'café racer before the Super Meteor variants were unveiled at the Eicma trade show in 2022.'

  'Powered by the same air/oil-cooled eight-valve 648cc parallel-twin engine with a'
  '270º crankshaft and central chain-driven SOHC equipping the previous 650s and named after Royal Enfield’s'
  'first 100mph model which debuted back in 1955, you also get a three-year unlimited mileage warranty.'

  ),





  const Bike_Model(
    id: 'b9',
    categories: [
      'c12'
    ],
    title: 'Continental GT 650',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageURL: 'https://www.royalenfield.com/content/dam/royal-enfield/motorcycles/continental-gt/banner/new/desktop/engine.jpg',
    bikeCategory : 'Cruiser',
    price: '1200,000',
    ingredients: [
      '2-Wheeler Type -	Sports',
      'Engine cc (Displacement)	155 cc',
      'Maximum Power	18.4 HP @ 10,000 rpm',
      'Maximum Torque	14.2 Nm @ 7,500 rpm',
      'Number of Cylinders	1',
      'Number of Gears	6',
      'Seat Height	815 mm',
      'Ground Clearance	170 mm',
      'Kerb Weight	141 kg',
      'Fuel Tank Capacity	11 litres'

    ],
    steps: 'The Yamaha R15M is an excellent choice for those looking for an entry-level bike that offers'
        ' a great balance between performance and affordability. The engine is powerful and responsive,'
        ' with plenty of power for everyday and weekend rides. The bike comes with a host of features such as ABS,'
        ' traction control, and a digital console.'
        ' The bike is also easy to maintain and has a good fuel efficiency.'
        ' In short, it is a great bike for anyone looking for a dependable and'
        ' affordable ride.',

  ),

  const Bike_Model(
    id: 'b9',
    categories: [
      'c12'
    ],
    title: 'Himalayan',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageURL: 'https://www.royalenfield.com/content/dam/royal-enfield/india/motorcycles/landing/royal-enfield-himalayan-motorcycles.jpg',
    bikeCategory : 'Adventure',
    price: '800,000',
    ingredients: [
      '2-Wheeler Type -	Sports',
      'Engine cc (Displacement)	155 cc',
      'Maximum Power	18.4 HP @ 10,000 rpm',
      'Maximum Torque	14.2 Nm @ 7,500 rpm',
      'Number of Cylinders	1',
      'Number of Gears	6',
      'Seat Height	815 mm',
      'Ground Clearance	170 mm',
      'Kerb Weight	141 kg',
      'Fuel Tank Capacity	11 litres'

    ],
    steps: 'The Yamaha R15M is an excellent choice for those looking for an entry-level bike that offers'
        ' a great balance between performance and affordability. The engine is powerful and responsive,'
        ' with plenty of power for everyday and weekend rides. The bike comes with a host of features such as ABS,'
        ' traction control, and a digital console.'
        ' The bike is also easy to maintain and has a good fuel efficiency.'
        ' In short, it is a great bike for anyone looking for a dependable and'
        ' affordable ride.',

  ),


  const Bike_Model(
    id: 'b9',
    categories: [
      'c2'
    ],
    title: 'Honda CBR150r',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageURL: 'https://media.zigcdn.com/media/model/2021/Jan/lest-side-view-436716790_600x400.jpg',
    bikeCategory : 'Sports',
    price: '555,000',
    ingredients: [
'2-Wheeler Type	Sports',
'Engine cc (Displacement)	149.4 cc',
'Maximum Power	16.09 HP @ 9000 rpm',
'Maximum Torque	13.7 Nm @ 7000 rpm',
'Number of Cylinders	1',
'Number of Gears	6',
'Seat Height	782 mm',
'Ground Clearance	160 mm',
'Kerb Weight	139 kg',
'Fuel Tank Capacity	12 litres',
    ],
    steps:
    'A superb entry-level sports bike that excels in many'
  'areas is the Honda CBR150R. Everywhere it travels, its modern and aggressive'
  'style draws attention. But its not just about looks; the CBR150R packs a punch with its performance.'
      'The 149cc engine offers a nice mix of power and efficiency, making it a great option for both highway trips and city commuting.'

  ),


  const Bike_Model(
      id: 'b9',
      categories: [
        'c2'
      ],
      title: 'Honda CBR150r Repsol',
      affordability: Affordability.luxurious,
      complexity: Complexity.challenging,
      imageURL: 'https://www.tbsnews.net/sites/default/files/styles/amp_metadata_content_image_min_696px_wide/public/images/2022/07/30/honda_cbr_150r.jpg',
      bikeCategory : 'Sports',
      price: '592,000',
      ingredients: [
        '2-Wheeler Type	Sports',
        'Engine cc (Displacement)	149.4 cc',
        'Maximum Power	16.09 HP @ 9000 rpm',
        'Maximum Torque	13.7 Nm @ 7000 rpm',
        'Number of Cylinders	1',
        'Number of Gears	6',
        'Seat Height	782 mm',
        'Ground Clearance	160 mm',
        'Kerb Weight	139 kg',
        'Fuel Tank Capacity	12 litres',
      ],
      steps:
      'A superb entry-level sports bike that excels in many'
          'areas is the Honda CBR150R. Everywhere it travels, its modern and aggressive'
          'style draws attention. But its not just about looks; the CBR150R packs a punch with its performance.'
          'The 149cc engine offers a nice mix of power and efficiency, making it a great option for both highway trips and city commuting.'

  ),



  const Bike_Model(
      id: 'b9',
      categories: [
        'c8'
      ],
      title: 'Suzuki GSX-R150',
      affordability: Affordability.luxurious,
      complexity: Complexity.challenging,
      imageURL: 'https://www.tbsnews.net/sites/default/files/styles/big_3/public/images/2022/09/21/lead_1._suzuki_gsx_2_2.jpg',
      bikeCategory : 'Sports',
      price: '555,000',
      ingredients: [
        '2-Wheeler Type	Sports',
        'Engine cc (Displacement)	149.4 cc',
        'Maximum Power	16.09 HP @ 9000 rpm',
        'Maximum Torque	13.7 Nm @ 7000 rpm',
        'Number of Cylinders	1',
        'Number of Gears	6',
        'Seat Height	782 mm',
        'Ground Clearance	160 mm',
        'Kerb Weight	139 kg',
        'Fuel Tank Capacity	12 litres',
      ],
      steps:
      'A superb entry-level sports bike that excels in many'
          'areas is the Honda CBR150R. Everywhere it travels, its modern and aggressive'
          'style draws attention. But its not just about looks; the CBR150R packs a punch with its performance.'
          'The 149cc engine offers a nice mix of power and efficiency, making it a great option for both highway trips and city commuting.'

  ),

  const Bike_Model(
      id: 'b9',
      categories: [
        'c15'
      ],
      title: 'Taro GP-1 V4',
      affordability: Affordability.luxurious,
      complexity: Complexity.challenging,
      imageURL: 'https://i.postimg.cc/HWQRy965/taro-gp-1-v4.webp',
      bikeCategory : 'Sports',
      price: '3,80,000',
      ingredients: [
        '2-Wheeler Type	Sports',
        'Engine cc (Displacement)	149.4 cc',
        'Maximum Power	16.09 HP @ 9000 rpm',
        'Maximum Torque	13.7 Nm @ 7000 rpm',
        'Number of Cylinders	1',
        'Number of Gears	6',
        'Seat Height	782 mm',
        'Ground Clearance	160 mm',
        'Kerb Weight	139 kg',
        'Fuel Tank Capacity	12 litres',
      ],
      steps:
      'A superb entry-level sports bike that excels in many'
          'areas is the Honda CBR150R. Everywhere it travels, its modern and aggressive'
          'style draws attention. But its not just about looks; the CBR150R packs a punch with its performance.'
          'The 149cc engine offers a nice mix of power and efficiency, making it a great option for both highway trips and city commuting.'

  ),


  const Bike_Model(
      id: 'b9',
      categories: [
        'c16'
      ],
      title: 'Lifan KPR 165 FI',
      affordability: Affordability.luxurious,
      complexity: Complexity.challenging,
      imageURL: 'https://www.bikebd.com/den/storage/app/files/shares/uploads/2020/11/lifan-kpr-165r-efi-front-brake-rear-brake-and-engine.jpg',
      bikeCategory : 'Sports',
      price: '2,35,000',
      ingredients: [
        '2-Wheeler Type	Sports',
        'Engine cc (Displacement)	149.4 cc',
        'Maximum Power	16.09 HP @ 9000 rpm',
        'Maximum Torque	13.7 Nm @ 7000 rpm',
        'Number of Cylinders	1',
        'Number of Gears	6',
        'Seat Height	782 mm',
        'Ground Clearance	160 mm',
        'Kerb Weight	139 kg',
        'Fuel Tank Capacity	12 litres',
      ],
      steps:
      'A superb entry-level sports bike that excels in many'
          'areas is the Honda CBR150R. Everywhere it travels, its modern and aggressive'
          'style draws attention. But its not just about looks; the CBR150R packs a punch with its performance.'
          'The 149cc engine offers a nice mix of power and efficiency, making it a great option for both highway trips and city commuting.'

  ),




];


