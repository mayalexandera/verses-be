Brand.destroy_all
Plan.destroy_all
User.destroy_all
Product.destroy_all
Size.destroy_all
PlanMembership.destroy_all
Favorite.destroy_all

Brand.create!(name: "Tomboy X", url: "https://tomboyx.com/", size_chart: "https://tomboyx.com/pages/size-chart#")
Brand.create!(name: "Wildfang", url: "wildfang.com", size_chart: "https://cdn.shopify.com/s/files/1/0417/7870/8643/files/size.png?v=1601362780")
Brand.create!(name: "Kirrin Finch", url: "https://kirrinfinch.com/")
Brand.create!(name: "Gender Free World", url: "https://www.genderfreeworld.com/", size_chart: "https://www.genderfreeworld.com/pages/our-sizing")
Brand.create!(name: "Stuzo Clothing", url: "https://www.stuzoclothing.com/")

Plan.create!(items: 4, price: 89,  description: "Great for a monthly pick-me-up with versatile essentials and statement pieces.", features: "1 shipment/month,Basic closet access")
Plan.create!(items: 8, price: 135, description: "Great for outfit updates and special occasions, including work and weekend looks.", features: "2 shipments/month,Full closet access,Rent 4 items at a time")
Plan.create!(items: 16, price: 159, description: "Great for weekly newness for work, weekends, special events and more.", features: '4 shipments/month,Full closet access,Rent 4 items at a time')

User.create!(name: "Mary Poppins", email: "mpoppins@gmail.com", session_token: SecureRandom.urlsafe_base64, password:"password")
User.create!(name: "KD Lang", email: "KDlang@gmail.com", session_token: SecureRandom.urlsafe_base64, password:"password")
User.create!(name: "Annabelle Foster", email: "aFoster@gmail.com", session_token: SecureRandom.urlsafe_base64, password:"password")

Product.create!(name: "HIPSTER",
brand_id: Brand.first.id,
product_type: "Underwear",
images: "https://cdn.shopify.com/s/files/1/0204/2302/products/Hipster_BlackRainbow_1.jpg?v=1594153874,https://cdn.shopify.com/s/files/1/0204/2302/products/Hipster_BlackRainbow_2.jpg?v=1594153875,https://cdn.shopify.com/s/files/1/0204/2302/products/Hipster_RB_PurpleRainbow_1.jpg?v=1593376604,https://cdn.shopify.com/s/files/1/0204/2302/products/Hipster_RB_PurpleRainbow_2.jpg?v=1593376605",
product_number: 500100,
price: 20,
description: "Add a blast of purple-powered prismatic pizzazz to your day. Our newest style, this sporty cut is ready to move with you everyday. A full coverage, hip-hugging fit with a peek of cheek is made with supersoft, breathable cotton and our signature stay-put waistband for all day-comfort with no pinching or riding up. Fit-tested on all body types.", fit_details: "sizes XS-4X.Signature stay-put silky soft rainbow waistband.95% OEKO-TEX certified cotton, 5% spandex.Smooth, durable flatlock seams won’t irritate or chafe. Mid rise, hip-sitting fit.Machine wash cold, tumble dry low.")

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
description: "Our most popular style, known the world over for its epic wedgie-free comfort. High-quality cotton with a hint of stretch provides all-day comfort while our signature stay-put waistband delivers a reliable fit that won't pinch or ride up.Fit-tested on all body types, sizes XS - 4X", fit_details: "Signature stay-put silky soft white Tomboy X waistband.95% OEKO-TEX Certified cotton, 5% spandex.Smooth, durable flatlock seams won’t irritate or chafe.Mid rise fit, 2 1/2\" inseam. Machine wash cold, tumble dry low.")

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

Product.create!(name: "4.5\" SHORTS", brand_id: Brand.first.id, product_type: "Underwear", product_number: 500102, price: 32, description: "We took a classic and made it into a TomboyX icon, the first truly gender-neutral boxer brief. These essential Tomboy trunks pair quality cotton with just the right amount of stretch for a smooth, body-hugging fit. Fit-tested on all body types, sizes XS-4X.", fit_details: "Signature stay-put silky soft TomboyX waistband. 95% OEKO-TEX Certified cotton, 5% spandex. Smooth, durable flatlock seams won’t irritate or chafe. Mid rise fit, 4 1/2” inseam. Machine wash cold, tumble dry low.", images: "https://cdn.shopify.com/s/files/1/0204/2302/products/4-5InTrunks_BL_NextGenBlack_1_65b2e28e-4835-4c26-a7e2-b121ca529331.jpg?v=1588724679,https://cdn.shopify.com/s/files/1/0204/2302/products/4-5InTrunks_BL_NextGenBlack_2.jpg?v=1588724679,https://cdn.shopify.com/s/files/1/0204/2302/products/4-5InTrunks_BL_NextGenCharcoal_1_2bab2fce-8588-4104-b739-becadd572771.JPG?v=1572461790,https://cdn.shopify.com/s/files/1/0204/2302/products/4-5InTrunks_BL_NextGenCharcoal_2.jpg?v=1573080865")

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

