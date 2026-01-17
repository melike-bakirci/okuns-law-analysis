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
│   ├── gdp_analysis.html    # GSYİH analiz raporu çıktısı
│   └── unemployment_analysis.html # İşsizlik analiz raporu çıktısı
├── gdp_analysis.Rmd          # GSYİH analizi için R Markdown kaynak kodu
├── unemployment_analysis.Rmd       # İşsizlik analizi için R Markdown kaynak kodu
├── run_analysis.R             # Tüm analizleri çalıştırıp raporları üreten ana R betiği
└── README.md                  # Proje dokümantasyonu
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

## Kullanılan Kütüphaneler

Analizlerde aşağıdaki R paketleri kullanılmıştır:

- **ggplot2**: Veri görselleştirme
- **dplyr / tidyr**: Veri manipülasyonu ve düzenleme
- **knitr / rmarkdown**: Dinamik rapor oluşturma
- **lubridate**: Tarih ve zaman verilerinin işlenmesi
- **corrplot**: Korelasyon analizi
- **CBRT**: Veri çekme ve işleme (ilgili veri setleri için)

---
