Brand.destroy_all
Plan.destroy_all
User.destroy_all
Product.destroy_all
Size.destroy_all
PlanMembership.destroy_all
Favorite.destroy_all

Brand.create!(name: "Tomboy X", url: "https://tomboyx.com/", size_chart: "https://tomboyx.com/pages/size-chart#")
Brand.create!(name: "Wildfang", url: "wildfang.com", size_chart: "https://www.wildfang.com/pub/media/wysiwyg/WF-2020-SizeChart.jpg")
Brand.create!(name: "Kirrin Finch", url: "https://kirrinfinch.com/")
Brand.create!(name: "Gender Free World", url: "https://www.genderfreeworld.com/", size_chart: "https://www.genderfreeworld.com/pages/our-sizing")
Brand.create!(name: "Stuzo Clothing", url: "https://www.stuzoclothing.com/")

Plan.create!(name: "1 Swap", price: 89,  description: "4 items/month")
Plan.create!(name: "2 Swap", price: 135, description: "8 items/month")
Plan.create!(name: "Unlimited", price: 159, description: "Unlimited Items")

User.create!(name: "Mary Poppins", email: "mpoppins@gmail.com", session_token: SecureRandom.urlsafe_base64, password:"password")
User.create!(name: "KD Lang", email: "KDlang@gmail.com", session_token: SecureRandom.urlsafe_base64, password:"password")
User.create!(name: "Annabelle Foster", email: "aFoster@gmail.com", session_token: SecureRandom.urlsafe_base64, password:"password")

Product.create!(name: "HIPSTER",
brand_id: Brand.first.id,
product_type: "Underwear",
images: "https://cdn.shopify.com/s/files/1/0204/2302/products/Hipster_BlackRainbow_1.jpg?v=1594153874,https://cdn.shopify.com/s/files/1/0204/2302/products/Hipster_BlackRainbow_2.jpg?v=1594153875,https://cdn.shopify.com/s/files/1/0204/2302/products/Hipster_RB_PurpleRainbow_1.jpg?v=1593376604,https://cdn.shopify.com/s/files/1/0204/2302/products/Hipster_RB_PurpleRainbow_2.jpg?v=1593376605",
product_number: 500100,
price: 20,
description: "Add a blast of purple-powered prismatic pizzazz to your day. Our newest style, this sporty cut is ready to move with you everyday. A full coverage, hip-hugging fit with a peek of cheek is made with supersoft, breathable cotton and our signature stay-put waistband for all day-comfort with no pinching or riding up. Fit-tested on all body types, sizes XS-4X.  Signature stay-put silky soft rainbow waistband. 95% OEKO-TEX certified cotton, 5% spandex. Smooth, durable flatlock seams won’t irritate or chafe. Mid rise, hip-sitting fit. Machine wash cold, tumble dry low.")

Size.create!(product_number: 500100, size: 'XS', brand_id: Brand.first.id, colorway: "Black Rainbow", product_id: Product.first.id, stock: 10)
Size.create!(product_number: 500100, size: 'S', brand_id: Brand.first.id, colorway: "Black Rainbow", product_id: Product.first.id, stock: 10)
Size.create!(product_number: 500100, size: 'M', brand_id: Brand.first.id, colorway: "Black Rainbow", product_id: Product.first.id, stock: 10)
Size.create!(product_number: 500100, size: 'L', brand_id: Brand.first.id, colorway: "Black Rainbow", product_id: Product.first.id, stock: 10)
Size.create!(product_number: 500100, size: 'XL', brand_id: Brand.first.id, colorway: "Black Rainbow", product_id: Product.first.id, stock: 10)
Size.create!(product_number: 500100, size: '2X', brand_id: Brand.first.id, colorway: "Black Rainbow", product_id: Product.first.id, stock: 10)
Size.create!(product_number: 500100, size: '3X', brand_id: Brand.first.id, colorway: "Black Rainbow", product_id: Product.first.id, stock: 10)
Size.create!(product_number: 500100, size: '4X', brand_id: Brand.first.id, colorway: "Black Rainbow", product_id: Product.first.id, stock: 10)
Size.create!(product_number: 500100, size: 'XS', brand_id: Brand.first.id, colorway: "Purple Rainbow", product_id: Product.first.id, stock: 10)
Size.create!(product_number: 500100, size: 'S', brand_id: Brand.first.id, colorway: "Purple Rainbow", product_id: Product.first.id, stock: 10)
Size.create!(product_number: 500100, size: 'M', brand_id: Brand.first.id, colorway: "Purple Rainbow", product_id: Product.first.id, stock: 10)
Size.create!(product_number: 500100, size: 'L', brand_id: Brand.first.id, colorway: "Purple Rainbow", product_id: Product.first.id, stock: 10)
Size.create!(product_number: 500100, size: 'XL', brand_id: Brand.first.id, colorway: "Purple Rainbow", product_id: Product.first.id, stock: 10)
Size.create!(product_number: 500100, size: '2X', brand_id: Brand.first.id, colorway: "Purple Rainbow", product_id: Product.first.id, stock: 10)
Size.create!(product_number: 500100, size: '3X', brand_id: Brand.first.id, colorway: "Purple Rainbow", product_id: Product.first.id, stock: 10)
Size.create!(product_number: 500100, size: '4X', brand_id: Brand.first.id, colorway: "Purple Rainbow", product_id: Product.first.id, stock: 10)

Product.create!(name: "BOY SHORTS",
brand_id: Brand.first.id,
images: "https://cdn.shopify.com/s/files/1/0204/2302/products/2-5InBoyShort_BL_NextGenBlack_1_a6324f09-c7fd-45fc-a114-b54a860eaec9.JPG?v=1581378681,https://cdn.shopify.com/s/files/1/0204/2302/products/2-5InBoyShort_BL_NextGenBlack_2.jpg?v=1581378681,https://cdn.shopify.com/s/files/1/0204/2302/products/2-5BoyShort_BL_NextGenCharcoal_1.jpg?v=1581378684,https://cdn.shopify.com/s/files/1/0204/2302/products/2-5BoyShort_BL_NextGenCharcoal_2.jpg?v=1581378684",
product_type: "Underwear",
product_number: 500101,
price: 20,
description: "Our most popular style, known the world over for its epic wedgie-free comfort. High-quality cotton with a hint of stretch provides all-day comfort while our signature stay-put waistband delivers a reliable fit that won't pinch or ride up.Fit-tested on all body types, sizes XS-4X Signature stay-put silky soft white TomboyX waistband. 95% OEKO-TEX Certified cotton, 5% spandex. Smooth, durable flatlock seams won’t irritate or chafe. Mid rise fit, 2.5\" inseam. Machine wash cold, tumble dry low.")

Size.create!(product_number: 500101, size: 'XS', brand_id: Brand.first.id, colorway: "Next Gen Black", product_id: Product.second.id, stock: 10)
Size.create!(product_number: 500101, size: 'S', brand_id: Brand.first.id, colorway: "Next Gen Black", product_id: Product.second.id, stock: 10)
Size.create!(product_number: 500101, size: 'M', brand_id: Brand.first.id, colorway: "Next Gen Black", product_id: Product.second.id, stock: 10)
Size.create!(product_number: 500101, size: 'L', brand_id: Brand.first.id, colorway: "Next Gen Black", product_id: Product.second.id, stock: 10)
Size.create!(product_number: 500101, size: 'XL', brand_id: Brand.first.id, colorway: "Next Gen Black", product_id: Product.second.id, stock: 10)
Size.create!(product_number: 500101, size: '2X', brand_id: Brand.first.id, colorway: "Next Gen Black", product_id: Product.second.id, stock: 10)
Size.create!(product_number: 500101, size: '3X', brand_id: Brand.first.id, colorway: "Next Gen Black", product_id: Product.second.id, stock: 10)
Size.create!(product_number: 500101, size: '4X', brand_id: Brand.first.id, colorway: "Next Gen Black", product_id: Product.second.id, stock: 10)
Size.create!(product_number: 500101, size: 'XS', brand_id: Brand.first.id, colorway: "Charcoal", product_id: Product.second.id, stock: 10)
Size.create!(product_number: 500101, size: 'S', brand_id: Brand.first.id, colorway: "Charcoal", product_id: Product.second.id, stock: 10)
Size.create!(product_number: 500101, size: 'M', brand_id: Brand.first.id, colorway: "Charcoal", product_id: Product.second.id, stock: 10)
Size.create!(product_number: 500101, size: 'L', brand_id: Brand.first.id, colorway: "Charcoal", product_id: Product.second.id, stock: 10)
Size.create!(product_number: 500101, size: 'XL', brand_id: Brand.first.id, colorway: "Charcoal", product_id: Product.second.id, stock: 10)
Size.create!(product_number: 500101, size: '2X', brand_id: Brand.first.id, colorway: "Charcoal", product_id: Product.second.id, stock: 10)
Size.create!(product_number: 500101, size: '3X', brand_id: Brand.first.id, colorway: "Charcoal", product_id: Product.second.id, stock: 10)
Size.create!(product_number: 500101, size: '4X', brand_id: Brand.first.id, colorway: "Charcoal", product_id: Product.second.id, stock: 10)