Product.create!(name: "Workwear Coverall", brand_id: Brand.second.id, product_type: "Coverall", product_number: 201100-01, price: 188, description: 'Soft, comfortable, and your whole look in one!', fit_details: 'Leah is wearing size S, Diona is wearing size XXL', details: 'Pop stitch detailing, Deep & functional pockets, 28" inseam, 97% cotton, 3% spandex, Machine wash cold, dry flat, The fabric will stretch to your figure and then return back to original shape after washing.', images: "https://cdn.shopify.com/s/files/1/0417/7870/8643/products/1_10.6_GREEN_COVERALL_2048x.jpg?v=1602627011,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/4_10.6_GREEN_COVERALL_2048x.jpg?v=1602627011,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/5_10.6_GREEN_COVERALL._2048x.jpg?v=1602627013,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/6_10.6_GREEN_COVERALL_2048x.jpg?v=1602627011,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/7_10.6_GREEN_COVERALL_2048x.jpg?v=160262701,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/8_10.6_GREEN_COVERALL_2048x.jpg?v=1602627012,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/9_10.6_GREEN_COVERALL_2048x.jpg?v=1602627013,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/10_10.6_GREEN_COVERALL_2048x.jpg?v=1602627011,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/11_10.6_GREEN_COVERALL_2048x.jpg?v=1602627012")

Size.create!(product_number: 201100-01, size: "XS", brand_id: Brand.second.id, colorway: 'Botanical Green', product_id: Product.find_by(product_number: 201100-01).id, stock: 10)
Size.create!(product_number: 201100-01, size: "S", brand_id: Brand.second.id, colorway: 'Botanical Green', product_id: Product.find_by(product_number: 201100-01).id, stock: 10)
Size.create!(product_number: 201100-01, size: "M", brand_id: Brand.second.id, colorway: 'Botanical Green', product_id: Product.find_by(product_number: 201100-01).id, stock: 10)
Size.create!(product_number: 201100-01, size: "L", brand_id: Brand.second.id, colorway: 'Botanical Green', product_id: Product.find_by(product_number: 201100-01).id, stock: 10)
Size.create!(product_number: 201100-01, size: "XL", brand_id: Brand.second.id, colorway: 'Botanical Green', product_id: Product.find_by(product_number: 201100-01).id, stock: 10)
Size.create!(product_number: 201100-01, size: "XXL", brand_id: Brand.second.id, colorway: 'Botanical Green', product_id: Product.find_by(product_number: 201100-01).id, stock: 10)

Product.create!(name: "Workwear Coverall", brand_id: Brand.second.id, product_type: "Coverall", product_number: 201100-02, price: 188, description: 'Soft, comfortable, and your whole look in one!', fit_details: 'Querida is wearing size S, Tambrie is wearing size XXL', details: 'Pop stitch detailing, Deep & functional pockets, 28" inseam, 97% cotton, 3% spandex, Machine wash cold, dry flat, The fabric will stretch to your figure and then return back to original shape after washing.', images: "https://cdn.shopify.com/s/files/1/0417/7870/8643/products/1_9.8.20_LS_AZTEC_COVERALL_2048x.jpg?v=1601308939,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/2_9.8.20_LS_AZTEC_COVERALL_2048x.jpg?v=1601308941,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/3_9.8.20_LS_AZTEC_COVERALL_2048x.jpg?v=1601308941,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/4H_9.8.20_LS_AZTEC_COVERALL_2048x.jpg?v=1601308942,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/5_9.8.20_LS_AZTEC_COVERALL_2048x.jpg?v=1601308940,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/6_9.8.20_LS_AZTEC_COVERALL_2048x.jpg?v=1601308939,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/7_9.8.20_LS_AZTEC_COVERALL_2048x.jpg?v=1601308940,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/8_9.8.20_LS_AZTEC_COVERALL_2048x.jpg?v=1601308940,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/9R_9.8.20_LS_AZTEC_COVERALL_2048x.jpg?v=1601308939,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/109.8.20_LS_AZTEC_COVERALL_2048x.jpg?v=1601308941")

