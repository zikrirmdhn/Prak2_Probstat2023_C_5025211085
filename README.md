# Prak2_Probstat2023_C_5025211085

### 1
Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap
kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel
sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat
kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut
diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat 
kembali kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 
responden mengenai kadar saturasi oksigen sebelum dan sesudah melakukan 
aktivitas.

```
x <- c(78, 75, 67, 77, 70, 72, 78, 70, 77)
y <- c(100, 95, 70, 90, 90, 90, 89, 100, 100)
```

&emsp; a. Carilah Standar deviasi dari data selisih pasangan pengamatan tabel diatas

```
sd <- sd(y-x)
print(sd)
```

&emsp; <img width="153" alt="Screenshot 2023-06-11 232033" src="https://github.com/zikrirmdhn/Prak2_Probstat2023_C_5025211085/assets/97161145/ffe077fe-1ea8-44b6-afcd-85726fb8593e">

&emsp; b. Carilah nilai t (p-value)

```
test <- t.test (y, x, paired = TRUE)
print(test)
```

&emsp; <img width="384" alt="Screenshot 2023-06-11 234927" src="https://github.com/zikrirmdhn/Prak2_Probstat2023_C_5025211085/assets/97161145/d643604a-5ff2-42b9-9650-e3434760e071">

&emsp; c. Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam 
hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴 jika 
diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang
signifikan secara statistika dalam hal kadar saturasi oksigen sebelum dan sesudah 
melakukan aktivitas 𝐴”

```
p <- test$p.value
alpha <- 0.05
if (p < alpha) {
  cat("Ada pengaruh signifikan secara statistika\n\n")
} else {
  cat("Tidak ada pengaruh signifikan secara statistika\n\n")
}
```

&emsp; <img width="389" alt="Screenshot 2023-06-11 235215" src="https://github.com/zikrirmdhn/Prak2_Probstat2023_C_5025211085/assets/97161145/44887710-4abf-4bf8-ab9b-2041f2428f50">


### 2
Diketahui bahwa mobil dikemudikan rata-rata lebih dari 25.000 kilometer per 
tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak 
diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak 
menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3.000 kilometer

&emsp; a. Apakah Anda setuju dengan klaim tersebut? Jelaskan.

```
sd <- sd(y-x)
print(sd)
```

&emsp; <img width="346" alt="Screenshot 2023-06-11 235659" src="https://github.com/zikrirmdhn/Prak2_Probstat2023_C_5025211085/assets/97161145/c5868dee-9500-4155-b742-2721b2369701"><br>
&emsp; Berdasarkan hasil di atas, saya tidak setuju dengan klaim yang diberikan. 

&emsp; c. Buatlah kesimpulan berdasarkan p-value yang dihasilkan!<br>
&emsp; Dikarenakan p-value>𝛼 , bisa disimpulkan bahwa pernyataan Rata-rata mobil dikemudikan lebih dari 25.000 kilometer per tahun adalah salah


### 3
Diketahui perusahaan memiliki seorang data analyst yang ingin memecahkan
permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya
didapatkanlah data berikut dari perusahaan saham tersebut.<br>
<img width="261" alt="Screenshot 2023-06-12 000451" src="https://github.com/zikrirmdhn/Prak2_Probstat2023_C_5025211085/assets/97161145/0a21ccaf-4ad0-4979-a5db-5b4a1f2c3f13"><br>
Dari data di atas berilah keputusan serta kesimpulan yang didapatkan. Asumsikan 
nilai variancenya sama, apakah ada perbedaan pada rata-ratanya (α= 0.05)?

&emsp; a.  H0 dan H1
&emsp; HO : Tidak ada perbedaan pada rata-rata antara saham kota Bandung (µ1) dengan rata-rata saham Kota Bali (µ2)<br>
&emsp; H1 : Ada perbedaan pada rata-rata antara saham kota Bandung (µ1) dengan rata-rata saham Kota Bali (µ2)<br>

&emsp; b. Hitung sampel statistik

```
n_bdg <- 20
n_bali <- 27
mean_bdg <- 3.64
mean_bali<- 2.79
sd_bdg <- 1.67
sd_bali <- 1.5

tsum.test( mean.x = mean_bdg, mean.y = mean_bali, 
           n.x = n_bdg, n.y = n_bali, 
           s.x = sd_bdg, s.y = sd_bali,
           alternative="two.side", var.equal = TRUE,  conf.level = 0.95
)
```
<img width="406" alt="Screenshot 2023-06-12 001409" src="https://github.com/zikrirmdhn/Prak2_Probstat2023_C_5025211085/assets/97161145/b470174d-83d7-4509-b260-64a21268e866">

&emsp; c. Lakukan uji statistik (df =2)

```
library(mosaic)
df <- 2
plotDist(dist = 't', df = df, col = "blue")
```

<img width="186" alt="Screenshot 2023-06-12 001715" src="https://github.com/zikrirmdhn/Prak2_Probstat2023_C_5025211085/assets/97161145/37ef91d5-c3a3-44f4-87f2-6e16365f7c55">

&emsp; d. Nilai kritikal

```
crit_l <- qt(p = 0.025, df = df, lower.tail = TRUE)
print(crit_l)

crit_r <- qt(p = 0.025, df = df, lower.tail = FALSE)
print(crit_r)
```

<img width="334" alt="Screenshot 2023-06-12 001858" src="https://github.com/zikrirmdhn/Prak2_Probstat2023_C_5025211085/assets/97161145/fea23701-d594-4c30-ae67-8afbf465499b">

&emsp; e. Keputusan<br>
&emsp; Karena t < nilai kritikal, maka dapat diputuskan bahwa H0 dapat diterima

&emsp; f. Kesimpulan<br>
&emsp; Sesuai dengan keputusan pada poin e, maka kesimpulannya adalah tidak ada perbedaan pada rata-rata antara saham kota Bandung (µ1) dengan rata-rata saham Kota Bali (µ2)


### 4
Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk 
mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca 
pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan 
dilakukan sebanyak 27 kali dan didapat data sebagai berikut:<br> 
https://drive.google.com/file/d/1pICtCrf61DRU86LDPQDJmcKiUMVt9ht4/view. 

&emsp; a. Buatlah plot sederhana untuk visualisasi data.

```
library(ggplot2)
ggplot(data, aes(x = Temp, y = Light)) + geom_point() + facet_grid(.~Glass, labeller = label_both)
```

<img width="531" alt="Screenshot 2023-06-12 002843" src="https://github.com/zikrirmdhn/Prak2_Probstat2023_C_5025211085/assets/97161145/759744a1-f07a-46e6-ac84-334d6619844e">

&emsp; b. Lakukan uji ANOVA dua arah

```
anov <- aov(Light ~ Glass * Temp, data = data)
innova <- anova(anov)
print(innova)
#"innova" hanya penamaan variabel saja dan tidak berpengaruh apa-apa pada hasil
```

<img width="386" alt="Screenshot 2023-06-12 003036" src="https://github.com/zikrirmdhn/Prak2_Probstat2023_C_5025211085/assets/97161145/cea88835-ccb3-437d-adc2-2d0362bde024">