Product.create!(name: "4.5\" SHORTS", brand_id: Brand.first.id, product_type: "Underwear", product_number: 500102, price: 32, description: "We took a classic and made it into a TomboyX icon, the first truly gender-neutral boxer brief. These essential Tomboy trunks pair quality cotton with just the right amount of stretch for a smooth, body-hugging fit. Fit-tested on all body types, sizes XS-4X. Signature stay-put silky soft TomboyX waistband. 95% OEKO-TEX Certified cotton, 5% spandex. Smooth, durable flatlock seams won’t irritate or chafe. Mid rise fit, 4.5” inseam. Machine wash cold, tumble dry low.", images: "https://cdn.shopify.com/s/files/1/0204/2302/products/4-5InTrunks_BL_NextGenBlack_1_65b2e28e-4835-4c26-a7e2-b121ca529331.jpg?v=1588724679,https://cdn.shopify.com/s/files/1/0204/2302/products/4-5InTrunks_BL_NextGenBlack_2.jpg?v=1588724679,https://cdn.shopify.com/s/files/1/0204/2302/products/4-5InTrunks_BL_NextGenCharcoal_1_2bab2fce-8588-4104-b739-becadd572771.JPG?v=1572461790,https://cdn.shopify.com/s/files/1/0204/2302/products/4-5InTrunks_BL_NextGenCharcoal_2.jpg?v=1573080865")

Size.create!(product_number: 500102, size: 'XS', brand_id: Brand.first.id, colorway: "MicroModal Save The Bees", product_id: Product.third.id, stock: 10)
Size.create!(product_number: 500102, size: 'S', brand_id: Brand.first.id, colorway: "MicroModal Save The Bees", product_id: Product.third.id, stock: 10)
Size.create!(product_number: 500102, size: 'M', brand_id: Brand.first.id, colorway: "MicroModal Save The Bees", product_id: Product.third.id, stock: 10)
Size.create!(product_number: 500102, size: 'L', brand_id: Brand.first.id, colorway: "MicroModal Save The Bees", product_id: Product.third.id, stock: 10)
Size.create!(product_number: 500102, size: 'XL', brand_id: Brand.first.id, colorway: "MicroModal Save The Bees", product_id: Product.third.id, stock: 10)
Size.create!(product_number: 500102, size: '2X', brand_id: Brand.first.id, colorway: "MicroModal Save The Bees", product_id: Product.third.id, stock: 10)
Size.create!(product_number: 500102, size: '3X', brand_id: Brand.first.id, colorway: "MicroModal Save The Bees", product_id: Product.third.id, stock: 10)
Size.create!(product_number: 500102, size: '4X', brand_id: Brand.first.id, colorway: "MicroModal Save The Bees", product_id: Product.third.id, stock: 10)
Size.create!(product_number: 500102, size: 'XS', brand_id: Brand.first.id, colorway: "MicroModal Black", product_id: Product.third.id, stock: 10)
Size.create!(product_number: 500102, size: 'S', brand_id: Brand.first.id, colorway: "MicroModal Black", product_id: Product.third.id, stock: 10)
Size.create!(product_number: 500102, size: 'M', brand_id: Brand.first.id, colorway: "MicroModal Black", product_id: Product.third.id, stock: 10)
Size.create!(product_number: 500102, size: 'L', brand_id: Brand.first.id, colorway: "MicroModal Black", product_id: Product.third.id, stock: 10)
Size.create!(product_number: 500102, size: 'XL', brand_id: Brand.first.id, colorway: "MicroModal Black", product_id: Product.third.id, stock: 10)
Size.create!(product_number: 500102, size: '2X', brand_id: Brand.first.id, colorway: "MicroModal Black", product_id: Product.third.id, stock: 10)
Size.create!(product_number: 500102, size: '3X', brand_id: Brand.first.id, colorway: "MicroModal Black", product_id: Product.third.id, stock: 10)
Size.create!(product_number: 500102, size: '4X', brand_id: Brand.first.id, colorway: "MicroModal Black", product_id: Product.third.id, stock: 10)

Product.create!(name: "ULIMATE PANT", brand_id: Brand.second.id, product_type: "Pant", product_number: 200100, price: 88, description: "This Wildfang exclusive is the perfect staple piece for any closet. These relaxed fit trousers are constructed in premium, lightweight fabric and are expertly cut to shine on various body types. We love the slightly wider hem and drawstring waist, which make these comfy enough to rock all year long.", images: "https://www.wildfang.com/media/catalog/product/u/l/ultimate_pant_black_-1_1.jpg,https://www.wildfang.com/media/catalog/product/u/l/ultimate_pant_black_-2h_1.jpg,https://www.wildfang.com/media/catalog/product/u/l/ultimate_pant_black_-3_1.jpg,https://www.wildfang.com/media/catalog/product/u/l/ultimate_pant_black_-4_1.jpg,https://www.wildfang.com/media/catalog/product/u/l/ultimate_pant_black_-5_1.jpg,https://www.wildfang.com/media/catalog/product/u/l/ultimate_pant_black_-6r_1.jpg,https://www.wildfang.com/media/catalog/product/u/l/ultimate_pant_black_-7_1.jpg,https://www.wildfang.com/media/catalog/product/u/l/ultimate_pant_black_-8_1.jpg,https://www.wildfang.com/media/catalog/product/u/l/ultimate_pant_black_-9_1.jpg")

Size.create!(product_number: 200100, size: 'XS', brand_id: Brand.second.id, colorway: "Olive", product_id: Product.fourth.id, stock: 10)
Size.create!(product_number: 200100, size: 'S', brand_id: Brand.second.id, colorway: "Olive", product_id: Product.fourth.id, stock: 10)
Size.create!(product_number: 200100, size: 'M', brand_id: Brand.second.id, colorway: "Olive", product_id: Product.fourth.id, stock: 10)
Size.create!(product_number: 200100, size: 'L', brand_id: Brand.second.id, colorway: "Olive", product_id: Product.fourth.id, stock: 10)
Size.create!(product_number: 200100, size: 'XL', brand_id: Brand.second.id, colorway: "Olive", product_id: Product.fourth.id, stock: 10)
Size.create!(product_number: 200100, size: 'XXL', brand_id: Brand.second.id, colorway: "Olive", product_id: Product.fourth.id, stock: 10)

Size.create!(product_number: 200100, size: 'XS', brand_id: Brand.second.id, colorway: "Black", product_id: Product.fourth.id, stock: 10)
Size.create!(product_number: 200100, size: 'S', brand_id: Brand.second.id, colorway: "Black", product_id: Product.fourth.id, stock: 10)
Size.create!(product_number: 200100, size: 'M', brand_id: Brand.second.id, colorway: "Black", product_id: Product.fourth.id, stock: 10)
Size.create!(product_number: 200100, size: 'L', brand_id: Brand.second.id, colorway: "Black", product_id: Product.fourth.id, stock: 10)
Size.create!(product_number: 200100, size: 'XL', brand_id: Brand.second.id, colorway: "Black", product_id: Product.fourth.id, stock: 10)
Size.create!(product_number: 200100, size: 'XXL', brand_id: Brand.second.id, colorway: "Black", product_id: Product.fourth.id, stock: 10)

Product.create!(
  name: "SLIM CROP PANT", 
  brand_id: Brand.second.id, 
  product_type: "Pant", 
  product_number: 200101, 
  price: 108, 
  description: "Everyone's fave suiting is back in olive and ready to rumble! Featuring luxe construction, an amazing fit, expert tailoring…and did we mention it goes up to size 20? Trust us–you're gonna feel like a superhero when you put it on. Go ahead and slip into these kickass new WF trousers to take on the world.", 
  details: "80% polyester / 17% rayon / 3% spandex / Dry clean only",
  fit_details: "Tailored fit/Zipper fly, reinforced tab, & button closure/2 side slant & 2 rear welt pockets/Full stretch lining/Premium construction/10\" rise & 25.5\" inseam",
  images: "https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/e/m/empower-olive-slim-crop-pant-1.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/e/m/empower-olive-slim-crop-pant-2.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/e/m/empower-olive-slim-crop-pant-3.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/e/m/empower-olive-slim-crop-pant-4.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/e/m/empower-olive-slim-crop-pant-5.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/e/m/empower-olive-slim-crop-pant-6.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/e/m/empower-olive-slim-crop-pant-7.jpghttps://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/e/m/empower-olive-slim-crop-pant-8.jpg" )

Size.create!(product_number: 200101, size: '0', brand_id: Brand.second.id, colorway: "Olive", product_id: Product.find_by(name: "SLIM CROP PANT").id, stock: 10)
Size.create!(product_number: 200101, size: '2', brand_id: Brand.second.id, colorway: "Olive", product_id: Product.find_by(name: "SLIM CROP PANT").id, stock: 10)
Size.create!(product_number: 200101, size: '4', brand_id: Brand.second.id, colorway: "Olive", product_id: Product.find_by(name: "SLIM CROP PANT").id, stock: 10)
Size.create!(product_number: 200101, size: '6', brand_id: Brand.second.id, colorway: "Olive", product_id: Product.find_by(name: "SLIM CROP PANT").id, stock: 10)
Size.create!(product_number: 200101, size: '8', brand_id: Brand.second.id, colorway: "Olive", product_id: Product.find_by(name: "SLIM CROP PANT").id, stock: 10)
Size.create!(product_number: 200101, size: '10', brand_id: Brand.second.id, colorway: "Olive", product_id: Product.find_by(name: "SLIM CROP PANT").id, stock: 10)
Size.create!(product_number: 200101, size: '12', brand_id: Brand.second.id, colorway: "Olive", product_id: Product.find_by(name: "SLIM CROP PANT").id, stock: 10)
Size.create!(product_number: 200101, size: '14', brand_id: Brand.second.id, colorway: "Olive", product_id: Product.find_by(name: "SLIM CROP PANT").id, stock: 10)