Size.create!(product_number: 201100-02, size: "XS", brand_id: Brand.second.id, colorway: 'Coffee', product_id: Product.find_by(product_number: 201100-02).id, stock: 10)
Size.create!(product_number: 201100-02, size: "S", brand_id: Brand.second.id, colorway: 'Coffee', product_id: Product.find_by(product_number: 201100-02).id, stock: 10)
Size.create!(product_number: 201100-02, size: "M", brand_id: Brand.second.id, colorway: 'Coffee', product_id: Product.find_by(product_number: 201100-02).id, stock: 10)
Size.create!(product_number: 201100-02, size: "L", brand_id: Brand.second.id, colorway: 'Coffee', product_id: Product.find_by(product_number: 201100-02).id, stock: 10)
Size.create!(product_number: 201100-02, size: "XL", brand_id: Brand.second.id, colorway: 'Coffee', product_id: Product.find_by(product_number: 201100-02).id, stock: 10)
Size.create!(product_number: 201100-02, size: "XXL", brand_id: Brand.second.id, colorway: 'Coffee', product_id: Product.find_by(product_number: 201100-02).id, stock: 10)

Product.create!(name: "Workwear Coverall", brand_id: Brand.second.id, product_type: "Coverall", product_number: 201100-03, price: 188, description: 'Soft, comfortable, and your whole look in one - now in a cozy corduroy for fall!', fit_details: 'Natalia is wearing size M, Tambrie is wearing size XXL', details: 'Pop stitch detailing, Deep & functional pockets, 28" inseam, 97% cotton, 3% spandex, Machine wash cold, dry flat, The fabric will stretch to your figure and then return back to original shape after washing.', images: "https://cdn.shopify.com/s/files/1/0417/7870/8643/products/1_10.6_CORD_COVERALL_2048x.jpg?v=1602616974,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/3_10.6_CORD_COVERALL_2048x.jpg?v=1602616975,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/4_10.6_CORD_COVERALL_2048x.jpg?v=1602616974,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/5_10.6_CORD_COVERALL_2048x.jpg?v=1602616973,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/6_10.6_CORD_COVERALL_2048x.jpg?v=1602616975,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/7_10.6_CORD_COVERALL_2048x.jpg?v=1602616976,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/8_10.6_CORD_COVERALL_2048x.jpg?v=1602616974,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/9_10.6_CORD_COVERALL_2048x.jpg?v=1602616974,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/10_10.6_CORD_COVERALL_2048x.jpg?v=1602616974,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/11_10.6_CORD_COVERALL_2048x.jpg?v=1602616975")

Size.create!(product_number: 201100-03, size: "XS", brand_id: Brand.second.id, colorway: 'Merlot', product_id: Product.find_by(product_number: 201100-03).id, stock: 10)
Size.create!(product_number: 201100-03, size: "S", brand_id: Brand.second.id, colorway: 'Merlot', product_id: Product.find_by(product_number: 201100-03).id, stock: 10)
Size.create!(product_number: 201100-03, size: "M", brand_id: Brand.second.id, colorway: 'Merlot', product_id: Product.find_by(product_number: 201100-03).id, stock: 10)
Size.create!(product_number: 201100-03, size: "L", brand_id: Brand.second.id, colorway: 'Merlot', product_id: Product.find_by(product_number: 201100-03).id, stock: 10)
Size.create!(product_number: 201100-03, size: "XL", brand_id: Brand.second.id, colorway: 'Merlot', product_id: Product.find_by(product_number: 201100-03).id, stock: 10)
Size.create!(product_number: 201100-03, size: "XXL", brand_id: Brand.second.id, colorway: 'Merlot', product_id: Product.find_by(product_number: 201100-03).id, stock: 10)

