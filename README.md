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

# No.3
<img width="328" alt="image" src="https://user-images.githubusercontent.com/80145586/170882505-a1c4e346-79cd-42b9-8417-b35f4d102108.png">

# 3.A: H0 dan H1
* H0: mean(Bandung) <= mean(Bali)
* H1: mean(Bandung)  > mean(Bali)

# 3.B
<img width="520" alt="image" src="https://user-images.githubusercontent.com/80145586/170882518-c8b527f4-6750-4a8e-a6e7-5ef951d1ff70.png">

# 3.C
<img width="522" alt="image" src="https://user-images.githubusercontent.com/80145586/170882533-6e5f40e5-bb44-4874-ad91-00429612e0d2.png">
Didapatkan hasil nilai-t = 1.9267, p-value = 0.03024

# 3.D
<img width="307" alt="image" src="https://user-images.githubusercontent.com/80145586/170882749-d9c86818-94ca-4f91-89a6-b22acd4cafda.png">
Didapat Nilai kritis `2.919986`.

# 3.E 
Keputusan yang diambil ialah H0 akan ditolak jika hasil uji menghasilkan nilai **lebih kecil** dari nilai kritis.

# 3.F
Hasil nilai t uji `(1.9267)` **lebih kecil** dari Nilai kritis `(2.919986)`. Sehingga disimpulkan bahwa H0 diterima. Dan mean Bandung lebih kecil atau sama dengan mean Bali.

# No.4
<img width="123" alt="image" src="https://user-images.githubusercontent.com/80145586/170882940-886033b2-963b-42cd-b201-cc8f9d6c7285.png">

# 4.A
data$Group = factor(data$Group, labels = c("Kucing Oren","Kucing Hitam","Kucing Putih"))

grup1 <- subset(data, Group == "Kucing Oren")
grup2 <- subset(data, Group == "Kucing Hitam")
grup3 <- subset(data, Group == "Kucing Putih")

qqnorm(grup1$Length, main = "Plot Q-Q Kucing Oren")
qqline(grup1$Length)

qqnorm(grup2$Length, main = "Plot Q-Q Kucing Hitam")
qqline(grup2$Length)

qqnorm(grup3$Length, main = "Plot Q-Q Kucing Putih")
qqline(grup3$Length)

# 4.B
bartlett.test(Length ~ Group, data = data)

# 4.C
model <- lm(Length ~ Group, data = data)
anova(model)

plot(model, main = "Model 1")

# 4.E
TukeyHSD(aov(Length ~ factor(Group), data = data))

# 4.F
ggboxplot(data, x = "Group", y = "Length",
          color = "Group", palette = c("#FFA500", "#000000", "#00AFBB"),
          ylab = "Weight", xlab = "Group")

# No.5
GTL  <- read.csv(url("https://drive.google.com/uc?id=1aLUOdw_LVJq6VQrQEkuQhZ8FW43FemTJ&export=download")) 
head(GTL)

# 5.A
qplot(x = Temp, y = Light, geom = "point",
      data = GTL) +
  facet_grid(.~Glass, labeller = label_both)

# 5.B
GTL$Glass <- as.factor(GTL$Glass)
GTL$Temp_Factor <- as.factor(GTL$Temp)
anova <- aov(Light ~ Glass*Temp_Factor,
             data = GTL)
summary(anova)

# 5.C
summary.table <- group_by(GTL, Glass, Temp) 
%>%
  summarise(
    mean = mean(Light), 
    sd = sd(Light)) 
%>%
  arrange(desc(mean))

print(summary.table)

# 5.D
anova <- aov(Light ~ Glass*Temp_Factor,
             data = GTL)
print(TukeyHSD(anova))