Product.create!(
  name: "WORKWEAR PANT", 
  brand_id: Brand.second.id, 
  product_type: "Pant", 
  product_number: 200102, 
  price: 128, 
  description: "With an improved fit, premium construction and classic workwear charm, this Wildfang exclusive pant has gotten some badass upgrades. Peep the practical utility detailing of contrast bar tacks, pop stitching and knee panels. The lightweight but sturdy fabric make these pants the perfect go-to, no matter the season.", 
  details: "97% cotton / 3% spandex / Machine wash cold / Dry flat",
  fit_details: "Classic workwear fit / Zipper fly with button closure / Knee panel / Contrast bar tacking & pop stitch detailing / 5 pocket design / Right dual cargo leg pocket & left utility loop / Premium stretch construction / 12\" rise & 30\" inseam",
  images: 'https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/h/1/h1_4.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/2/r/2r_4.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/3/_/3_4_1.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/4/_/4_4_1.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/6/_/6_4_1.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/7/_/7_3_1.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/9/_/9_3.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/1/0/10_1.jpg')

  Size.create!(product_number: 200102, size: '0', brand_id: Brand.second.id, colorway: "ROYAL BLUE", product_id: Product.find_by(name: "WORKWEAR PANT").id, stock: 10)
Size.create!(product_number: 200102, size: '2', brand_id: Brand.second.id, colorway: "ROYAL BLUE", product_id: Product.find_by(name: "WORKWEAR PANT").id, stock: 10)
Size.create!(product_number: 200102, size: '4', brand_id: Brand.second.id, colorway: "ROYAL BLUE", product_id: Product.find_by(name: "WORKWEAR PANT").id, stock: 10)
Size.create!(product_number: 200102, size: '6', brand_id: Brand.second.id, colorway: "ROYAL BLUE", product_id: Product.find_by(name: "WORKWEAR PANT").id, stock: 10)
Size.create!(product_number: 200102, size: '8', brand_id: Brand.second.id, colorway: "ROYAL BLUE", product_id: Product.find_by(name: "WORKWEAR PANT").id, stock: 10)
Size.create!(product_number: 200102, size: '10', brand_id: Brand.second.id, colorway: "ROYAL BLUE", product_id: Product.find_by(name: "WORKWEAR PANT").id, stock: 10)
Size.create!(product_number: 200102, size: '12', brand_id: Brand.second.id, colorway: "ROYAL BLUE", product_id: Product.find_by(name: "WORKWEAR PANT").id, stock: 10)
Size.create!(product_number: 200102, size: '14', brand_id: Brand.second.id, colorway: "ROYAL BLUE", product_id: Product.find_by(name: "WORKWEAR PANT").id, stock: 10)

Product.create!(
  name: "WORKWEAR COVERALL",
  brand_id: Brand.second.id,
  product_type: "Jumpsuit",
  product_number: 201100,
  price: 188,
  description: "Soft, comfortable, and your whole look in one!",
  details: "Pop stitch detailing / Deep, functional pockets  / 28\" inseam / 97% cotton, 3% spandex  / Machine wash cold, dry flat 
The fabric will stretch to your figure and then return back to original shape after washing.",
  images: 'https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/h/1/h1-bluecoveralls.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/2/-/2-bluecoveralls.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/3/-/3-bluecoveralls.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/4/-/4-bluecoveralls.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/5/-/5-bluecoveralls.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/6/r/6r-bluecoveralls.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/7/-/7-bluecoveralls.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/8/-/8-bluecoveralls.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/9/-/9-bluecoveralls.jpg')

  Size.create!(product_number: 201100, size: 'XS', brand_id: Brand.second.id, colorway: "ROYAL BLUE", product_id: Product.find_by(name: "WORKWEAR COVERALL").id, stock: 10)
Size.create!(product_number: 201100, size: 'S', brand_id: Brand.second.id, colorway: "ROYAL BLUE", product_id: Product.find_by(name: "WORKWEAR COVERALL").id, stock: 10)
Size.create!(product_number: 201100, size: 'M', brand_id: Brand.second.id, colorway: "ROYAL BLUE", product_id: Product.find_by(name: "WORKWEAR COVERALL").id, stock: 10)
Size.create!(product_number: 201100, size: 'L', brand_id: Brand.second.id, colorway: "ROYAL BLUE", product_id: Product.find_by(name: "WORKWEAR COVERALL").id, stock: 10)
Size.create!(product_number: 201100, size: 'XL', brand_id: Brand.second.id, colorway: "ROYAL BLUE", product_id: Product.find_by(name: "WORKWEAR COVERALL").id, stock: 10)
Size.create!(product_number: 201100, size: 'XXL', brand_id: Brand.second.id, colorway: "ROYAL BLUE", product_id: Product.find_by(name: "WORKWEAR COVERALL").id, stock: 10)

Product.create!(
  name: "WORKWEAR COVERALL",
  brand_id: Brand.second.id,
  product_type: "Jumpsuit",
  product_number: 201101,
  price: 188,
  description: "Soft, comfortable, and your whole look in one!",
  details: "Pop stitch detailing / Deep, functional pockets  / 28\" inseam / 97% cotton, 3% spandex  / Machine wash cold, dry flat 
The fabric will stretch to your figure and then return back to original shape after washing.",
  images: 'https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/h/1/h1_5_22.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/2/r/2r_5_2.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/3/_/3_6_4.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/4/_/4_6_5.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/5/_/5_5_7.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/6/_/6_5_5.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/7/_/7_4_9.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/8/_/8_4_6.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/9/_/9_4_5.jpg')

  Size.create!(product_number: 201101, size: 'XS', brand_id: Brand.second.id, colorway: "RAILROAD STRIPE", product_id: Product.find_by(product_number: 201101).id, stock: 10)
Size.create!(product_number: 201101, size: 'S', brand_id: Brand.second.id, colorway: "RAILROAD STRIPE", product_id: Product.find_by(product_number: 201101).id, stock: 10)
Size.create!(product_number: 201101, size: 'M', brand_id: Brand.second.id, colorway: "RAILROAD STRIPE", product_id: Product.find_by(product_number: 201101).id, stock: 10)
Size.create!(product_number: 201101, size: 'L', brand_id: Brand.second.id, colorway: "RAILROAD STRIPE", product_id: Product.find_by(product_number: 201101).id, stock: 10)
Size.create!(product_number: 201101, size: 'XL', brand_id: Brand.second.id, colorway: "RAILROAD STRIPE", product_id: Product.find_by(product_number: 201101).id, stock: 10)
Size.create!(product_number: 201101, size: 'XXL', brand_id: Brand.second.id, colorway: "RAILROAD STRIPE", product_id: Product.find_by(product_number: 201101).id, stock: 10)

Product.create!(
  name: "WORKWEAR CHORE COAT",
  brand_id: Brand.second.id,
  product_type: "Jacket",
  product_number: 300100,
  price: 128,
  description: "Fashion meets function with our exclusive workwear chore jacket. We love the lightweight but sturdy stretch fabric, which keeps this premium topper comfy enough to layer all year long. Featuring pop stitch detailing throughout for contrast, this coat is so good you're gunna want to live in it.",
  details: "97% cotton / 3% spandex / Machine wash cold / Dry flat",
  fit_details: "Classic workwear fit / 6 button closure / Chest patch pocket with button flap / 2 front dual patch & side slant pockets / Ultra soft materials with stretch construction / Pop stitch detailing / Medium: 21.75\" across chest & 32\" center back",
  images: 'https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/h/1/h1_1.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/2/r/2r_2.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/3/_/3_2_3.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/4/_/4_2_4.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/5/_/5_2_4.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/6/_/6_2_2.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/7/_/7_1_2.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/8/_/8_1_1.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/9/_/9_1_1.jpg')

  Size.create!(product_number: 300100, size: 'XS', brand_id: Brand.second.id, colorway: "BLACK", product_id: Product.find_by(product_number: 300100).id, stock: 10)
Size.create!(product_number: 300100, size: 'S', brand_id: Brand.second.id, colorway: "BLACK", product_id: Product.find_by(product_number: 300100).id, stock: 10)
Size.create!(product_number: 300100, size: 'M', brand_id: Brand.second.id, colorway: "BLACK", product_id: Product.find_by(product_number: 300100).id, stock: 10)
Size.create!(product_number: 300100, size: 'L', brand_id: Brand.second.id, colorway: "BLACK", product_id: Product.find_by(product_number: 300100).id, stock: 10)
Size.create!(product_number: 300100, size: 'XL', brand_id: Brand.second.id, colorway: "BLACK", product_id: Product.find_by(product_number: 300100).id, stock: 10)
Size.create!(product_number: 300100, size: 'XXL', brand_id: Brand.second.id, colorway: "BLACK", product_id: Product.find_by(product_number: 300100).id, stock: 10)

