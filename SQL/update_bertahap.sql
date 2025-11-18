-- SQL Script Alternatif - Update Bertahap
-- Script ini untuk user yang ingin mengubah menu secara bertahap

-- STEP 1: Update Kategori Restoran (Jalankan ini dulu)
UPDATE res_category SET c_name = 'Martabak Manis' WHERE c_id = 1;
UPDATE res_category SET c_name = 'Martabak Telur' WHERE c_id = 2;
UPDATE res_category SET c_name = 'Martabak Keju' WHERE c_id = 3;
UPDATE res_category SET c_name = 'Martabak Modern' WHERE c_id = 4;

-- STEP 2: Update Nama Restoran (Jalankan setelah Step 1)
UPDATE restaurant SET title = 'Martabak Manis Sejahtera' WHERE rs_id = 1;
UPDATE restaurant SET title = 'Martabak Telur Asin' WHERE rs_id = 2;
UPDATE restaurant SET title = 'Martabak Keju Premium' WHERE rs_id = 3;
UPDATE restaurant SET title = 'Martabak Modern' WHERE rs_id = 4;

-- STEP 3: Update Menu Martabak Manis (Jalankan setelah Step 2)
UPDATE dishes SET title = 'Martabak Manis Classic', slogan = 'Martabak manis dengan isian gula, kacang tanah, dan wijen', price = '25000.00' WHERE d_id = 1;
UPDATE dishes SET title = 'Martabak Manis Keju', slogan = 'Martabak manis lembut dengan topping keju parut', price = '35000.00' WHERE d_id = 2;
UPDATE dishes SET title = 'Martabak Manis Coklat', slogan = 'Martabak manis dengan filling coklat lumer', price = '30000.00' WHERE d_id = 3;
UPDATE dishes SET title = 'Martabak Manis Kacang', slogan = 'Martabak manis dengan taburan kacang tanah sangrai', price = '28000.00' WHERE d_id = 4;

-- STEP 4: Update Menu Martabak Telur (Jalankan setelah Step 3)
UPDATE dishes SET title = 'Martabak Telur Ayam', slogan = 'Martabak telur dengan isian daging ayam cincang dan bawang', price = '30000.00' WHERE d_id = 5;
UPDATE dishes SET title = 'Martabak Telur Sapi', slogan = 'Martabak telur gurih dengan daging sapi cincang', price = '35000.00' WHERE d_id = 6;
UPDATE dishes SET title = 'Martabak Telur Asin', slogan = 'Martabak telur spesial dengan telur asin creamy', price = '40000.00' WHERE d_id = 7;
UPDATE dishes SET title = 'Martabak Telur Spesial', slogan = 'Martabak telur dengan campuran ayam, sapi, dan sayuran', price = '45000.00' WHERE d_id = 8;

-- STEP 5: Update Menu Martabak Keju (Jalankan setelah Step 4)
UPDATE dishes SET title = 'Martabak Keju Mozzarella', slogan = 'Martabak keju dengan mozzarella stretchy', price = '40000.00' WHERE d_id = 9;
UPDATE dishes SET title = 'Martabak Keju Cheddar', slogan = 'Martabak keju dengan cheddar asli sharp', price = '38000.00' WHERE d_id = 10;
UPDATE dishes SET title = 'Martabak Keju Mix', slogan = 'Kombinasi mozzarella, cheddar, dan parmesan', price = '45000.00' WHERE d_id = 11;
UPDATE dishes SET title = 'Martabak Keju Jagung', slogan = 'Martabak keju dengan jagung manis', price = '35000.00' WHERE d_id = 12;

-- STEP 6: Update Menu Martabak Modern (Jalankan setelah Step 5)
UPDATE dishes SET title = 'Martabak Modern Nutella', slogan = 'Martabak modern dengan Nutella dan almond', price = '50000.00' WHERE d_id = 13;
UPDATE dishes SET title = 'Martabak Modern Green Tea', slogan = 'Martabak modern dengan matcha dan red bean', price = '45000.00' WHERE d_id = 14;
UPDATE dishes SET title = 'Martabak Modern Tiramisu', slogan = 'Martabak modern rasa tiramisu dengan coffee', price = '48000.00' WHERE d_id = 15;
UPDATE dishes SET title = 'Martabak Modern Rainbow', slogan = 'Martabak modern colorful dengan berbagai topping', price = '55000.00' WHERE d_id = 16;