Product.create!(name: "Workwear Coverall", brand_id: Brand.second.id, product_type: "Coverall", product_number: 201100-04, price: 188, description: 'Soft, comfortable, and your whole look in one!', fit_details: 'Betty is wearing size XS,Tia is wearing size L', details: 'Pop stitch detailing, Deep & functional pockets, 28" inseam, 97% cotton, 3% spandex, Machine wash cold, dry flat, The fabric will stretch to your figure and then return back to original shape after washing.', images: "https://cdn.shopify.com/s/files/1/0417/7870/8643/products/h1-bluecoveralls_2048x.jpg?v=1600972165,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/2-bluecoveralls_2048x.jpg?v=1600972165,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/3-bluecoveralls_2048x.jpg?v=1600972165,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/4-bluecoveralls_2048x.jpg?v=1600972165,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/5-bluecoveralls_2048x.jpg?v=1600972165,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/7-bluecoveralls_2048x.jpg?v=1600972165,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/8-bluecoveralls_2048x.jpg?v=1600972165,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/9-bluecoveralls_2048x.jpg?v=1600972165,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/6r-bluecoveralls_2048x.jpg?v=1600972165")

Size.create!(product_number: 201100-04, size: "XS", brand_id: Brand.second.id, colorway: 'Royal Blue', product_id: Product.find_by(product_number: 201100-04).id, stock: 10)
Size.create!(product_number: 201100-04, size: "S", brand_id: Brand.second.id, colorway: 'Royal Blue', product_id: Product.find_by(product_number: 201100-04).id, stock: 10)
Size.create!(product_number: 201100-04, size: "M", brand_id: Brand.second.id, colorway: 'Royal Blue', product_id: Product.find_by(product_number: 201100-04).id, stock: 10)
Size.create!(product_number: 201100-04, size: "L", brand_id: Brand.second.id, colorway: 'Royal Blue', product_id: Product.find_by(product_number: 201100-04).id, stock: 10)
Size.create!(product_number: 201100-04, size: "XL", brand_id: Brand.second.id, colorway: 'Royal Blue', product_id: Product.find_by(product_number: 201100-04).id, stock: 10)
Size.create!(product_number: 201100-04, size: "XXL", brand_id: Brand.second.id, colorway: 'Royal Blue', product_id: Product.find_by(product_number: 201100-04).id, stock: 10)

Product.create!(name: "Empower Houndstooth Vest", brand_id: Brand.second.id, product_type: "Vest", product_number: 301100, price: 88, description: 'Pair this vest with your favorite jeans, chinos, matching suit or mix-and-match for a winning look no matter the occasion.', fit_details: 'Julie is wearing size XS,Tambrie is wearing size XXL ', details: 'Tailored fit,5 button closure,2 welt pockets,Fully lined,Premium construction,Medium: 19.25" across chest,65% Polyester, 33% Rayon, 2% Spandex,Dry clean only', images: "https://cdn.shopify.com/s/files/1/0417/7870/8643/products/1_10.6_HOUNDSTOOTH_VEST_2048x.jpg?v=1602026756,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/3_10.6_HOUNDSTOOTH_VEST_2048x.jpg?v=1602026790,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/4_10.6_HOUNDSTOOTH_VEST_2048x.jpg?v=1602026790,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/5_10.6_HOUNDSTOOTH_VEST_2048x.jpg?v=1602026790,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/6_10.6_HOUNDSTOOTH_VEST_2048x.jpg?v=1602026789,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/7_10.6_HOUNDSTOOTH_VEST_2048x.jpg?v=1602026790,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/9_10.6_HOUNDSTOOTH_VEST_2048x.jpg?v=1602026791,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/9_10.6_HOUNDSTOOTH_VEST_2048x.jpg?v=1602026791")

Size.create!(product_number: 301100, size: "XS", brand_id: Brand.second.id, colorway: 'Houndstooth', product_id: Product.find_by(product_number: 301100).id, stock: 10)
Size.create!(product_number: 301100, size: "S", brand_id: Brand.second.id, colorway: 'Houndstooth', product_id: Product.find_by(product_number: 301100).id, stock: 10)
Size.create!(product_number: 301100, size: "M", brand_id: Brand.second.id, colorway: 'Houndstooth', product_id: Product.find_by(product_number: 301100).id, stock: 10)
Size.create!(product_number: 301100, size: "L", brand_id: Brand.second.id, colorway: 'Houndstooth', product_id: Product.find_by(product_number: 301100).id, stock: 10)
Size.create!(product_number: 301100, size: "XL", brand_id: Brand.second.id, colorway: 'Houndstooth', product_id: Product.find_by(product_number: 301100).id, stock: 10)
Size.create!(product_number: 301100, size: "XXL", brand_id: Brand.second.id, colorway: 'Houndstooth', product_id: Product.find_by(product_number: 301100).id, stock: 10)