Product.create!(
  name: "WORKWEAR COVERALL",
  brand_id: Brand.second.id,
  product_type: "Jumpsuit",
  product_number: 201103,
  price: 188,
  description: "Soft, comfortable, and your whole look in one!",
  details: "Pop stitch detailing / Deep, functional pockets  / 28\" inseam / 97% cotton, 3% spandex  / Machine wash cold, dry flat \nThe fabric will stretch to your figure and then return back to original shape after washing.",
  images: "https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/h/1/h1-bcoveralls.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/2/-/2-bcoveralls.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/3/-/3-bcoveralls.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/4/-/4-bcoveralls.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/5/r/5r-bcoveralls.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/6/-/6-bcoveralls.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/7/-/7-bcoveralls.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/8/-/8-bcoveralls.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/9/-/9-bcoveralls.jpg")

  Size.create!(product_number: 201103, size: 'XS', brand_id: Brand.second.id, colorway: "BLACK", product_id: Product.find_by(product_number: 201103).id, stock: 10)
Size.create!(product_number: 201103, size: 'S', brand_id: Brand.second.id, colorway: "BLACK", product_id: Product.find_by(product_number: 201103).id, stock: 10)
Size.create!(product_number: 201103, size: 'M', brand_id: Brand.second.id, colorway: "BLACK", product_id: Product.find_by(product_number: 201103).id, stock: 10)
Size.create!(product_number: 201103, size: 'L', brand_id: Brand.second.id, colorway: "BLACK", product_id: Product.find_by(product_number: 201103).id, stock: 10)
Size.create!(product_number: 201103, size: 'XL', brand_id: Brand.second.id, colorway: "BLACK", product_id: Product.find_by(product_number: 201103).id, stock: 10)
Size.create!(product_number: 201103, size: 'XXL', brand_id: Brand.second.id, colorway: "BLACK", product_id: Product.find_by(product_number: 201103).id, stock: 10)

Product.create!(
  name: "ORCHID WORKWEAR COVERALL",
  brand_id: Brand.second.id,
  product_type: "Jumpsuit",
  product_number: 201102,
  price: 188,
  description: "Soft, comfortable, and your whole look in one!",
  details: "Pop stitch detailing / Deep, functional pockets  / 28\" inseam / 97% cotton, 3% spandex  / Machine wash cold, dry flat \nThe fabric will stretch to your figure and then return back to original shape after washing.",
  images: "https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/h/1/h1-pinkcoveralls_8.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/r/2/r2-pinkcoveralls_2.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/3/-/3-pinkcoveralls_2.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/4/-/4-pinkcoveralls_2.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/5/-/5-pinkcoveralls_2.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/6/-/6-pinkcoveralls_2.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/7/-/7-pinkcoveralls_2.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/8/-/8-pinkcoveralls_2.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/9/-/9-pinkcoveralls_2.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/1/0/10-pinkcoveralls_2.jpg")

  Size.create!(product_number: 201102, size: 'XS', brand_id: Brand.second.id, colorway: "ORCHID", product_id: Product.find_by(product_number: 201102).id, stock: 10)
Size.create!(product_number: 201102, size: 'S', brand_id: Brand.second.id, colorway: "ORCHID", product_id: Product.find_by(product_number: 201102).id, stock: 10)
Size.create!(product_number: 201102, size: 'M', brand_id: Brand.second.id, colorway: "ORCHID", product_id: Product.find_by(product_number: 201102).id, stock: 10)
Size.create!(product_number: 201102, size: 'L', brand_id: Brand.second.id, colorway: "ORCHID", product_id: Product.find_by(product_number: 201102).id, stock: 10)
Size.create!(product_number: 201102, size: 'XL', brand_id: Brand.second.id, colorway: "ORCHID", product_id: Product.find_by(product_number: 201102).id, stock: 10)
Size.create!(product_number: 201102, size: 'XXL', brand_id: Brand.second.id, colorway: "ORCHID", product_id: Product.find_by(product_number: 201102).id, stock: 10)

Product.create!(
  name: "RADICAL WOMXN TEE BLUE",
  brand_id: Brand.second.id,
  product_type: "T-Shirt",
  product_number: 102100,
  price: 40,
  description: "Radical womxn stand up against inequality and don't back down. So slip into this soft cotton tee and show the world you're ready for radical change.",
  fit_details: "Relaxed unisex fit / Soft cotton construction / Screen-printed front graphic / Medium: 20\" across chest",
  details: "100% cotton / Machine wash cold / Tumble dry low",
  images: "https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/1/h/1h-radicalteeblue.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/2/-/2-radicalteeblue.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/3/-/3-radicalteeblue.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/4/r/4r-radicalteeblue.jpg,,,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/7/-/7-radicalteeblue.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/8/-/8-radicalteeblue.jpg")

  Size.create!(product_number: 102100, size: 'XS', brand_id: Brand.second.id, colorway: "ROYAL BLUE", product_id: Product.find_by(product_number: 102100).id, stock: 10)
Size.create!(product_number: 102100, size: 'S', brand_id: Brand.second.id, colorway: "ROYAL BLUE", product_id: Product.find_by(product_number: 102100).id, stock: 10)
Size.create!(product_number: 102100, size: 'M', brand_id: Brand.second.id, colorway: "ROYAL BLUE", product_id: Product.find_by(product_number: 102100).id, stock: 10)
Size.create!(product_number: 102100, size: 'L', brand_id: Brand.second.id, colorway: "ROYAL BLUE", product_id: Product.find_by(product_number: 102100).id, stock: 10)
Size.create!(product_number: 102100, size: 'XL', brand_id: Brand.second.id, colorway: "ROYAL BLUE", product_id: Product.find_by(product_number: 102100).id, stock: 10)
Size.create!(product_number: 102100, size: 'XXL', brand_id: Brand.second.id, colorway: "ROYAL BLUE", product_id: Product.find_by(product_number: 102100).id, stock: 10)

Product.create!(
  name: "WILD FEMINIST TEE",
  brand_id: Brand.second.id,
  product_type: "T-Shirt",
  product_number: 102101,
  price: 40,
  description: "Because every voice needs to be heard.Because we stand taller when we stand together.Because we are not finished yet.Because of this, we choose to be Wild.",
  fit_details: "Relaxed unisex fit / Pre-shrunk cotton / Medium: 20.5\" across chest / Lu, Nina, Essence and Janessa are wearing a S, get their details here, here, here, and here. / Brittanee and Jasmine are wearing a L, get their details here and here. / Hayley is wearing an XXL, get their details here.",
  details: "100% cotton / Machine wash cold / Tumble dry low",
  images: "https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/1/h/1h-xwfteeblackonwhite.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/2/-/2-xwfteeblackonwhite.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/3/-/3-xwfteeblackonwhite.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/4/r/4r-xwfteeblackonwhite.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/5/-/5-xwfteeblackonwhite.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/6/-/6-xwfteeblackonwhite.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/7/-/7-xwfteeblackonwhite.jpg")

  Size.create!(product_number: 102101, size: 'XS', brand_id: Brand.second.id, colorway: "WHITE", product_id: Product.find_by(product_number: 102101).id, stock: 10)
Size.create!(product_number: 102101, size: 'S', brand_id: Brand.second.id, colorway: "WHITE", product_id: Product.find_by(product_number: 102101).id, stock: 10)
Size.create!(product_number: 102101, size: 'M', brand_id: Brand.second.id, colorway: "WHITE", product_id: Product.find_by(product_number: 102101).id, stock: 10)
Size.create!(product_number: 102101, size: 'L', brand_id: Brand.second.id, colorway: "WHITE", product_id: Product.find_by(product_number: 102101).id, stock: 10)
Size.create!(product_number: 102101, size: 'XL', brand_id: Brand.second.id, colorway: "WHITE", product_id: Product.find_by(product_number: 102101).id, stock: 10)
Size.create!(product_number: 102101, size: 'XXL', brand_id: Brand.second.id, colorway: "WHITE", product_id: Product.find_by(product_number: 102101).id, stock: 10)


Product.create!(
  name: "TOMBOY TEE",
  brand_id: Brand.second.id,
  product_type: "T-Shirt",
  product_number: 102102,
  price: 40,
  description: "Because every voice needs to be heard.Because we stand taller when we stand together.Because we are not finished yet.Because of this, we choose to be Wild.",
  fit_details: "Relaxed unisex fit / Pre-shrunk cotton / Medium: 20.5\" across chest / Lu, Nina, Essence and Janessa are wearing a S, get their details here, here, here, and here. / Brittanee and Jasmine are wearing a L, get their details here and here. / Hayley is wearing an XXL, get their details here.",
  details: "100% cotton / Machine wash cold / Tumble dry low",
  images: "https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/t/o/tomboy-tee-1-v.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/t/o/tomboy-tee-2-v.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/t/o/tomboy-tee-3-v.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/t/o/tomboy-tee-4-v.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/t/o/tomboy-tee-5-v.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/t/o/tomboy-tee-6-v.jpg")

  Size.create!(product_number: 102102, size: 'XS', brand_id: Brand.second.id, colorway: "WHITE", product_id: Product.find_by(product_number: 102102).id, stock: 10)
