# Praktikum Probstat Modul 2

| Nama                       | NRP        |
| :------------------------- | :--------- |
| Hidayatullah               | 5025201031 |

Probstat B

---
## Soal 1
Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap
kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel
sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat
kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut
diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali
kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden
mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴.

![Hasil 1a](https://imgur.com/Q4YVXsL.png)

* H0 = "tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas 𝐴"
* H1 = "ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas 𝐴"

### 1.A
Menghitung standar deviasi selisih X dan Y

<img width="211" alt="image" src="https://user-images.githubusercontent.com/80145586/170881349-7facbb94-8219-4120-83ab-79de16915d92.png">

### 1.B
Mencari nilai p-value menggunakan t

<img width="354" alt="image" src="https://user-images.githubusercontent.com/80145586/170881559-040c1cf5-ff27-4e69-85b9-9df1daf44391.png">

### 1.C
Menggunakan two-tail t-test berpasangan dengan confidence level 95%

<img width="512" alt="image" src="https://user-images.githubusercontent.com/80145586/170881597-56631ead-3b34-401d-ae9d-b0ff1fb430bd.png">

Hasil menunjukkan `p-value < 0.025`, sehingga H0 ditolak. Ada perubahan signifikan pada saturasi oksigen, sebelum dan sesudah melakukan aktivitas A.


---
## Soal 2
Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun.
Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk
mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata
23.500 kilometer dan standar deviasi 3900 kilometer. 

* H0 = "mean jarak tempuh <= 20000"
* H1 = "mean jarak tempuh > 20000"
* Klaim ialah H1

### 2.A
Sampel yang digunakan lebih dari 30, sehingga saya menggunakan Uji-z.
Dari hasil uji tersebut, saya setuju dengan Klaim

### 2.B
<img width="470" alt="image" src="https://user-images.githubusercontent.com/80145586/170882300-a901ff20-6622-46f5-b18d-3a14e1bb3bdc.png">

### 2.C 
Hasil menunjukkan `p-value < 0.05`, sehingga H0 ditolak. 
Mean jarak tempuh ialah lebih besar dari 20000. Sehingga klaim masih dapat dipertahankan.

---
## Soal 3
<img width="328" alt="image" src="https://user-images.githubusercontent.com/80145586/170882505-a1c4e346-79cd-42b9-8417-b35f4d102108.png">

### 3.A: H0 dan H1
* H0: mean(Bandung) <= mean(Bali)
* H1: mean(Bandung)  > mean(Bali)

### 3.B
<img width="520" alt="image" src="https://user-images.githubusercontent.com/80145586/170882518-c8b527f4-6750-4a8e-a6e7-5ef951d1ff70.png">

### 3.C
<img width="522" alt="image" src="https://user-images.githubusercontent.com/80145586/170882533-6e5f40e5-bb44-4874-ad91-00429612e0d2.png">
Didapatkan hasil nilai-t = 1.9267, p-value = 0.03024

### 3.D
<img width="307" alt="image" src="https://user-images.githubusercontent.com/80145586/170882749-d9c86818-94ca-4f91-89a6-b22acd4cafda.png">
Didapat Nilai kritis `2.919986`.

### 3.E 
Keputusan yang diambil ialah H0 akan ditolak jika hasil uji menghasilkan nilai **lebih kecil** dari nilai kritis.

### 3.F
Hasil nilai t uji `(1.9267)` **lebih kecil** dari Nilai kritis `(2.919986)`. Sehingga disimpulkan bahwa H0 diterima. Dan mean Bandung lebih kecil atau sama dengan mean Bali.

---
## Soal 4
Seorang Peneliti sedang meneliti spesies dari kucing di ITS . Dalam penelitiannya
ia mengumpulkan data tiga spesies kucing yaitu kucing oren, kucing hitam dan
kucing putih dengan panjangnya masing-masing.
* H0: Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya sama
* H1: Ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya berbeda

Berikut cuplikan dataset
<img width="123" alt="image" src="https://user-images.githubusercontent.com/80145586/170882940-886033b2-963b-42cd-b201-cc8f9d6c7285.png">

### 4.A
<img width="715" alt="image" src="https://user-images.githubusercontent.com/80145586/170883009-3ffd7300-f267-4885-911a-2ba937118b00.png">

<img width="719" alt="image" src="https://user-images.githubusercontent.com/80145586/170883036-e25b216f-ff45-4514-84da-b731b57e4c9a.png">

<img width="721" alt="image" src="https://user-images.githubusercontent.com/80145586/170883060-564f040b-7263-4194-9ce9-2b1164fe5581.png">

Keberadaan outlier ditandakan dengan adanya titik yang berada jauh dari groupnya. Dalam kasus ini, tidak terlihat ada outlier untuk tiap group.

### 4.B
Keseragaman varians untuk dua grup atau lebih, dapat dicek dengan menggunakan tes bartlett.
```bartlett.test(Length ~ Group, data = data)```
* H0: variance sama
* H1: variance berbeda-beda

<img width="405" alt="image" src="https://user-images.githubusercontent.com/80145586/170883196-dd5475a7-ccd6-4e8e-aed5-1c0b619f25e5.png">

Hasil menunjukkan `p-value > 0.05`, menunjukkan tidak ada bukti yang cukup untuk menolak H0. Hal ini berarti ketiga group memiliki varians yang seragam.

### 4.C
Membuat model linier.
```R
model <- lm(Length ~ Group, data = data)
```
Analisis varians menggunakan code berikut
```R
anova(model)
```
<img width="381" alt="image" src="https://user-images.githubusercontent.com/80145586/170883480-7a82597c-3952-430d-b8b8-58d7fd308c7d.png">

`plot(model, main = "Model 1")`
<img width="718" alt="image" src="https://user-images.githubusercontent.com/80145586/170883613-4426011b-fbb8-4965-8a68-7da9ce918ec2.png">

### 4.D
Hasil menunjukkan `p-value > 0.05`, menunjukkan tidak ada bukti yang cukup untuk menolak H0. Hal ini berarti ketiga group memiliki varians yang seragam.

### 4.E
<img width="557" alt="image" src="https://user-images.githubusercontent.com/80145586/170883796-5e061ab4-dc0a-4bd5-ac3d-008ce6188916.png">

### 4.F
<img width="745" alt="image" src="https://user-images.githubusercontent.com/80145586/170883808-3768a9da-da3d-4ce5-a74f-ef93861af7f3.png">
Hasil Hitam-Oren dan Putih-Hitam menunjukkan `p-value < 0.05`, yang menunjukkan H0 ditolak. Sedangkan, Oren-Putih menunjukkan `p-value > 0.05` yang berarti menerima H0.
Hal ini dapat disimpulkan bahwa Kucing-Oren memiliki perbedaan panjang dibanding kedua group lainnya. Sedangkan Kucing-Hitam dan Kucing-Putih memiliki panjang yang seragam.

---
## Soal 5
Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk
mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca
pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan
dilakukan sebanyak 27 kali berikut cuplikan data

<img width="154" alt="image" src="https://user-images.githubusercontent.com/80145586/170884125-d3a323b5-fd79-41b1-a587-9883197f2c0c.png">

### 5.A
Visualisasi data

<img width="750" alt="image" src="https://user-images.githubusercontent.com/80145586/170884138-1b4d3646-3b85-4dfd-a80d-e2452f2a51dc.png">

### 5.B
Melakukan pengetesan anova dua arah.
```R
anova <- aov(Light ~ Glass*Temp_Factor,
             data = GTL)
summary(anova)
```

<img width="525" alt="image" src="https://user-images.githubusercontent.com/80145586/170884285-b8bb3cff-2f9b-4291-92b6-e491f39bddc6.png">


### 5.C
Menampilkan tabel ringkasan dengan mean dan standar deviasi keluaran cahaya untuk
setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi)

<img width="255" alt="image" src="https://user-images.githubusercontent.com/80145586/170884333-fa15bd5a-2a84-488e-ad5a-f2ab03da4693.png">

### 5.D
Melakukan uji Tukey
```R
anova <- aov(Light ~ Glass*Temp_Factor,
             data = GTL)
print(TukeyHSD(anova))
```
<img width="485" alt="image" src="https://user-images.githubusercontent.com/80145586/170884354-15e14a0a-ab29-46ef-ac07-8ca6814f4c68.png">
<img width="389" alt="image" src="https://user-images.githubusercontent.com/80145586/170884367-eef068a7-b4ae-4b4b-9521-0fd9c0e0d937.png">
<img width="466" alt="image" src="https://user-images.githubusercontent.com/80145586/170884372-0e1d608b-4562-4c33-b1f4-309edd423681.png">
<img width="464" alt="image" src="https://user-images.githubusercontent.com/80145586/170884387-e25f464b-faec-4b02-8118-3cf01b5350b6.png">
<img width="461" alt="image" src="https://user-images.githubusercontent.com/80145586/170884397-9d0eb6c5-756d-434d-89f5-9c9a59f56e9a.png">