Product.create!(name: "Workwear Shacket", brand_id: Brand.second.id, product_type: "Jacket", product_number: 300100-01, price: 118, description: 'We\'re obsessed with this heavyweight button up, the perfect mix of shirt and jacket - Just in time for the colder months.', fit_details: 'Leah is wearing size S,Tambrie is wearing size XL', details: 'Classic workwear fit,Premium construction,2 button-flap chest pockets,6 button closure,Medium: 22.25"" across chest,100% cotton,Machine wash cold, Line dry', images: "https://cdn.shopify.com/s/files/1/0417/7870/8643/products/1_10.6_GREEN_SHACKET_2048x.jpg?v=1602625098,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/3_10.6_GREEN_SHACKET_2048x.jpg?v=1602625099,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/4_10.6_GREEN_SHACKET_2048x.jpg?v=1602625099,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/5_10.6_GREEN_SHACKET_2048x.jpg?v=1602625100,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/6_10.6_GREEN_SHACKET_2048x.jpg?v=1602625099,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/7_10.6_GREEN_SHACKET_2048x.jpg?v=1602625098,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/8_10.6_GREEN_SHACKET_2048x.jpg?v=1602625098,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/9_10.6_GREEN_SHACKET_2048x.jpg?v=1602625099,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/10_10.6_GREEN_SHACKET_2048x.jpg?v=1602625098,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/11_10.6_GREEN_SHACKET_2048x.jpg?v=1602625098")

Size.create!(product_number: 300100-01, size: "XS", brand_id: Brand.second.id, colorway: 'Botanical Green', product_id: Product.find_by(product_number: 300100-01).id, stock: 10)
Size.create!(product_number: 300100-01, size: "S", brand_id: Brand.second.id, colorway: 'Botanical Green', product_id: Product.find_by(product_number: 300100-01).id, stock: 10)
Size.create!(product_number: 300100-01, size: "M", brand_id: Brand.second.id, colorway: 'Botanical Green', product_id: Product.find_by(product_number: 300100-01).id, stock: 10)
Size.create!(product_number: 300100-01, size: "L", brand_id: Brand.second.id, colorway: 'Botanical Green', product_id: Product.find_by(product_number: 300100-01).id, stock: 10)
Size.create!(product_number: 300100-01, size: "XL", brand_id: Brand.second.id, colorway: 'Botanical Green', product_id: Product.find_by(product_number: 300100-01).id, stock: 10)
Size.create!(product_number: 300100-01, size: "XXL", brand_id: Brand.second.id, colorway: 'Botanical Green', product_id: Product.find_by(product_number: 300100-01).id, stock: 10)

Product.create!(name: "Workwear Corduroy Shacket", brand_id: Brand.second.id, product_type: "Jacket", product_number: 300100-02, price: 118, description: 'We\'re obsessed with this heavyweight button up, the perfect mix of shirt and jacket - Just in time for the colder months, in our favorite cozy corduroy.', fit_details: 'Natalia is wearing size M,Diona is wearing size XXL', details: 'Classic workwear fit,Premium construction,2 button-flap chest pockets,6 button closure,Medium: 22.25"" across chest,100% cotton,Machine wash cold, Line dry', images: "https://cdn.shopify.com/s/files/1/0417/7870/8643/products/1_10.6_CORD_SHACKET_2048x.jpg?v=1602617486,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/3_10.6_CORD_SHACKET._2048x.jpg?v=1602617487,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/4_10.6_CORD_SHACKET_2048x.jpg?v=1602617486,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/5_10.6_CORD_SHACKET._2048x.jpg?v=1602617485,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/6_10.6_CORD_SHACKET_2048x.jpg?v=1602617485,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/7_10.6_CORD_SHACKET._2048x.jpg?v=1602617486,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/8_10.6_CORD_SHACKET._2048x.jpg?v=1602617485,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/9_10.6_CORD_SHACKET._2048x.jpg?v=1602617485,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/10_10.6_CORD_SHACKET._2048x.jpg?v=1602617487,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/11_10.6_CORD_SHACKET._2048x.jpg?v=1602617487")