Size.create!(product_number: 102102, size: 'S', brand_id: Brand.second.id, colorway: "WHITE", product_id: Product.find_by(product_number: 102102).id, stock: 10)
Size.create!(product_number: 102102, size: 'M', brand_id: Brand.second.id, colorway: "WHITE", product_id: Product.find_by(product_number: 102102).id, stock: 10)
Size.create!(product_number: 102102, size: 'L', brand_id: Brand.second.id, colorway: "WHITE", product_id: Product.find_by(product_number: 102102).id, stock: 10)
Size.create!(product_number: 102102, size: 'XL', brand_id: Brand.second.id, colorway: "WHITE", product_id: Product.find_by(product_number: 102102).id, stock: 10)
Size.create!(product_number: 102102, size: 'XXL', brand_id: Brand.second.id, colorway: "WHITE", product_id: Product.find_by(product_number: 102102).id, stock: 10)



Product.create!(
  name: "ACE LS BUTTON UP",
  brand_id: Brand.second.id,
  product_type: "Button-Up",
  product_number: 100100,
  price: 88,
  description: "Take your button up game to the next level. Expertly crafted for functional luxury, the Ace is the newest addition to our button up family and it’s soon to be your new favorite shirt. From premium details to super soft material and a perfectly tailored fit, the Ace is here to up the ante.",
  fit_details: "Slim tailored fit– size up for a roomier feel / Button down collar  / 7 button closure  / 1 subtle exterior chest pocket  / High thread count pinpoint oxford fabric  / Signature WF interior binding  / Exclusive WF Mother of Pearl shirting buttons  / Top stitch French seams  / Curved hem  / Medium: 20\" across chest / Elizabeth is wearing size XS / Danni is wearing size M",
  details: "100% cotton / Machine wash cold / Tumble dry low",
  images: "https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/1/h/1h-acelsbuinwhite_1.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/2/-/2-acelsbuinwhite_1.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/3/-/3-acelsbuinwhite_1.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/4/-/4-acelsbuinwhite_1.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/5/-/5-acelsbuinwhite_1.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/6/r/6r-acelsbuinwhite_1.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/7/-/7-acelsbuinwhite_1.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/8/-/8-acelsbuinwhite_1.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/9/-/9-acelsbuinwhite_1.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/1/0/10-acelsbuinwhite_1.jpg")

  Size.create!(product_number: 100100, size: 'XS', brand_id: Brand.second.id, colorway: "WHITE", product_id: Product.find_by(product_number: 100100).id, stock: 10)
Size.create!(product_number: 100100, size: 'S', brand_id: Brand.second.id, colorway: "WHITE", product_id: Product.find_by(product_number: 100100).id, stock: 10)
Size.create!(product_number: 100100, size: 'M', brand_id: Brand.second.id, colorway: "WHITE", product_id: Product.find_by(product_number: 100100).id, stock: 10)
Size.create!(product_number: 100100, size: 'L', brand_id: Brand.second.id, colorway: "WHITE", product_id: Product.find_by(product_number: 100100).id, stock: 10)
Size.create!(product_number: 100100, size: 'XL', brand_id: Brand.second.id, colorway: "WHITE", product_id: Product.find_by(product_number: 100100).id, stock: 10)
Size.create!(product_number: 100100, size: 'XXL', brand_id: Brand.second.id, colorway: "WHITE", product_id: Product.find_by(product_number: 100100).id, stock: 10)

Product.create!(
  name: "ACE HAMPTON STRIPE LS BUTTON UP",
  brand_id: Brand.second.id,
  product_type: "Button-Up",
  product_number: 100101,
  price: 88,
  description: "Take your button up game to the next level. Expertly crafted for functional luxury, this Ace is soon to be your new favorite shirt. From premium details like a soft, cotton blend material and a perfectly tailored fit, this classic Hampton Stripe button up is here to up the ante on cool comfort.",
  fit_details: "Slim tailored fit– size up for a roomier feel / Button down collar  / 7 button closure  / 1 subtle exterior chest pocket  / High thread count pinpoint oxford fabric  / Signature WF interior binding  / Exclusive WF Mother of Pearl shirting buttons  / Top stitch French seams  / Curved hem  / Medium: 20\" across chest / Elizabeth is wearing size XS / Danni is wearing size M",
  details: "50% cotton / 35% linen / 15% polyester / Machine wash cold / Line dry",
  images: "https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/1/h/1h-acehamptonstripbu.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/2/-/2-acehamptonstripbu.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/3/-/3-acehamptonstripbu.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/4/r/4r-acehamptonstripbu.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/5/-/5-acehamptonstripbu.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/6/-/6-acehamptonstripbu.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/7/-/7-acehamptonstripbu.jpg,https://www.wildfang.com/media/catalog/product/cache/image/555x777/beff4985b56e3afdbeabfc89641a4582/8/-/8-acehamptonstripbu.jpg")

  Size.create!(product_number: 100101, size: 'XS', brand_id: Brand.second.id, colorway: "BLUE MULTI", product_id: Product.find_by(product_number: 100101).id, stock: 10)
Size.create!(product_number: 100101, size: 'S', brand_id: Brand.second.id, colorway: "BLUE MULTI", product_id: Product.find_by(product_number: 100101).id, stock: 10)
Size.create!(product_number: 100101, size: 'M', brand_id: Brand.second.id, colorway: "BLUE MULTI", product_id: Product.find_by(product_number: 100101).id, stock: 10)
Size.create!(product_number: 100101, size: 'L', brand_id: Brand.second.id, colorway: "BLUE MULTI", product_id: Product.find_by(product_number: 100101).id, stock: 10)
Size.create!(product_number: 100101, size: 'XL', brand_id: Brand.second.id, colorway: "BLUE MULTI", product_id: Product.find_by(product_number: 100101).id, stock: 10)
Size.create!(product_number: 100101, size: 'XXL', brand_id: Brand.second.id, colorway: "BLUE MULTI", product_id: Product.find_by(product_number: 100101).id, stock: 10)

Product.create!(
  name: "Brighton Print Short Sleeve Shirt",
  brand_id: Brand.fourth.id,
  product_type: "Button-Up",
  product_number: 101100,
  price: 78,
  description: "Oh we do like to be beside the seaside, our home town Brighton, loving depicted on fabric. A great place to live, a great place to visit (although with appropriate social distancing please). A exclusive design for GFW created by artist Esme Mackenzie.",
  fit_details: "Lightweight 100% cotton.  2 Sleeve lengths - fix with tab and button. Digitally printed and made in Spain. Reverse button to prevent gape in the chest.",
  details: "50% cotton / 35% linen / 15% polyester / Machine wash cold / Line dry",
  images: "http://cdn.shopify.com/s/files/1/1097/4660/products/brighton-print-short-sleeve-shirt-shirts-gfw-clothing-867350_grande.jpg?v=1594456925,http://cdn.shopify.com/s/files/1/1097/4660/products/brighton-print-short-sleeve-shirt-shirts-gfw-clothing-297258_grande.jpg?v=1594724744,http://cdn.shopify.com/s/files/1/1097/4660/products/brighton-print-short-sleeve-shirt-shirts-gfw-clothing-932596_grande.jpg?v=1594485582,https://cdn.shopify.com/s/files/1/1097/4660/products/brighton-print-short-sleeve-shirt-shirts-gfw-clothing-556510_600x.jpg?v=1594485591,https://cdn.shopify.com/s/files/1/1097/4660/products/brighton-print-short-sleeve-shirt-shirts-gfw-clothing-571059_600x.jpg?v=1594843983")

Size.create!(product_number: 101100, size: 'XS', brand_id: Brand.fourth.id, colorway: "Powder Blue", product_id: Product.find_by(product_number: 101100).id, stock: 10)
Size.create!(product_number: 101100, size: 'S', brand_id: Brand.fourth.id, colorway: "Powder Blue", product_id: Product.find_by(product_number: 101100).id, stock: 10)
Size.create!(product_number: 101100, size: 'M', brand_id: Brand.fourth.id, colorway: "Powder Blue", product_id: Product.find_by(product_number: 101100).id, stock: 10)
Size.create!(product_number: 101100, size: 'L', brand_id: Brand.fourth.id, colorway: "Powder Blue", product_id: Product.find_by(product_number: 101100).id, stock: 10)
Size.create!(product_number: 101100, size: 'XL', brand_id: Brand.fourth.id, colorway: "Powder Blue", product_id: Product.find_by(product_number: 101100).id, stock: 10)
Size.create!(product_number: 101100, size: 'XXL', brand_id: Brand.fourth.id, colorway: "Powder Blue", product_id: Product.find_by(product_number: 101100).id, stock: 10)

Product.create!(
  name: "Linen Blue Shirt with Mandarin collar",
  brand_id: Brand.fourth.id,
  product_type: "Button-Up",
  product_number: 100102,
  price: 88,
  description: "Light blue marl linen blend. Will keep you cool and looking stylish for all occasions.",
  fit_details: "3 body shapes for optimal fit. Granddad collar. Made in Spain",
  details: "55% linen 45% cotton Mandarin ",
  images: "https://cdn.shopify.com/s/files/1/1097/4660/products/linen-blue-shirt-with-mandarin-collar-shirts-gfw-clothing-587532.jpg?v=1583768516,https://cdn.shopify.com/s/files/1/1097/4660/products/linen-blue-shirt-with-mandarin-collar-shirts-gfw-clothing-653350_600x.jpg?v=1583768524")

