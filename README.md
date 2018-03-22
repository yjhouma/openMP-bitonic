### Anggota
13515053: Yohannes Jhouma 
13515104: Rizki Ihza Parama

### Pembagian tugas
Yohannes: openMPI, makefile
Rizki: bitonic sort, readme, file eksternal


### Petunjuk
    Jalankan `make` pada terminal
    Jalankan `mpirun -np <num_proc> ./bitonic_sort <arr_length>`

    num_proc adalah jumlah thread yang diinginkan, serta arr_length adalah jumlah array 
    yang diinginkan.

### Jumlah thread
Jumlah thread merupakan variable untuk program ini. Disarankan jumlah thread yang diberikan
tidak melebihi jumlah core pada processor komputer

### Penjelasan Solusi
Untuk contoh, dimisalkan ada x proses dan panjang k. Pada awalnya, array berada pada proses 0. State ini adalah merupakan node process tree dengan kedalaman 0 atau
merupakan root. Untuk setiap root dengan kedalaman log2(x) maka sort secara serial. Untuk node dengan 
kedalaman kurang dari log2(x) maka dibagi menjadi 2 bagian yaitu bagian awal dan akhir. Separuh pertama
disimpan untuk proses itu misal dinamai A. Separuh kedua dari array dikirimkan pada proses A+x(2^(b+1))
dimana b adalah kedalaman A. Setelah sorting selesai, penggabungan terjadi dan disimpan di proses A.

### Analisis 
Setelah melakukan eksperimen dengan menggunakan program ini secara paralel dan serial. Bisa dilihat bahwa waktu berjalan lebih cepat saat dijalankan secara paralel. Hal ini dikarenakan proses dibagikan
menjadi beberapa thread dan bekerja secara paralel



### Hasil pengukuran kerja

#### 5,000
    #1
    Serial	 0.006924
    Paralel	 0.003848 

    #2
    Serial	 0.004660
    Paralel	 0.003074

    #3
    Serial	 0.005150
    Paralel	 0.002747


#### 50,000

    #1
    Serial	: 0.060919 
    Paralel	: 0.014354

    #2
    Serial	: 0.073849
    Paralel	: 0.013796

    #3
    Serial	: 0.086614
    Paralel	: 0.013724


#### 100,000

    #1
    Serial	: 0.177053
    Paralel	: 0.028052

    #2
    Serial	: 0.169978
    Paralel	: 0.030827

    #3
    Serial	: 0.169978
    Paralel	: 0.030827


#### 200,000

    #1
    Serial	: 0.372520
    Paralel	: 0.051492

    #2
    Serial	: 0.355497
    Paralel	: 0.067516

    #3
    Serial	: 0.38011
    Paralel	: 0.075032

#### 400.000

    #1
    Serial	: 0.840630
    Paralel	: 0.115723

    #2
    Serial	: 0.831659
    Paralel	: 0.145535

    #3
    Serial	: 0.876405
    Paralel	: 0.130584

