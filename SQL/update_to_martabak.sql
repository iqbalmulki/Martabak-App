-- SQL Script untuk mengubah semua menu menjadi menu Martabak
-- Update nama restoran menjadi restoran martabak
UPDATE restaurant SET 
    title = 'Martabak Manis Sejahtera',
    email = 'martabakmanis@gmail.com',
    phone = '081234567890',
    url = 'www.martabakmanis.com',
    address = 'Jl. Sudirman No. 123, Jakarta'
WHERE rs_id = 1;

UPDATE restaurant SET 
    title = 'Martabak Telur Asin',
    email = 'martabaktelurasin@gmail.com',
    phone = '081298765432',
    url = 'www.martabaktelurasin.com',
    address = 'Jl. Thamrin No. 45, Jakarta'
WHERE rs_id = 2;

UPDATE restaurant SET 
    title = 'Martabak Keju Premium',
    email = 'martabakkeju@gmail.com',
    phone = '081287654321',
    url = 'www.martabakkeju.com',
    address = 'Jl. Gatot Subroto No. 78, Jakarta'
WHERE rs_id = 3;

UPDATE restaurant SET 
    title = 'Martabak Modern',
    email = 'martabakmodern@gmail.com',
    phone = '081276543210',
    url = 'www.martabakmodern.com',
    address = 'Jl. Rasuna Said No. 90, Jakarta'
WHERE rs_id = 4;

-- Update kategori restoran menjadi kategori martabak
UPDATE res_category SET 
    c_name = 'Martabak Manis'
WHERE c_id = 1;

UPDATE res_category SET 
    c_name = 'Martabak Telur'
WHERE c_id = 2;

UPDATE res_category SET 
    c_name = 'Martabak Keju'
WHERE c_id = 3;

UPDATE res_category SET 
    c_name = 'Martabak Modern'
WHERE c_id = 4;

-- Update semua menu menjadi varian martabak
UPDATE dishes SET 
    title = 'Martabak Manis Classic',
    slogan = 'Martabak manis dengan isian gula, kacang tanah, dan wijen yang gurih',
    price = '25000.00'
WHERE d_id = 1;

UPDATE dishes SET 
    title = 'Martabak Manis Keju',
    slogan = 'Martabak manis lembut dengan topping keju parut yang melimpah',
    price = '35000.00'
WHERE d_id = 2;

UPDATE dishes SET 
    title = 'Martabak Manis Coklat',
    slogan = 'Martabak manis dengan filling coklat lumer yang kaya rasa',
    price = '30000.00'
WHERE d_id = 3;

UPDATE dishes SET 
    title = 'Martabak Manis Kacang',
    slogan = 'Martabak manis dengan taburan kacang tanah sangrai dan gula merah',
    price = '28000.00'
WHERE d_id = 4;

UPDATE dishes SET 
    title = 'Martabak Telur Ayam',
    slogan = 'Martabak telur dengan isian daging ayam cincak, bawang, dan bumbu spesial',
    price = '30000.00'
WHERE d_id = 5;

UPDATE dishes SET 
    title = 'Martabak Telur Sapi',
    slogan = 'Martabak telur gurih dengan daging sapi cincang dan bawang bombay',
    price = '35000.00'
WHERE d_id = 6;

UPDATE dishes SET 
    title = 'Martabak Telur Asin',
    slogan = 'Martabak telur spesial dengan telur asin yang creamy dan scallion',
    price = '40000.00'
WHERE d_id = 7;

UPDATE dishes SET 
    title = 'Martabak Telur Spesial',
    slogan = 'Martabak telur dengan campuran ayam, sapi, dan sayuran segar',
    price = '45000.00'
WHERE d_id = 8;

UPDATE dishes SET 
    title = 'Martabak Keju Mozzarella',
    slogan = 'Martabak keju dengan mozzarella cheese yang stretchy dan creamy',
    price = '40000.00'
WHERE d_id = 9;

UPDATE dishes SET 
    title = 'Martabak Keju Cheddar',
    slogan = 'Martabak keju dengan cheddar cheese asli yang sharp dan gurih',
    price = '38000.00'
WHERE d_id = 10;

UPDATE dishes SET 
    title = 'Martabak Keju Mix',
    slogan = 'Kombinasi keju mozzarella, cheddar, dan parmesan yang sempurna',
    price = '45000.00'
WHERE d_id = 11;

UPDATE dishes SET 
    title = 'Martabak Keju Jagung',
    slogan = 'Martabak keju dengan jagung manis dan keju mozzarella',
    price = '35000.00'
WHERE d_id = 12;

UPDATE dishes SET 
    title = 'Martabak Modern Nutella',
    slogan = 'Martabak modern dengan Nutella, banana slice, dan almond slice',
    price = '50000.00'
WHERE d_id = 13;

UPDATE dishes SET 
    title = 'Martabak Modern Green Tea',
    slogan = 'Martabak modern dengan filling green tea matcha dan red bean',
    price = '45000.00'
WHERE d_id = 14;

UPDATE dishes SET 
    title = 'Martabak Modern Tiramisu',
    slogan = 'Martabak modern dengan rasa tiramisu, coffee powder, dan cocoa',
    price = '48000.00'
WHERE d_id = 15;

UPDATE dishes SET 
    title = 'Martabak Modern Rainbow',
    slogan = 'Martabak modern colorful dengan berbagai topping pilihan',
    price = '55000.00'
WHERE d_id = 16;