Size.create!(product_number: 100102, size: 'XS', brand_id: Brand.fourth.id, colorway: "Powder Blue", product_id: Product.find_by(product_number: 100102).id, stock: 10)
Size.create!(product_number: 100102, size: 'S', brand_id: Brand.fourth.id, colorway: "Powder Blue", product_id: Product.find_by(product_number: 100102).id, stock: 10)
Size.create!(product_number: 100102, size: 'M', brand_id: Brand.fourth.id, colorway: "Powder Blue", product_id: Product.find_by(product_number: 100102).id, stock: 10)
Size.create!(product_number: 100102, size: 'L', brand_id: Brand.fourth.id, colorway: "Powder Blue", product_id: Product.find_by(product_number: 100102).id, stock: 10)
Size.create!(product_number: 100102, size: 'XL', brand_id: Brand.fourth.id, colorway: "Powder Blue", product_id: Product.find_by(product_number: 100102).id, stock: 10)
Size.create!(product_number: 100102, size: 'XXL', brand_id: Brand.fourth.id, colorway: "Powder Blue", product_id: Product.find_by(product_number: 100102).id, stock: 10)

Product.create!(
  name: "Unicorn Short Sleeve Shirt",
  brand_id: Brand.fourth.id,
  product_type: "Button-Up",
  product_number: 101101,
  price: 78,
  description: "Unicorns have taken on a special symbolism in recent years. The impossible is achievable. Hell yeah! (And if you look closely you'll see these come with added rainbow.)",
  fit_details: "Lightweight 100% cotton.  2 Sleeve lengths - fix with tab and button. Digitally printed and made in Spain.",
  details: "50% cotton / 35% linen / 15% polyester / Machine wash cold / Line dry",
  images: "https://cdn.shopify.com/s/files/1/1097/4660/products/unicorn-short-sleeve-shirt-shirts-gfw-clothing-818309.jpg?v=1579014986,https://cdn.shopify.com/s/files/1/1097/4660/products/unicorn-short-sleeve-shirt-shirts-gfw-clothing-826642_600x.jpg?v=1594456916,https://cdn.shopify.com/s/files/1/1097/4660/products/unicorn-short-sleeve-shirt-shirts-gfw-clothing-799863_600x.jpg?v=1579014994,https://cdn.shopify.com/s/files/1/1097/4660/products/unicorn-short-sleeve-shirt-shirts-gfw-clothing-985464.jpg?v=1579014064,https://cdn.shopify.com/s/files/1/1097/4660/products/unicorn-short-sleeve-shirt-shirts-gfw-clothing-846520.jpg?v=1579013241")

Size.create!(product_number: 101101, size: 'XS', brand_id: Brand.fourth.id, colorway: "Navy Unicorn", product_id: Product.find_by(product_number: 101101).id, stock: 10)
Size.create!(product_number: 101101, size: 'S', brand_id: Brand.fourth.id, colorway: "Navy Unicorn", product_id: Product.find_by(product_number: 101101).id, stock: 10)
Size.create!(product_number: 101101, size: 'M', brand_id: Brand.fourth.id, colorway: "Navy Unicorn", product_id: Product.find_by(product_number: 101101).id, stock: 10)
Size.create!(product_number: 101101, size: 'L', brand_id: Brand.fourth.id, colorway: "Navy Unicorn", product_id: Product.find_by(product_number: 101101).id, stock: 10)
Size.create!(product_number: 101101, size: 'XL', brand_id: Brand.fourth.id, colorway: "Navy Unicorn", product_id: Product.find_by(product_number: 101101).id, stock: 10)
Size.create!(product_number: 101101, size: 'XXL', brand_id: Brand.fourth.id, colorway: "Navy Unicorn", product_id: Product.find_by(product_number: 101101).id, stock: 10)


Product.create!(
  name: "Penguin Short Sleeve Shirt",
  brand_id: Brand.fourth.id,
  product_type: "Button-Up",
  product_number: 101102,
  price: 68,
  description: "Penguin short sleeve shirt which comes in 3 body shapes for optimal fit. ",
  fit_details: "Lightweight 100% cotton.  2 Sleeve lengths - fix with tab and button. Digitally printed and made in Spain.",
  details: "50% cotton / 35% linen / 15% polyester / Machine wash cold / Line dry",
  images: "https://cdn.shopify.com/s/files/1/1097/4660/products/penguin-short-sleeve-shirt-shirts-gfw-clothing-153731_600x.jpg?v=1579013600,https://cdn.shopify.com/s/files/1/1097/4660/products/penguin-short-sleeve-shirt-shirts-gfw-clothing-996130.jpg?v=1579013948,https://cdn.shopify.com/s/files/1/1097/4660/products/penguin-short-sleeve-shirt-shirts-gfw-clothing-272331_600x.jpg?v=1579014541,https://cdn.shopify.com/s/files/1/1097/4660/products/penguin-short-sleeve-shirt-shirts-gfw-clothing-893852.png?v=1579014220")

Size.create!(product_number: 101102, size: 'XS', brand_id: Brand.fourth.id, colorway: "Penguin Print", product_id: Product.find_by(product_number: 101102).id, stock: 10)
Size.create!(product_number: 101102, size: 'S', brand_id: Brand.fourth.id, colorway: "Penguin Print", product_id: Product.find_by(product_number: 101102).id, stock: 10)
Size.create!(product_number: 101102, size: 'M', brand_id: Brand.fourth.id, colorway: "Penguin Print", product_id: Product.find_by(product_number: 101102).id, stock: 10)
Size.create!(product_number: 101102, size: 'L', brand_id: Brand.fourth.id, colorway: "Penguin Print", product_id: Product.find_by(product_number: 101102).id, stock: 10)
Size.create!(product_number: 101102, size: 'XL', brand_id: Brand.fourth.id, colorway: "Penguin Print", product_id: Product.find_by(product_number: 101102).id, stock: 10)
Size.create!(product_number: 101102, size: 'XXL', brand_id: Brand.fourth.id, colorway: "Penguin Print", product_id: Product.find_by(product_number: 101102).id, stock: 10)

Product.create!(
  name: "Sugar Skulls Short Sleeve Shirt",
  brand_id: Brand.fourth.id,
  product_type: "Button-Up",
  product_number: 101103,
  price: 68,
  description: "Our short sleeve variation of our popular skull shirt which comes in 4 body shapes for optimal fit.",
  fit_details: "Lightweight 100% cotton.  2 Sleeve lengths - fix with tab and button. Made in Britain.",
  details: "50% cotton / 35% linen / 15% polyester / Machine wash cold / Line dry",
  images: "https://cdn.shopify.com/s/files/1/1097/4660/products/sugar-skulls-short-sleeve-shirt-shirts-gfw-clothing-971441.jpg?v=1585140680,https://cdn.shopify.com/s/files/1/1097/4660/products/sugar-skulls-short-sleeve-shirt-shirts-gfw-clothing-167686_600x.jpg?v=1579015096,https://cdn.shopify.com/s/files/1/1097/4660/products/sugar-skulls-short-sleeve-shirt-shirts-gfw-clothing-100022_600x.png?v=1579015006,https://cdn.shopify.com/s/files/1/1097/4660/products/sugar-skulls-short-sleeve-shirt-shirts-gfw-clothing-426424_600x.jpg?v=1579014379")

Size.create!(product_number: 101103, size: 'XS', brand_id: Brand.fourth.id, colorway: "Sugar Skull Multi", product_id: Product.find_by(product_number: 101103).id, stock: 10)
Size.create!(product_number: 101103, size: 'S', brand_id: Brand.fourth.id, colorway: "Sugar Skull Multi", product_id: Product.find_by(product_number: 101103).id, stock: 10)
Size.create!(product_number: 101103, size: 'M', brand_id: Brand.fourth.id, colorway: "Sugar Skull Multi", product_id: Product.find_by(product_number: 101103).id, stock: 10)
Size.create!(product_number: 101103, size: 'L', brand_id: Brand.fourth.id, colorway: "Sugar Skull Multi", product_id: Product.find_by(product_number: 101103).id, stock: 10)
Size.create!(product_number: 101103, size: 'XL', brand_id: Brand.fourth.id, colorway: "Sugar Skull Multi", product_id: Product.find_by(product_number: 101103).id, stock: 10)
Size.create!(product_number: 101103, size: 'XXL', brand_id: Brand.fourth.id, colorway: "Sugar Skull Multi", product_id: Product.find_by(product_number: 101103).id, stock: 10)