Size.create!(product_number: 300100-02, size: "XS", brand_id: Brand.second.id, colorway: 'Merlot', product_id: Product.find_by(product_number: 300100-02).id, stock: 10)
Size.create!(product_number: 300100-02, size: "S", brand_id: Brand.second.id, colorway: 'Merlot', product_id: Product.find_by(product_number: 300100-02).id, stock: 10)
Size.create!(product_number: 300100-02, size: "M", brand_id: Brand.second.id, colorway: 'Merlot', product_id: Product.find_by(product_number: 300100-02).id, stock: 10)
Size.create!(product_number: 300100-02, size: "L", brand_id: Brand.second.id, colorway: 'Merlot', product_id: Product.find_by(product_number: 300100-02).id, stock: 10)
Size.create!(product_number: 300100-02, size: "XL", brand_id: Brand.second.id, colorway: 'Merlot', product_id: Product.find_by(product_number: 300100-02).id, stock: 10)
Size.create!(product_number: 300100-02, size: "XXL", brand_id: Brand.second.id, colorway: 'Merlot', product_id: Product.find_by(product_number: 300100-02).id, stock: 10)

Product.create!(name: "Come As You Are Tee", brand_id: Brand.second.id, product_type: "T-Shirt", product_number: 102100, price: 40, description: 'Rule books were made for ripping to shreds and naysayers are only there to remind us to hold our heads up higher. How ever you do you, let this slouchy tee be your reminder to keep your voice turned up to eleven. By Wildfang.', fit_details: 'Cairo is wearing a S,Jasmine is wearing a L,Hayley is wearing an XXL', details: 'Relaxed unisex fit,Crew neck,Soft cotton construction,Medium: 19.5" across chest,100% cotton,Machine wash cold,Tumble dry low', images: "https://cdn.shopify.com/s/files/1/0417/7870/8643/products/wildfang-come-as-you-are-tee-black-9_1_2048x.jpg?v=1600987686,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/come-as-you-are-tee-3-v_2048x.jpg?v=1600987686,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/come-as-you-are-tee-1-v_2048x.jpg?v=1600987686,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/come-as-you-are-tee-2-v_2048x.jpg?v=1600987686,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/come-as-you-are-tee-4-v_2048x.jpg?v=1600987686,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/come-as-you-are-tee-5-v_2048x.jpg?v=1600987686")

Size.create!(product_number: 102100, size: "XS", brand_id: Brand.second.id, colorway: 'Black', product_id: Product.find_by(product_number: 102100).id, stock: 10)
Size.create!(product_number: 102100, size: "S", brand_id: Brand.second.id, colorway: 'Black', product_id: Product.find_by(product_number: 102100).id, stock: 10)
Size.create!(product_number: 102100, size: "M", brand_id: Brand.second.id, colorway: 'Black', product_id: Product.find_by(product_number: 102100).id, stock: 10)
Size.create!(product_number: 102100, size: "L", brand_id: Brand.second.id, colorway: 'Black', product_id: Product.find_by(product_number: 102100).id, stock: 10)
Size.create!(product_number: 102100, size: "XL", brand_id: Brand.second.id, colorway: 'Black', product_id: Product.find_by(product_number: 102100).id, stock: 10)
Size.create!(product_number: 102100, size: "XXL", brand_id: Brand.second.id, colorway: 'Black', product_id: Product.find_by(product_number: 102100).id, stock: 10)

Product.create!(name: "Workwear Pant", brand_id: Brand.second.id, product_type: "Pant", product_number: 200100-01, price: 128, description: 'With a great fit, premium construction and classic workwear charm, this Wildfang exclusive pant has gotten some badass upgrades. Peep the practical utility detailing of contrast bar tacks, pop stitching and knee panels. The lightweight but sturdy fabric make these pants the perfect go-to, no matter the season.', fit_details: 'Emma is wearing size XS,Tambrie is wearing size XL', details: 'Classic workwear fit,Zipper fly with button closure,Knee panel,Contrast bar tacking & pop stitch detailing,5 pocket design,Right dual cargo leg pocket & left utility loop,Premium stretch construction,12" rise & 30" inseam,97% cotton,3% spandex,Machine wash cold,Dry flat', images: "https://cdn.shopify.com/s/files/1/0417/7870/8643/products/1H_9.8.20_SS_TAN_WW_PANT_2048x.jpg?v=1601322670,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/2_9.8.20_SS_TAN_WW_PANT_2048x.jpg?v=1601322669,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/3_9.8.20_SS_TAN_WW_PANT_2048x.jpg?v=1601322682,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/4_9.8.20_SS_TAN_WW_PANT_2048x.jpg?v=1601322670,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/5_9.8.20_SS_TAN_WW_PANT_2048x.jpg?v=1601322669,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/6_9.8.20_SS_TAN_WW_PANT_2048x.jpg?v=1601322668,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/7_9.8.20_SS_TAN_WW_PANT_2048x.jpg?v=1601322669,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/8_9.8.20_SS_TAN_WW_PANT_2048x.jpg?v=1601322669,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/9_9.8.20_SS_TAN_WW_PANT_2048x.jpg?v=1601322669,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/10R_9.8.20_SS_TAN_WW_PANT_b1c72e08-ead0-49df-8ae2-21b63e52b1b8_2048x.jpg?v=1601322680")

