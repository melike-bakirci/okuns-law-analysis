# GSYİH ve İşsizlik Oranı Veri Analizi Projesi

Bu proje, Türkiye Cumhuriyet Merkez Bankası (TCMB) verileri kullanılarak, Türkiye'nin Gayri Safi Yurt İçi Hasıla (GSYİH) verileri ile İşsizlik Oranı arasındaki ilişkiyi analiz etmek amacıyla hazırlanmıştır. R programlama dili (CBRT Kütüphanesi) ve R Markdown kullanılarak veri görselleştirme, betimsel istatistikler ve korelasyon analizleri yapılmaktadır. Teoriyi pratik uygulamaya döken eğitim amaçlı bir proje olarak hazırlanmıştır.

## İçindekiler

1. [Proje Hakkında](#proje-hakkında)
2. [Dosya Yapısı](#dosya-yapısı)
3. [Kurulum ve Çalıştırma](#kurulum-ve-çalıştırma)
4. [Analiz İçeriği](#analiz-içeriği)
5. [Kullanılan Kütüphaneler](#kullanılan-kütüphaneler)

## Proje Hakkında

Bu çalışmanın temel amacı, ekonomik büyüme (GSYİH) ile işsizlik oranları arasındaki ilişkiyi incelemektir. Bu ilişki literatürde **Okun Yasası (Okun's Law)** olarak bilinir. Veriler TCMB (EVDS) üzerinden temin edilmiştir. Proje kapsamında:
- Zaman serisi grafikleri oluşturulmuş,
- Temel istatistiksel özetler çıkarılmış,
- İki değişken arasındaki korelasyon hesaplanmış ve serpilme diyagramı ile görselleştirilmiştir.

## Dosya Yapısı

Proje dizini aşağıdaki yapıdadır:

```text
okuns-law-analysis/
├── data/                      # Veri dosyalarının bulunduğu klasör
│   ├── gsyih.csv             # GSYİH verileri (Çeyreklik)
│   └── unemployment-rate.csv # İşsizlik oranı verileri (Aylık)
├── output/                    # Oluşturulan raporların kaydedildiği klasör
│   ├── gdp_analysis.html                    # GSYİH analiz raporu
│   ├── unemployment_analysis.html           # İşsizlik analiz raporu
│   └── okuns_law_comprehensive_analysis.html # Kapsamlı Okun Yasası analizi
├── gdp_analysis.Rmd                         # GSYİH analizi kaynak kodu
├── unemployment_analysis.Rmd                # İşsizlik analizi kaynak kodu
├── okuns_law_comprehensive_analysis.Rmd     # 🌟 Kapsamlı istatistiksel analiz
├── run_analysis.R                           # Ana R betiği
└── README.md                                # Proje dokümantasyonu
```

## Kurulum ve Çalıştırma

Projenin çalıştırılabilmesi için R ve gerekli paketlerin yüklü olması gerekmektedir.

### Çalıştırma Adımları

Analizleri gerçekleştirmek ve HTML raporlarını üretmek için `run_analysis.R` dosyasını çalıştırabilirsiniz. Bu dosya gerekli paketleri kontrol eder (yoksa yükler) ve raporları `output` klasörüne oluşturur.

Terminal veya R konsolundan aşağıdaki komutu kullanarak projeyi çalıştırabilirsiniz:

```bash
Rscript run_analysis.R
```

Bu işlem sonucunda `output` klasörü içerisinde `gdp_analysis.html` ve `unemployment_analysis.html` dosyaları oluşacaktır.

## Analiz İçeriği

### 1. GSYİH Analizi (`gdp_analysis.Rmd`)
- GSYİH verilerinin zaman içindeki değişimi görselleştirilir.
- Çeyreklik bazda veriler işlenir.
- İşsizlik verisi ile birleştirilerek korelasyon katsayısı hesaplanır.

### 2. İşsizlik Analizi (`unemployment_analysis.Rmd`)
- İşsizlik oranlarının aylık değişimi incelenir.
- GSYİH verisi ile birleştirilerek ekonomik büyümenin işsizlik üzerindeki etkisi görselleştirilir.

### 3. 🌟 Kapsamlı Okun Yasası Analizi (`okuns_law_comprehensive_analysis.Rmd`)

Bu dosya, projenin ana analiz dosyasıdır ve aşağıdaki kapsamlı istatistiksel içerikleri barındırır:

#### Betimsel İstatistikler
- Ortalama, medyan, standart sapma, minimum, maksimum
- Değişim katsayısı (CV)
- Çeyrekler arası aralık (IQR)
- Çarpıklık (Skewness) ve basıklık (Kurtosis)
- Yıllık ve çeyreklik özet tablolar
- Karşılaştırmalı istatistik tabloları

#### Görselleştirmeler
- Zaman serisi grafikleri (GSYİH ve İşsizlik)
- Birleşik çift eksenli grafik
- Histogram ve yoğunluk grafikleri
- Kutu grafikleri (Box Plot)
- Serpilme diyagramları (Scatter Plot)
- Regresyon diagnostik grafikleri

#### Korelasyon Analizi
- Pearson korelasyon katsayısı
- Korelasyon testi (t-testi, p-değeri, güven aralıkları)
- Seviye ve değişim bazında korelasyon

#### Regresyon Analizi
- Basit doğrusal regresyon (OLS)
- Okun katsayısı tahmini
- Model karşılaştırma tablosu
- R², düzeltilmiş R², F istatistiği

#### İstatistiksel Testler
- **Shapiro-Wilk Normallik Testi**
- **Durbin-Watson Otokorelasyon Testi**
- **Breusch-Pagan Heteroskedastisite Testi**

#### Frekans Dağılım Tablosu
- Sınıf aralıkları
- Frekans ve kümülatif frekans
- Yüzde dağılımları

## Kullanılan Kütüphaneler

Analizlerde aşağıdaki R paketleri kullanılmıştır:

- **ggplot2**: Veri görselleştirme
- **dplyr / tidyr**: Veri manipülasyonu ve düzenleme
- **knitr / rmarkdown**: Dinamik rapor oluşturma
- **kableExtra**: Gelişmiş tablo formatlaması
- **lubridate**: Tarih ve zaman verilerinin işlenmesi
- **corrplot**: Korelasyon analizi
- **scales**: Sayı ve eksen formatlaması
- **moments**: Çarpıklık ve basıklık hesaplamaları
- **car**: Durbin-Watson otokorelasyon testi
- **lmtest**: Breusch-Pagan heteroskedastisite testi
- **CBRT**: TCMB veri çekme (ilgili veri setleri için)

---