Product.create!(
  name: "Boxer Shorts - Navy - Unisex",
  brand_id: Brand.fourth.id,
  product_type: "Underwear",
  product_number: 500103,
  price: 24,
  description: "Navy boxer shorts with white trim and 'no labels' waistband. Unique design means that these super comfy boxers can be worn by anyone. Double layer where it matters, for those with or without external genitals. Yup everyone! With bamboo's incredibly soft, stretchy but durable properties, we are confident that you will find these the most comfortable boxers ever. Boxers for men, boxers for women, boxers for every body.",
  fit_details: "Unique genuinely unisex design. ‘no labels’ 3.5cm deep soft elasticated waistband. Moisture wicking, breathable. Made in Britain.",
  details: "95% rayon from bamboo, 5% elastane.",
  images: "https://cdn.shopify.com/s/files/1/1097/4660/products/boxer-shorts-navy-unisex-underwear-gfw-clothing-737419.jpg?v=1579013372,https://cdn.shopify.com/s/files/1/1097/4660/products/boxer-shorts-navy-unisex-underwear-gfw-clothing-686124_600x.jpg?v=1579016254")

Size.create!(product_number: 500103, size: 'XS', brand_id: Brand.fourth.id, colorway: "Navy", product_id: Product.find_by(product_number: 500103).id, stock: 10)
Size.create!(product_number: 500103, size: 'S', brand_id: Brand.fourth.id, colorway: "Navy", product_id: Product.find_by(product_number: 500103).id, stock: 10)
Size.create!(product_number: 500103, size: 'M', brand_id: Brand.fourth.id, colorway: "Navy", product_id: Product.find_by(product_number: 500103).id, stock: 10)
Size.create!(product_number: 500103, size: 'L', brand_id: Brand.fourth.id, colorway: "Navy", product_id: Product.find_by(product_number: 500103).id, stock: 10)
Size.create!(product_number: 500103, size: 'XL', brand_id: Brand.fourth.id, colorway: "Navy", product_id: Product.find_by(product_number: 500103).id, stock: 10)

Product.create!(
  name: "Boxer Shorts - All Black - Unisex",
  brand_id: Brand.fourth.id,
  product_type: "Underwear",
  product_number: 500104,
  price: 24,
  description: "Black boxer shorts with white trim and 'no labels' waistband. Unique design means that these super comfy boxers can be worn by anyone. Double layer where it matters, for those with or without external genitals. Yup everyone! With bamboo's incredibly soft, stretchy but durable properties, we are confident that you will find these the most comfortable boxers ever. Boxers for men, boxers for women, boxers for every body.",
  fit_details: "Unique genuinely unisex design. ‘no labels’ 3.5cm deep soft elasticated waistband. Moisture wicking, breathable. Made in Britain.",
  details: "95% rayon from bamboo, 5% elastane.",
  images: "https://cdn.shopify.com/s/files/1/1097/4660/products/boxer-shorts-all-black-unisex-underwear-gfw-clothing-223834.jpg?v=1579016126,https://cdn.shopify.com/s/files/1/1097/4660/products/boxer-shorts-all-black-unisex-underwear-gfw-clothing-735015_600x.jpg?v=1579014412,https://cdn.shopify.com/s/files/1/1097/4660/products/boxer-shorts-all-black-unisex-underwear-gfw-clothing-396244_600x.jpg?v=1579013642")

Size.create!(product_number: 500104, size: 'XS', brand_id: Brand.fourth.id, colorway: "Black", product_id: Product.find_by(product_number: 500104).id, stock: 10)
Size.create!(product_number: 500104, size: 'S', brand_id: Brand.fourth.id, colorway: "Black", product_id: Product.find_by(product_number: 500104).id, stock: 10)
Size.create!(product_number: 500104, size: 'M', brand_id: Brand.fourth.id, colorway: "Black", product_id: Product.find_by(product_number: 500104).id, stock: 10)
Size.create!(product_number: 500104, size: 'L', brand_id: Brand.fourth.id, colorway: "Black", product_id: Product.find_by(product_number: 500104).id, stock: 10)
Size.create!(product_number: 500104, size: 'XL', brand_id: Brand.fourth.id, colorway: "Black", product_id: Product.find_by(product_number: 500104).id, stock: 10)

Product.create!(
  name: "Boxer Shorts - Orange - Unisex",
  brand_id: Brand.fourth.id,
  product_type: "Underwear",
  product_number: 500105,
  price: 24,
  description: "Orange boxer shorts with white trim and 'no labels' waistband. Unique design means that these super comfy boxers can be worn by anyone. Double layer where it matters, for those with or without external genitals. Yup everyone! With bamboo's incredibly soft, stretchy but durable properties, we are confident that you will find these the most comfortable boxers ever. Boxers for men, boxers for women, boxers for every body.",
  fit_details: "Unique genuinely unisex design. ‘no labels’ 3.5cm deep soft elasticated waistband. Moisture wicking, breathable. Made in Britain.",
  details: "95% rayon from bamboo, 5% elastane.",
  images: "https://cdn.shopify.com/s/files/1/1097/4660/products/boxer-shorts-orange-unisex-underwear-gfw-clothing-499636.jpg?v=1579013883,https://cdn.shopify.com/s/files/1/1097/4660/products/boxer-shorts-orange-unisex-underwear-gfw-clothing-160091_600x.jpg?v=1579014787,https://cdn.shopify.com/s/files/1/1097/4660/products/boxer-shorts-orange-unisex-underwear-gfw-clothing-496095_600x.jpg?v=1579015485,https://cdn.shopify.com/s/files/1/1097/4660/products/boxer-shorts-orange-unisex-underwear-gfw-clothing-417055_600x.jpg?v=1579014209,https://cdn.shopify.com/s/files/1/1097/4660/products/boxer-shorts-orange-unisex-underwear-gfw-clothing-846086_600x.jpg?v=1579016076")

Size.create!(product_number: 500105, size: 'XS', brand_id: Brand.fourth.id, colorway: "Orange", product_id: Product.find_by(product_number: 500105).id, stock: 10)
Size.create!(product_number: 500105, size: 'S', brand_id: Brand.fourth.id, colorway: "Orange", product_id: Product.find_by(product_number: 500105).id, stock: 10)
Size.create!(product_number: 500105, size: 'M', brand_id: Brand.fourth.id, colorway: "Orange", product_id: Product.find_by(product_number: 500105).id, stock: 10)
Size.create!(product_number: 500105, size: 'L', brand_id: Brand.fourth.id, colorway: "Orange", product_id: Product.find_by(product_number: 500105).id, stock: 10)
Size.create!(product_number: 500105, size: 'XL', brand_id: Brand.fourth.id, colorway: "Orange", product_id: Product.find_by(product_number: 500105).id, stock: 10)

Product.create!(
  name: "FREE BY NATURE ROSE T-SHIRT",
  brand_id: Brand.find_by(name: "Stuzo Clothing").id,
  product_type: "Tee Shirt",
  product_number: 102103,
  price: 35,
  description: "Your freedom is a gift, use it!  This gender free t-shirt was inspired by the great Frida Khalo. Sand color pictured.",
  details: "100% Cotton. Made and hand printed in Los Angeles",
  images: "https://cdn.shopify.com/s/files/1/0247/1257/products/freebynature_tee_front.jpg?v=1574121770,https://cdn.shopify.com/s/files/1/0247/1257/products/freebynature_tee_back.jpg?v=1574121770")

Size.create!(product_number: 102103, size: 'S', brand_id: Brand.find_by(name: "Stuzo Clothing").id, colorway: "Sand", product_id: Product.find_by(product_number: 102103).id, stock: 10)
Size.create!(product_number: 102103, size: 'M', brand_id: Brand.find_by(name: "Stuzo Clothing").id, colorway: "Sand", product_id: Product.find_by(product_number: 102103).id, stock: 10)
Size.create!(product_number: 102103, size: 'L', brand_id: Brand.find_by(name: "Stuzo Clothing").id, colorway: "Sand", product_id: Product.find_by(product_number: 102103).id, stock: 10)
Size.create!(product_number: 102103, size: 'XL', brand_id: Brand.find_by(name: "Stuzo Clothing").id, colorway: "Sand", product_id: Product.find_by(product_number: 102103).id, stock: 10)
Size.create!(product_number: 102103, size: 'XXL', brand_id: Brand.find_by(name: "Stuzo Clothing").id, colorway: "Sand", product_id: Product.find_by(product_number: 102103).id, stock: 10)
Size.create!(product_number: 102103, size: 'XXXL', brand_id: Brand.find_by(name: "Stuzo Clothing").id, colorway: "Sand", product_id: Product.find_by(product_number: 102103).id, stock: 10)

Product.create!(
  name: "FREE BY NATURE HOODIE",
  brand_id: Brand.find_by(name: "Stuzo Clothing").id,
  product_type: "Hoodie",
  product_number: 104100,
  price: 75,
  description: "Freedom is a state of mind, body and soul.  Express it with this gender free hoodie.",
  details: "50 Cotton 50% Poly. Made and hand printed in Los Angeles",
  images: "https://cdn.shopify.com/s/files/1/0247/1257/products/freebynature_hoodie2.jpg?v=1592023882,https://cdn.shopify.com/s/files/1/0247/1257/products/freebynature_hoodie.jpg?v=1592023924")