Size.create!(product_number: 200100-01, size: "XS", brand_id: Brand.second.id, colorway: 'Sand', product_id: Product.find_by(product_number: 200100-01).id, stock: 10)
Size.create!(product_number: 200100-01, size: "S", brand_id: Brand.second.id, colorway: 'Sand', product_id: Product.find_by(product_number: 200100-01).id, stock: 10)
Size.create!(product_number: 200100-01, size: "M", brand_id: Brand.second.id, colorway: 'Sand', product_id: Product.find_by(product_number: 200100-01).id, stock: 10)
Size.create!(product_number: 200100-01, size: "L", brand_id: Brand.second.id, colorway: 'Sand', product_id: Product.find_by(product_number: 200100-01).id, stock: 10)
Size.create!(product_number: 200100-01, size: "XL", brand_id: Brand.second.id, colorway: 'Sand', product_id: Product.find_by(product_number: 200100-01).id, stock: 10)
Size.create!(product_number: 200100-01, size: "XXL", brand_id: Brand.second.id, colorway: 'Sand', product_id: Product.find_by(product_number: 200100-01).id, stock: 10)

Product.create!(name: "Workwear Pant", brand_id: Brand.second.id, product_type: "Pant", product_number: 200100-02, price: 128, description: 'With a great fit, premium construction and classic workwear charm, this Wildfang exclusive pant has gotten some badass upgrades. Peep the practical utility detailing of contrast bar tacks, pop stitching and knee panels. The lightweight but sturdy fabric make these pants the perfect go-to, no matter the season.', fit_details: 'Dillon is wearing size S,Diona is wearing size XXL', details: 'Classic workwear fit,Zipper fly with button closure,Knee panel,Contrast bar tacking & pop stitch detailing,5 pocket design,Right dual cargo leg pocket & left utility loop,Premium stretch construction,12" rise & 30" inseam,97% cotton,3% spandex,Machine wash cold,Dry flat', images: "https://cdn.shopify.com/s/files/1/0417/7870/8643/products/h1_4_2048x.jpg?v=1600972197,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/3_4_1_2048x.jpg?v=1600972197,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/4_4_1_2048x.jpg?v=1600972197,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/6_4_1_2048x.jpg?v=1600972197,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/7_3_1_2048x.jpg?v=1600972197,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/9_3_2048x.jpg?v=1600972197,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/10_1_2048x.jpg?v=1600972197")

Size.create!(product_number: 200100-02, size: "XS", brand_id: Brand.second.id, colorway: 'Royal Blue', product_id: Product.find_by(product_number: 200100-02).id, stock: 10)
Size.create!(product_number: 200100-02, size: "S", brand_id: Brand.second.id, colorway: 'Royal Blue', product_id: Product.find_by(product_number: 200100-02).id, stock: 10)
Size.create!(product_number: 200100-02, size: "M", brand_id: Brand.second.id, colorway: 'Royal Blue', product_id: Product.find_by(product_number: 200100-02).id, stock: 10)
Size.create!(product_number: 200100-02, size: "L", brand_id: Brand.second.id, colorway: 'Royal Blue', product_id: Product.find_by(product_number: 200100-02).id, stock: 10)
Size.create!(product_number: 200100-02, size: "XL", brand_id: Brand.second.id, colorway: 'Royal Blue', product_id: Product.find_by(product_number: 200100-02).id, stock: 10)
Size.create!(product_number: 200100-02, size: "XXL", brand_id: Brand.second.id, colorway: 'Royal Blue', product_id: Product.find_by(product_number: 200100-02).id, stock: 10)