Size.create!(product_number: 104100, size: 'S', brand_id: Brand.find_by(name: "Stuzo Clothing").id, colorway: "Sand", product_id: Product.find_by(product_number: 104100).id, stock: 10)
Size.create!(product_number: 104100, size: 'M', brand_id: Brand.find_by(name: "Stuzo Clothing").id, colorway: "Sand", product_id: Product.find_by(product_number: 104100).id, stock: 10)
Size.create!(product_number: 104100, size: 'L', brand_id: Brand.find_by(name: "Stuzo Clothing").id, colorway: "Sand", product_id: Product.find_by(product_number: 104100).id, stock: 10)
Size.create!(product_number: 104100, size: 'XL', brand_id: Brand.find_by(name: "Stuzo Clothing").id, colorway: "Sand", product_id: Product.find_by(product_number: 104100).id, stock: 10)
Size.create!(product_number: 104100, size: 'XXL', brand_id: Brand.find_by(name: "Stuzo Clothing").id, colorway: "Sand", product_id: Product.find_by(product_number: 104100).id, stock: 10)
Size.create!(product_number: 104100, size: 'XXXL', brand_id: Brand.find_by(name: "Stuzo Clothing").id, colorway: "Sand", product_id: Product.find_by(product_number: 104100).id, stock: 10)

Product.create!(
  name: "FREE LONG SLEEVE T-SHIRT",
  brand_id: Brand.find_by(name: "Stuzo Clothing").id,
  product_type: "Long Sleeve Tee Shirt",
  product_number: 103100,
  price: 59,
  description: "Wear your badge of freedom on your sleeve.",
  images: "https://cdn.shopify.com/s/files/1/0247/1257/products/free_ls.jpg?v=1574117303,https://cdn.shopify.com/s/files/1/0247/1257/products/free_longsleeve2.jpg?v=1574117303,https://cdn.shopify.com/s/files/1/0247/1257/products/free_ls2.jpg?v=1574117303,https://cdn.shopify.com/s/files/1/0247/1257/products/free_ls_back.jpg?v=1574117303")
Size.create!(product_number: 103100, size: 'S', brand_id: Brand.find_by(name: "Stuzo Clothing").id, colorway: "Sand", product_id: Product.find_by(product_number: 103100).id, stock: 10)
Size.create!(product_number: 103100, size: 'M', brand_id: Brand.find_by(name: "Stuzo Clothing").id, colorway: "Sand", product_id: Product.find_by(product_number: 103100).id, stock: 10)
Size.create!(product_number: 103100, size: 'L', brand_id: Brand.find_by(name: "Stuzo Clothing").id, colorway: "Sand", product_id: Product.find_by(product_number: 103100).id, stock: 10)
Size.create!(product_number: 103100, size: 'XL', brand_id: Brand.find_by(name: "Stuzo Clothing").id, colorway: "Sand", product_id: Product.find_by(product_number: 103100).id, stock: 10)
Size.create!(product_number: 103100, size: 'XXL', brand_id: Brand.find_by(name: "Stuzo Clothing").id, colorway: "Sand", product_id: Product.find_by(product_number: 103100).id, stock: 10)
Size.create!(product_number: 103100, size: 'XXXL', brand_id: Brand.find_by(name: "Stuzo Clothing").id, colorway: "Sand", product_id: Product.find_by(product_number: 103100).id, stock: 10)

Product.create!(
  name: "FREE BY NATURE VEST",
  brand_id: Brand.find_by(name: "Stuzo Clothing").id,
  product_type: "Tee Shirt",
  product_number: 105100,
  price: 85,
  description: "Live free by nature.  Custom and hand made.",
  images: "https://cdn.shopify.com/s/files/1/0247/1257/products/freebynature_vest.jpg?v=1574114961,https://cdn.shopify.com/s/files/1/0247/1257/products/freebynature_vest2.jpg?v=1574114961")
Size.create!(product_number: 105100, size: 'S', brand_id: Brand.find_by(name: "Stuzo Clothing").id, colorway: "Sand", product_id: Product.find_by(product_number: 105100).id, stock: 10)
Size.create!(product_number: 105100, size: 'M', brand_id: Brand.find_by(name: "Stuzo Clothing").id, colorway: "Sand", product_id: Product.find_by(product_number: 105100).id, stock: 10)
Size.create!(product_number: 105100, size: 'L', brand_id: Brand.find_by(name: "Stuzo Clothing").id, colorway: "Sand", product_id: Product.find_by(product_number: 105100).id, stock: 10)
Size.create!(product_number: 105100, size: 'XL', brand_id: Brand.find_by(name: "Stuzo Clothing").id, colorway: "Sand", product_id: Product.find_by(product_number: 105100).id, stock: 10)
Size.create!(product_number: 105100, size: 'XXL', brand_id: Brand.find_by(name: "Stuzo Clothing").id, colorway: "Sand", product_id: Product.find_by(product_number: 105100).id, stock: 10)
Size.create!(product_number: 105100, size: 'XXXL', brand_id: Brand.find_by(name: "Stuzo Clothing").id, colorway: "Sand", product_id: Product.find_by(product_number: 105100).id, stock: 10)

Product.create!(
  name: " 
FREE BY NATURE JOGGERS",
  brand_id: Brand.find_by(name: "Stuzo Clothing").id,
  product_type: "Pant",
  product_number: 200103,
  price: 85,
  description: "Live free by nature.  Custom and hand made.",
  images: "https://cdn.shopify.com/s/files/1/0247/1257/products/freebynature_joggers.jpg?v=1578355783,https://cdn.shopify.com/s/files/1/0247/1257/products/freebynature_joggers2.jpg?v=1578355783")
Size.create!(product_number: 200103, size: 'S', brand_id: Brand.find_by(name: "Stuzo Clothing").id, colorway: "Sand", product_id: Product.find_by(product_number: 200103).id, stock: 10)
Size.create!(product_number: 200103, size: 'M', brand_id: Brand.find_by(name: "Stuzo Clothing").id, colorway: "Sand", product_id: Product.find_by(product_number: 200103).id, stock: 10)
Size.create!(product_number: 200103, size: 'L', brand_id: Brand.find_by(name: "Stuzo Clothing").id, colorway: "Sand", product_id: Product.find_by(product_number: 200103).id, stock: 10)
Size.create!(product_number: 200103, size: 'XL', brand_id: Brand.find_by(name: "Stuzo Clothing").id, colorway: "Sand", product_id: Product.find_by(product_number: 200103).id, stock: 10)
Size.create!(product_number: 200103, size: 'XXL', brand_id: Brand.find_by(name: "Stuzo Clothing").id, colorway: "Sand", product_id: Product.find_by(product_number: 200103).id, stock: 10)

Product.create!(
  name: "LACE BUTTON DOWN",
  brand_id: Brand.find_by(name: "Stuzo Clothing").id,
  product_type: "Long Sleeve Button Up",
  product_number: 100103,
  price: 125,
  description: "Enjoy this custom made lace long sleeve button down.  Wear it tucked in or let it out.  Available in two colors, black & white.  Model is wearing a size small.",
  details: "100% polyester. Made in Los Angeles.",
  images: "https://cdn.shopify.com/s/files/1/0247/1257/products/lace_white_franky.jpg?v=1597312592,https://cdn.shopify.com/s/files/1/0247/1257/products/lace_blk_frankie.jpg?v=1597312592,https://cdn.shopify.com/s/files/1/0247/1257/products/lace_buttondown2.jpg?v=1584584205,https://cdn.shopify.com/s/files/1/0247/1257/products/lace_buttondown_back.jpg?v=1584584205")
Size.create!(product_number: 100103, size: 'S', brand_id: Brand.find_by(name: "Stuzo Clothing").id, colorway: "White", product_id: Product.find_by(product_number: 100103).id, stock: 10)
Size.create!(product_number: 100103, size: 'M', brand_id: Brand.find_by(name: "Stuzo Clothing").id, colorway: "White", product_id: Product.find_by(product_number: 100103).id, stock: 10)
Size.create!(product_number: 100103, size: 'L', brand_id: Brand.find_by(name: "Stuzo Clothing").id, colorway: "White", product_id: Product.find_by(product_number: 100103).id, stock: 10)
Size.create!(product_number: 100103, size: 'XL', brand_id: Brand.find_by(name: "Stuzo Clothing").id, colorway: "White", product_id: Product.find_by(product_number: 100103).id, stock: 10)
Size.create!(product_number: 100103, size: 'XXL', brand_id: Brand.find_by(name: "Stuzo Clothing").id, colorway: "White", product_id: Product.find_by(product_number: 100103).id, stock: 10)
Size.create!(product_number: 100103, size: 'S', brand_id: Brand.find_by(name: "Stuzo Clothing").id, colorway: "Black", product_id: Product.find_by(product_number: 100103).id, stock: 10)
Size.create!(product_number: 100103, size: 'M', brand_id: Brand.find_by(name: "Stuzo Clothing").id, colorway: "Black", product_id: Product.find_by(product_number: 100103).id, stock: 10)
Size.create!(product_number: 100103, size: 'L', brand_id: Brand.find_by(name: "Stuzo Clothing").id, colorway: "Black", product_id: Product.find_by(product_number: 100103).id, stock: 10)
Size.create!(product_number: 100103, size: 'XL', brand_id: Brand.find_by(name: "Stuzo Clothing").id, colorway: "Black", product_id: Product.find_by(product_number: 100103).id, stock: 10)
Size.create!(product_number: 100103, size: 'XXL', brand_id: Brand.find_by(name: "Stuzo Clothing").id, colorway: "Black", product_id: Product.find_by(product_number: 100103).id, stock: 10)



Favorite.create!(member_id: User.first.id, product_id: Product.second.id)