Product.create!(name: "Workwear Pant", brand_id: Brand.second.id, product_type: "Pant", product_number: 200100-03, price: 128, description: 'With a great fit, premium construction and classic workwear charm, this Wildfang exclusive pant has gotten some badass upgrades. Peep the practical utility detailing of contrast bar tacks, pop stitching and knee panels. The lightweight but sturdy fabric make these pants the perfect go-to, no matter the season.', fit_details: 'Dillon is wearing size S,Diona is wearing size XXL', details: 'Classic workwear fit,Zipper fly with button closure,Knee panel,Contrast bar tacking & pop stitch detailing,5 pocket design,Right dual cargo leg pocket & left utility loop,Premium stretch construction,12" rise & 30" inseam,97% cotton,3% spandex,Machine wash cold,Dry flat', images: "https://cdn.shopify.com/s/files/1/0417/7870/8643/products/2h-xworkwearpantinblack_1_2048x.jpg?v=1600972190,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/1r-xworkwearpantinblack_1_2048x.jpg?v=1600972190,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/3-xworkwearpantinblack_2048x.jpg?v=1600972190,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/4-xworkwearpantinblack_2048x.jpg?v=1600972190,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/5-xworkwearpantinblack_2048x.jpg?v=1600972190,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/6-xworkwearpantinblack_2048x.jpg?v=1600972190,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/7-xworkwearpantinblack_2048x.jpg?v=1600972190,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/8-xworkwearpantinblack_2048x.jpg?v=1600972190,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/9-xworkwearpantinblack_2048x.jpg?v=1600972190,https://cdn.shopify.com/s/files/1/0417/7870/8643/products/0-xworkwearpantinblack_2048x.jpg?v=1600972190")

Size.create!(product_number: 200100-03, size: "XS", brand_id: Brand.second.id, colorway: 'Black', product_id: Product.find_by(product_number: 200100-03).id, stock: 10)
Size.create!(product_number: 200100-03, size: "S", brand_id: Brand.second.id, colorway: 'Black', product_id: Product.find_by(product_number: 200100-03).id, stock: 10)
Size.create!(product_number: 200100-03, size: "M", brand_id: Brand.second.id, colorway: 'Black', product_id: Product.find_by(product_number: 200100-03).id, stock: 10)
Size.create!(product_number: 200100-03, size: "L", brand_id: Brand.second.id, colorway: 'Black', product_id: Product.find_by(product_number: 200100-03).id, stock: 10)
Size.create!(product_number: 200100-03, size: "XL", brand_id: Brand.second.id, colorway: 'Black', product_id: Product.find_by(product_number: 200100-03).id, stock: 10)
Size.create!(product_number: 200100-03, size: "XXL", brand_id: Brand.second.id, colorway: 'Black', product_id: Product.find_by(product_number: 200100-03).id, stock: 10)

Product.create!(
  name: "Brighton Print Short Sleeve Shirt",
  brand_id: Brand.fourth.id,
  product_type: "Button-Up",
  product_number: 101100,
  price: 78,
  description: "Oh we do like to be beside the seaside, our home town Brighton, loving depicted on fabric. A great place to live, a great place to visit (although with appropriate social distancing please). A exclusive design for GFW created by artist Esme Mackenzie.",
  fit_details: "Lightweight 100% cotton,2 Sleeve lengths - fix with tab and button,Digitally printed and made in Spain,Reverse button to prevent gape in the chest.",
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
  fit_details: "3 body shapes for optimal fit,Granddad collar,Made in Spain",
  details: "55% linen 45% cotton",
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
  fit_details: "Lightweight 100% cotton,2 Sleeve lengths - fix with tab and button,Digitally printed and made in Spain.",
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
  fit_details: "Lightweight 100% cotton,2 Sleeve lengths - fix with tab and button,Digitally printed and made in Spain.",
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
  fit_details: "Lightweight 100% cotton,2 Sleeve lengths - fix with tab and button,Digitally printed and made in Spain.",
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
  fit_details: "Unique genuinely unisex design.,3.5cm deep soft elasticated waistband,Moisture wicking & breathable,Made in Britain",
  details: "95% rayon from bamboo,5% elastane",
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
  fit_details: "Unique genuinely unisex design.,3.5cm deep soft elasticated waistband,Moisture wicking & breathable,Made in Britain",
  details: "95% rayon from bamboo,5% elastane.",
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
  fit_details: "Unique genuinely unisex design,3.5cm deep soft elasticated waistband,Moisture wicking & breathable,Made in Britain",
  details: "95% rayon from bamboo,5% elastane.",
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
  details: "100% Cotton,Made and hand printed in Los Angeles",
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
  details: "50 Cotton 50% Poly,Made and hand printed in Los Angeles",
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


