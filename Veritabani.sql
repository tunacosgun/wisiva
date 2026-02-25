-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 01 May 2025, 14:10:51
-- Sunucu sürümü: 8.0.33
-- PHP Sürümü: 8.3.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `wisivademopaneli_db`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `addons`
--

CREATE TABLE `addons` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `link_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:Internal 2:External',
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 : Unread 1: Read',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `admin_notifications`
--

INSERT INTO `admin_notifications` (`id`, `title`, `link`, `link_type`, `image`, `status`, `created_at`, `updated_at`) VALUES
(14, 'test test kaydoldu', 'https://wisiva.demopaneli.com/adminsc/members/users/8/edit', 1, 'https://www.gravatar.com/avatar/5d40633ee3a48ee91da5269a792586db?d=retro', 1, '2025-04-21 06:37:43', '2025-04-24 12:56:57'),
(15, 'aslan amca kaydoldu', 'https://wisiva.demopaneli.com/adminsc/members/users/9/edit', 1, 'https://www.gravatar.com/avatar/369ac755e1a627b58695a1c4ff67b8f1?d=retro', 1, '2025-04-25 06:54:55', '2025-04-25 08:16:48'),
(16, 'Ahmet Toprak kaydoldu', 'https://wisiva.demopaneli.com/adminsc/members/users/11/edit', 1, 'https://www.gravatar.com/avatar/b8d12c958f963fa801df1ea97307a0f9?d=retro', 1, '2025-04-30 02:01:31', '2025-04-30 04:30:14'),
(17, 'Tggg Gggg kaydoldu', 'https://wisiva.demopaneli.com/adminsc/members/users/13/edit', 1, 'https://www.gravatar.com/avatar/142d11498f0f456fd6c67ac2e26ea036?d=retro', 1, '2025-04-30 16:03:29', '2025-05-01 03:37:20');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ads`
--

CREATE TABLE `ads` (
  `id` bigint UNSIGNED NOT NULL,
  `alias` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `size` varchar(255) DEFAULT NULL,
  `code` longtext,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `ads`
--

INSERT INTO `ads` (`id`, `alias`, `position`, `size`, `code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'head_code', 'Head Code', NULL, NULL, 0, '2024-04-16 21:20:58', '2024-09-27 18:21:42'),
(2, 'home_page_top', 'Home Page (Top)', NULL, NULL, 0, '2024-04-16 21:20:58', '2024-05-08 15:17:59'),
(3, 'home_page_center', 'Home Page (Center)', NULL, NULL, 0, '2024-04-16 21:20:58', '2024-04-16 16:30:56'),
(4, 'home_page_bottom', 'Home Page (Bottom)', NULL, NULL, 0, '2024-04-16 21:20:58', '2024-04-16 16:30:56'),
(5, 'item_page_top', 'Item Page (Top)', NULL, NULL, 0, '2024-04-16 21:20:58', '2024-04-16 16:30:56'),
(6, 'item_page_sidebar', 'Item Page (Sidebar)', NULL, NULL, 0, '2024-04-16 21:20:58', '2024-09-27 18:31:03'),
(7, 'item_page_description_top', 'Item Page (Description Top)', NULL, NULL, 0, '2024-04-16 21:20:58', '2024-09-27 18:32:51'),
(8, 'item_page_description_bottom', 'Item Page (Description Bottom)', NULL, NULL, 0, '2024-04-16 21:20:58', '2024-09-27 18:32:56'),
(9, 'item_page_bottom', 'Item Page (Bottom)', NULL, NULL, 0, '2024-04-16 21:20:58', '2024-04-16 16:30:56'),
(10, 'category_page_top', 'Category Page (Top)', NULL, NULL, 0, '2024-04-16 21:20:58', '2024-04-16 16:30:56'),
(11, 'category_page_bottom', 'Category Page (Bottom)', NULL, NULL, 0, '2024-04-16 21:20:58', '2024-04-16 16:30:56'),
(12, 'search_page_top', 'Search Page (Top)', NULL, NULL, 0, '2024-04-16 21:20:58', '2024-04-16 16:30:56'),
(13, 'search_page_bottom', 'Search Page (Bottom)', NULL, NULL, 0, '2024-04-16 21:20:58', '2024-04-16 16:30:56'),
(14, 'blog_page_top', 'Blog Page (Top)', NULL, NULL, 0, '2024-04-16 21:20:58', '2024-04-16 16:30:56'),
(15, 'blog_page_bottom', 'Blog Page (Bottom)', NULL, NULL, 0, '2024-04-16 21:20:58', '2024-04-16 16:30:56'),
(16, 'blog_article_page_top', 'Blog Article Page (Top)', NULL, NULL, 0, '2024-04-16 21:20:58', '2024-04-16 16:30:56'),
(17, 'blog_article_page_bottom', 'Blog Article Page (Bottom)', NULL, NULL, 0, '2024-04-16 21:20:58', '2024-04-16 16:30:56');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blog_articles`
--

CREATE TABLE `blog_articles` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `short_description` varchar(200) NOT NULL,
  `blog_category_id` bigint UNSIGNED NOT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `blog_articles`
--

INSERT INTO `blog_articles` (`id`, `title`, `slug`, `image`, `body`, `short_description`, `blog_category_id`, `views`, `created_at`, `updated_at`) VALUES
(1, 'Nasıl Yazılımcı Olunur?', 'nasil-yazilimci-olunur', 'images/blog/MOWZzLCieZnqi74_1736439624.jpg', '<p>Teknolojinin hızla geliştiği bu dönemde yazılımcı olmak, hem heyecan verici bir kariyer hem de sağlam bir gelecek vaat ediyor. Ancak yazılımcı olmak için yalnızca kod yazmayı öğrenmek yetmez. Disiplinli bir öğrenme süreci, problem çözme becerileri ve sürekli gelişime açık bir zihniyet gereklidir. İşte yazılımcı olma yolunda size rehber olacak adımlar:</p><h4>1. <strong>Kendinize Hedef Belirleyin</strong></h4><p>Yazılımcı olmaya karar verdiyseniz, öncelikle bu alanda ne yapmak istediğinizi belirleyin:</p><ul><li>Mobil uygulama geliştirmek mi istiyorsunuz?</li><li>Web geliştirme mi ilginizi çekiyor?</li><li>Oyun geliştirme, yapay zeka veya veri analizi gibi uzmanlık alanlarına mı yönelmek istiyorsunuz?</li></ul><p>Bu hedef, hangi programlama dilini ve araçları öğrenmeniz gerektiğini belirlemenizde yardımcı olacaktır.</p><h4>2. <strong>Doğru Programlama Dilini Seçin</strong></h4><p>Yazılım dünyası birçok programlama diliyle doludur. Başlangıçta herkesin öğrenmesi kolay olan bir dili tercih etmek faydalı olacaktır:</p><ul><li><strong>Python</strong>: Yapay zeka, veri analitiği ve web geliştirme için popülerdir.</li><li><strong>JavaScript</strong>: Web geliştirme için harikadır.</li><li><strong>C# veya C++</strong>: Oyun geliştirme için tercih edilir.</li><li><strong>Java</strong>: Mobil uygulama geliştirme için güçlü bir seçenektir.</li></ul><p>Başlangıçta tek bir dile odaklanmak önemlidir, zamanla birden fazla dili öğrenebilirsiniz.</p><h4>3. <strong>Kaynaklardan Faydalanın</strong></h4><p>Yazılım öğrenmek için birçok ücretsiz ve ücretli kaynak bulunmaktadır. İşte bazı öneriler:</p><ul><li><strong>Online Eğitim Platformları</strong>: Udemy, Coursera, Codecademy, FreeCodeCamp gibi platformlarda yazılım kursları alabilirsiniz.</li><li><strong>Youtube</strong>: Ücretsiz video dersleriyle başlangıç yapabilirsiniz.</li><li><strong>Kitaplar</strong>: Alanında uzman yazarların kitaplarını okuyarak derinlemesine bilgi sahibi olabilirsiniz.</li><li><strong>Dokümantasyon</strong>: Herhangi bir dil veya teknoloji için resmi dokümantasyonu okumak, sağlam bir temel oluşturur.</li></ul><h4>4. <strong>Kod Yazmaya Başlayın</strong></h4><p>Yazılımcı olmanın temel taşı, pratik yapmaktır. Öğrendiğiniz her bilgiyi pratiğe dökmek için küçük projeler yapın:</p><ul><li>Basit bir hesap makinesi geliştirin.</li><li>Blog sitesi gibi basit bir web uygulaması oluşturun.</li><li>Veri analitiğiyle küçük veri setlerini analiz edin.</li></ul><p>Başlangıçta kod yazarken hatalar yapmak normaldir. Hatalarınızı çözerek öğrenmek, yazılım geliştirmenin en etkili yollarından biridir.</p><h4>5. <strong>Projeler Geliştirin</strong></h4><p>Bir yazılımcının en güçlü portföyü projeleridir. Küçük projelerle başladığınız bu yolculukta, zamanla daha büyük ve etkileyici projeler geliştirin. Örneğin:</p><ul><li>Bir oyun tasarlayın.</li><li>Tamamen işlevsel bir e-ticaret sitesi oluşturun.</li><li>Kullanıcı dostu bir mobil uygulama geliştirin.</li></ul><p>Projelerinizi GitHub gibi platformlarda paylaşarak başkalarının sizin çalışmalarınızı görmesini sağlayabilirsiniz.</p><h4>6. <strong>Topluluklara Katılın</strong></h4><p>Yazılım toplulukları, hem öğrenmek hem de yardım almak için harika bir kaynaktır:</p><ul><li>Stack Overflow, Reddit veya Discord gibi platformlarda yazılım gruplarına katılın.</li><li>Yerel yazılım meet-up’larına veya hackathonlara katılarak diğer yazılımcılarla tanışın.</li><li>Açık kaynak projelere katkı sağlayarak deneyim kazanın.</li></ul><h4>7. <strong>Problem Çözme Becerilerinizi Geliştirin</strong></h4><p>Bir yazılımcının en büyük görevi problem çözmektir. Algoritma ve veri yapıları konularında kendinizi geliştirin. LeetCode, HackerRank veya Codewars gibi platformlarda düzenli olarak problem çözün.</p><h4>8. <strong>Sertifikalar ve Eğitimler Alın</strong></h4><p>İş başvurularında öne çıkmak için alanınızla ilgili sertifikalar edinin. Örneğin:</p><ul><li>Web geliştirme için <strong>Frontend Developer</strong> veya <strong>Backend Developer</strong> sertifikaları.</li><li>Veri analitiği için <strong>Google Data Analytics</strong> sertifikası.</li><li>Bulut bilişim için <strong>AWS</strong>, <strong>Azure</strong> veya <strong>Google Cloud</strong> sertifikaları.</li></ul><p>Bu sertifikalar, becerilerinizi resmi olarak kanıtlamanızı sağlar.</p><h4>9. <strong>İş Deneyimi Edinin</strong></h4><p>Bir yazılım firmasında staj yaparak veya freelance projeler üstlenerek iş deneyimi kazanın. Gerçek hayatta yazılım geliştirme süreçlerini görmek, bilgilerinizi pekiştirmenizi sağlar.</p><h4>10. <strong>Sabırlı ve Azimli Olun</strong></h4><p>Yazılımcı olmak bir gecede gerçekleşecek bir şey değildir. Süreç boyunca zorlanabilir, motivasyonunuzu kaybedebilirsiniz. Ancak her yeni öğrendiğiniz bilgiyle bir adım daha ileri gideceksiniz. Disiplinli çalışarak ve sabırlı olarak bu hedefe ulaşabilirsiniz.</p><p>Yazılımcı olmak sadece bir meslek değil, aynı zamanda bir problem çözme sanatı ve yaratıcılığı ortaya koyma fırsatıdır. Teknoloji dünyasına adım atarak, hem bireysel hem de profesyonel hayatınızda büyük bir dönüşüm sağlayabilirsiniz. Bu yolculukta en önemli şey öğrenmeye açık bir zihin ve asla pes etmemek olacaktır.</p><p>Başarılar! ?</p>', 'Teknolojinin hızla geliştiği bu dönemde yazılımcı olmak, hem heyecan verici bir kariyer hem de sağlam bir gelecek vaat ediyor. Ancak yazılımcı olmak için yalnızca kod yazmayı öğrenmek yetmez.', 1, 12, '2025-01-09 08:20:24', '2025-04-22 04:15:11'),
(2, 'SEO Nedir ve Nasıl Yapılır?', 'seo-nedir-ve-nasil-yapilir', 'images/blog/O5sddLIIRqtjvAM_1736439659.png', '<p>SEO (Search Engine Optimization), yani Arama Motoru Optimizasyonu, web sitenizin arama motorlarında üst sıralara çıkmasını sağlayan bir dizi teknik ve stratejiyi ifade eder. Günümüzde işletmelerin, blogların ve bireysel girişimlerin online varlıklarını güçlendirmeleri için SEO vazgeçilmez bir araçtır. Doğru bir SEO stratejisiyle, sitenize daha fazla organik trafik çekebilir ve hedef kitlenize daha kolay ulaşabilirsiniz.</p><p>Bu yazıda SEO’nun temellerini ve nasıl yapılacağını detaylıca inceleyeceğiz.</p><h3>SEO Neden Önemlidir?</h3><p>SEO, dijital dünyada görünürlüğünüzü artırır ve aşağıdaki avantajları sağlar:</p><ul><li><strong>Daha Fazla Trafik:</strong> SEO, arama motorlarında üst sıralarda yer almanızı sağlayarak organik ziyaretçi sayınızı artırır.</li><li><strong>Güven ve Otorite:</strong> İlk sıralarda yer alan siteler, kullanıcıların gözünde daha güvenilirdir.</li><li><strong>Uzun Vadeli Fayda:</strong> Doğru bir SEO çalışması, zamanla artan bir trafik kaynağı oluşturur.</li><li><strong>Daha Az Reklam Harcaması:</strong> Organik trafik, ücretli reklamlardan daha sürdürülebilir ve ekonomiktir.</li></ul><h3>SEO’nun Temel Bileşenleri</h3><h4>1. <strong>Anahtar Kelime Araştırması</strong></h4><p>SEO’nun temel taşı doğru anahtar kelime seçimidir. Anahtar kelimeler, hedef kitlenizin arama motorlarında kullandığı kelimeler ve ifadelerdir.</p><ul><li><strong>Araştırma Araçları:</strong> Google Keyword Planner, Ahrefs, SEMrush gibi araçlarla popüler anahtar kelimeleri belirleyebilirsiniz.</li><li><strong>Uzun Kuyruklu Anahtar Kelimeler:</strong> Daha az rekabetçi ve spesifik ifadeler seçerek daha hedefli bir trafik çekebilirsiniz. Örneğin, \"SEO nedir?\" yerine \"SEO nasıl yapılır 2024\" gibi uzun kuyruklu anahtar kelimeler tercih edebilirsiniz.</li></ul><h4>2. <strong>Teknik SEO</strong></h4><p>Teknik SEO, sitenizin arama motorları tarafından taranabilir ve anlaşılabilir olmasını sağlar.</p><ul><li><strong>Mobil Uyumluluk:</strong> Web sitenizin mobil cihazlara uyumlu olması, Google tarafından bir sıralama faktörü olarak değerlendirilir.</li><li><strong>Hızlı Yükleme Süresi:</strong> Sayfa yükleme hızı kullanıcı deneyimi için kritiktir. Google PageSpeed Insights ile sitenizin hızını kontrol edebilirsiniz.</li><li><strong>SSL Sertifikası:</strong> HTTPS protokolü, güvenli bir site olduğunuzu gösterir ve SEO için önemlidir.</li><li><strong>Site Haritası (Sitemap):</strong> Arama motorlarının sitenizi daha iyi anlaması için XML site haritası oluşturun.</li></ul><h4>3. <strong>İçerik SEO</strong></h4><p>İçerik, SEO’nun en önemli unsurlarından biridir. Kaliteli ve optimize edilmiş içerik, arama motorlarında sıralamanızı doğrudan etkiler.</p><ul><li><strong>Özgün ve Değerli İçerik:</strong> Kullanıcıların ihtiyaçlarına cevap veren içerikler oluşturun.</li><li><strong>Anahtar Kelime Optimizasyonu:</strong> İçeriğinizde anahtar kelimeleri doğal bir şekilde kullanın. Anahtar kelime yoğunluğu %1-2 arasında olmalıdır.</li><li><strong>Başlıklar ve Alt Başlıklar:</strong> H1, H2 ve H3 etiketlerini kullanarak içeriğinizi düzenli ve okunabilir hale getirin.</li><li><strong>Meta Açıklamaları:</strong> Her sayfa için açıklayıcı ve dikkat çekici meta açıklamaları yazın.</li></ul><h4>4. <strong>Bağlantı Kurulumu (Backlink ve Dahili Bağlantılar)</strong></h4><p>Bağlantılar, sitenizin otoritesini artırır ve Google’ın gözünde daha değerli olmasını sağlar.</p><ul><li><strong>Backlink:</strong> Diğer kaliteli web sitelerinden aldığınız bağlantılardır. Organik olarak kazanılmış, otoriter sitelerden gelen backlink’ler daha etkilidir.</li><li><strong>Dahili Bağlantılar:</strong> Kendi sitenizdeki diğer içeriklere bağlantı vererek kullanıcıların daha fazla zaman geçirmesini sağlayabilirsiniz.</li></ul><h4>5. <strong>Yerel SEO</strong></h4><p>Eğer bir yerel işletmeyseniz, yerel SEO çalışmalarına odaklanmalısınız:</p><ul><li><strong>Google My Business:</strong> İşletmenizi buraya kaydederek yerel aramalarda üst sıralara çıkabilirsiniz.</li><li><strong>Yerel Anahtar Kelimeler:</strong> \"Ankara web tasarım ajansı\" gibi yerel ifadeleri hedefleyin.</li></ul><h3>SEO Nasıl Yapılır? Adım Adım Kılavuz</h3><ol><li><strong>Anahtar Kelime Belirleyin:</strong> Hedef kitlenizin arama yaptığı terimleri araştırın.</li><li><strong>Hedef Sayfalarınızı Oluşturun:</strong> Anahtar kelimelerinize uygun sayfalar tasarlayın.</li><li><strong>İçeriği Optimize Edin:</strong> Başlıklar, meta açıklamaları ve içerik üzerinde anahtar kelimelerinizi doğal bir şekilde kullanın.</li><li><strong>Teknik SEO’ya Odaklanın:</strong> Web sitenizi hızlı, mobil uyumlu ve kullanıcı dostu hale getirin.</li><li><strong>Backlink Edinin:</strong> Kaliteli sitelerden doğal backlink’ler kazanmaya çalışın.</li><li><strong>Performansı İzleyin:</strong> Google Analytics ve Google Search Console gibi araçlarla SEO sonuçlarınızı analiz edin.</li></ol><h3>SEO İpuçları</h3><ul><li><strong>Güncel Kalın:</strong> Arama motorlarının algoritmaları sürekli değişir. Güncel SEO trendlerini takip edin.</li><li><strong>Kullanıcı Odaklı Olun:</strong> SEO sadece arama motorları için değil, aynı zamanda kullanıcı deneyimi içindir.</li><li><strong>Rakip Analizi Yapın:</strong> Rakiplerinizin hangi anahtar kelimeleri hedeflediğini ve nasıl içerikler oluşturduğunu inceleyin.</li><li><strong>Sürekli Çalışın:</strong> SEO, bir kez yapılan bir şey değildir. Sürekli analiz ve iyileştirme gerektirir.</li></ul><p>SEO, bir web sitesinin başarısını artırmak için olmazsa olmaz bir stratejidir. Doğru bir şekilde uygulandığında, organik trafik çekmek ve hedef kitlenize ulaşmak için etkili bir yol sunar. Unutmayın, SEO uzun vadeli bir yatırımdır ve sabır gerektirir. Ancak sonuçları, verdiğiniz emeğe değecektir.</p><p>SEO dünyasında başarılı olmak için işe bugün başlayın ve sitenizi bir adım öne taşıyın! ?</p>', 'SEO (Search Engine Optimization), yani Arama Motoru Optimizasyonu, web sitenizin arama motorlarında üst sıralara çıkmasını sağlayan bir dizi teknik ve stratejiyi ifade eder.', 2, 19, '2025-01-09 08:20:59', '2025-04-26 06:34:03'),
(3, 'Dijital Başarı İçin Güçlü İkili', 'dijital-basari-icin-gueclue-ikili', 'images/blog/DrrVfK9JOXp44ZT_1736693673.png', '<h4>Yazılım ve SEO’nun Önemi</h4><p>Günümüzde, işletmelerin dijital ortamda rekabetçi kalabilmesi için yazılım ve SEO\'nun uyumlu bir şekilde çalışması şarttır. Doğru yazılımlar, SEO süreçlerini optimize ederken, <strong>SEO </strong>ise yazılımın sunduğu çözümleri daha görünür hale getirir.</p><h4>Yazılımın SEO’ya Katkıları</h4><ul><li><strong>Hızlı ve Optimize Web Siteleri:</strong> SEO dostu kodlama teknikleri, sitenizin arama motorları tarafından daha iyi değerlendirilmesini sağlar.</li><li><strong>Veri Analitiği:</strong> Yazılım çözümleri, SEO kampanyalarınızın performansını analiz etmenizi ve geliştirme alanlarını tespit etmenizi sağlar.</li><li><strong>Otomasyon Araçları:</strong> Zaman kazandıran yazılımlar sayesinde içerik oluşturma ve anahtar kelime optimizasyonu süreçleri hızlanır.</li></ul><h4>SEO\'nun Yazılım Çözümlerine Katkıları</h4><p>SEO stratejileri, yazılım ürünlerinin daha fazla hedef kitleye ulaşmasını sağlar. Özellikle, anahtar kelime odaklı içerik ve backlink çalışmaları, yazılım çözümlerinin dijital pazardaki yerini güçlendirir.</p><h4>Başarı İçin İdeal Strateji</h4><p>Yazılım ve SEO\'nun birleşimi, işletmelerin dijital hedeflerine ulaşmalarında büyük rol oynar. <strong>Xyazılım </strong>olarak, hem yazılım hem de SEO hizmetlerimizle işletmenizin dijital dünyadaki başarısını garanti altına alıyoruz.</p>', 'Günümüzde, işletmelerin dijital ortamda rekabetçi kalabilmesi için yazılım ve SEO\'nun uyumlu bir şekilde çalışması şarttır.', 1, 26, '2025-01-12 06:54:33', '2025-04-26 05:31:46');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `views`, `created_at`, `updated_at`) VALUES
(1, 'Yazılım', 'yazilim', 13, '2025-01-09 08:18:11', '2025-04-24 07:48:16'),
(2, 'Seo', 'seo', 15, '2025-01-09 08:18:32', '2025-04-24 07:48:57');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `blog_article_id` bigint UNSIGNED NOT NULL,
  `body` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `captcha_providers`
--

CREATE TABLE `captcha_providers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `settings` longtext NOT NULL,
  `instructions` text,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:Disabled 1:Enabled',
  `is_default` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:No 1:Yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `captcha_providers`
--

INSERT INTO `captcha_providers` (`id`, `name`, `alias`, `logo`, `settings`, `instructions`, `status`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Google reCAPTCHA', 'google_recaptcha', 'images/captcha-providers/google-recaptcha.png', '{\"site_key\":null,\"secret_key\":null}', NULL, 0, 1, '2024-06-29 19:15:34', '2024-09-30 17:26:35'),
(2, 'hCaptcha', 'hcaptcha', 'images/captcha-providers/hcaptcha.png', '{\"site_key\":null,\"secret_key\":null}', NULL, 0, 0, '2024-06-29 19:15:34', '2024-06-29 17:01:25'),
(3, 'Cloudflare Turnstile', 'cloudflare_turnstile', 'images/captcha-providers/cloudflare-turnstile.png', '{\"site_key\":null,\"secret_key\":null}', NULL, 0, 0, '2024-06-29 19:15:34', '2024-07-02 19:25:39');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cart_items`
--

CREATE TABLE `cart_items` (
  `id` bigint UNSIGNED NOT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `item_id` bigint UNSIGNED NOT NULL,
  `license_type` tinyint NOT NULL DEFAULT '1' COMMENT '1:Regular 2:Extended',
  `quantity` int UNSIGNED NOT NULL DEFAULT '1',
  `support_period_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `cart_items`
--

INSERT INTO `cart_items` (`id`, `session_id`, `user_id`, `item_id`, `license_type`, `quantity`, `support_period_id`, `created_at`, `updated_at`) VALUES
(3, '058e9964d1ff6784b0c06db9d00a2aeea3ef0c67', NULL, 1003, 1, 3, 1, '2025-01-10 09:13:28', '2025-01-10 09:13:44'),
(8, 'bc6c9dd51321fb36cdb61ccbe47288f15ffa4bf4', NULL, 1012, 1, 1, 1, '2025-02-02 08:02:53', '2025-02-02 08:02:53'),
(9, 'f0bc1ca80d8cbef1c973af398880f2297238013a', NULL, 1019, 1, 1, 1, '2025-02-02 08:22:12', '2025-02-02 08:22:12'),
(10, '8d37eda818c2e5d554d574069bfdb3ec337dd5e7', NULL, 1021, 1, 1, 1, '2025-02-17 02:54:47', '2025-02-17 02:54:47'),
(12, '8fb43cebb518e087f57440a7f9009e8d9867e51e', NULL, 1004, 1, 1, 1, '2025-03-17 05:14:06', '2025-03-17 05:14:06'),
(27, 'a394691dca0cd7d9bd3afac22fa438d23b35fb65', NULL, 1023, 1, 1, 1, '2025-04-20 08:25:54', '2025-04-20 08:25:54'),
(32, NULL, 8, 1011, 1, 1, 1, '2025-04-21 06:38:09', '2025-04-21 06:38:09'),
(34, '9bfb5e7bbc017b75fea0a6b273721941f37e9224', NULL, 1011, 1, 1, 1, '2025-04-21 06:53:17', '2025-04-21 06:53:17'),
(35, '0b756ff7486735df5c56111d0365b43c1a1355c7', NULL, 1012, 1, 1, 1, '2025-04-21 07:08:38', '2025-04-21 07:08:38'),
(36, '5757fdbd542ad00281508bf01498a4cc57eb61f9', NULL, 1012, 1, 1, 1, '2025-04-21 14:54:43', '2025-04-21 14:54:43'),
(39, 'ef4c4562210e67e6e2e51fbefbaebf22ebbed99c', NULL, 1007, 1, 1, 1, '2025-04-22 12:46:52', '2025-04-22 12:46:52'),
(43, '544d364538f1e0260e5ba72d839b35ce2ca2b497', NULL, 1021, 1, 1, 1, '2025-04-24 03:39:09', '2025-04-24 03:39:09'),
(46, '1933cf0ef3fcfcbc29178da0f4691c85c72f5b36', NULL, 1012, 1, 1, 1, '2025-04-25 00:14:49', '2025-04-25 00:14:49'),
(47, 'f8d2508da644e5e0f8a290ab265f052198e6fdee', NULL, 1017, 1, 1, 1, '2025-04-25 01:02:14', '2025-04-25 01:02:14'),
(49, '1e2cb5bc891c3586e44ff2dbc1369178103394a9', NULL, 1006, 1, 1, 1, '2025-04-25 01:07:44', '2025-04-25 01:07:44'),
(50, 'a24a3834900a1127021ab379c5e6b77b65f08ea8', NULL, 1014, 1, 1, 1, '2025-04-25 01:10:51', '2025-04-25 01:10:51'),
(51, '0fa254cd9adf9581325bac40aaf57688a77f71e1', NULL, 1016, 1, 1, 1, '2025-04-25 01:20:42', '2025-04-25 01:20:42'),
(52, '9f65f6a2efc03667ace6e3a0a668bbd9b8eab8ae', NULL, 1012, 1, 1, 2, '2025-04-25 01:21:04', '2025-04-25 01:21:04'),
(53, '3afb752831b1c094d77463caed9f3fd8f6799a05', NULL, 1023, 1, 1, 1, '2025-04-25 01:21:43', '2025-04-25 01:21:43'),
(54, '91af0eba1d994199a2f67fe25566b56909258f96', NULL, 1006, 1, 1, 1, '2025-04-25 01:27:36', '2025-04-25 01:27:36'),
(55, 'c07223a32544c02931990b2b7629bcd612f1f6f0', NULL, 1017, 1, 1, 1, '2025-04-25 01:35:43', '2025-04-25 01:35:43'),
(56, 'ca15018b50c9339e8eb184cee7571873eba94b8a', NULL, 1006, 1, 1, 1, '2025-04-25 01:49:13', '2025-04-25 01:49:13'),
(58, 'eefa18f645591726e927b052e86c0470011a470b', NULL, 1023, 1, 1, 1, '2025-04-25 02:19:16', '2025-04-25 02:19:16'),
(59, 'a4d7fac06a0cce86c573155caff35be0e32b4ded', NULL, 1012, 1, 1, 1, '2025-04-25 02:29:52', '2025-04-25 02:29:52'),
(60, '702ea3ebaaf9b4bf0ee55492388d430b1744f480', NULL, 1016, 1, 1, 1, '2025-04-25 02:50:54', '2025-04-25 02:50:54'),
(61, '1ed442c010adfee3c402f8415aafabfc2f2636e5', NULL, 1017, 1, 1, 1, '2025-04-25 04:18:50', '2025-04-25 04:18:50'),
(62, 'a3d7c3ea1b3580b1a5655dc947a682476f1f17b2', NULL, 1003, 1, 1, 1, '2025-04-25 04:35:39', '2025-04-25 04:35:39'),
(66, '241562ee1915d6a7c5ab91714406e2ac74aecc4d', NULL, 1021, 1, 1, 1, '2025-04-25 06:38:10', '2025-04-25 06:38:10'),
(67, '8c2cb9ceeb6b13e7031cbd9532636df4782c58fb', NULL, 1016, 1, 2, 2, '2025-04-25 06:38:17', '2025-04-25 06:39:07'),
(68, '8597c24901fda08e820b2008fd4cc1b1196a9e03', NULL, 1017, 1, 1, 1, '2025-04-25 06:39:47', '2025-04-25 06:39:47'),
(69, '5dbb8758870b8bbf842ed04133985820f6724bda', NULL, 1023, 1, 1, 1, '2025-04-25 06:45:26', '2025-04-25 06:45:26'),
(70, '0bf030475f4b334ee4b49b82b114ca049905192c', NULL, 1014, 1, 1, 1, '2025-04-25 08:37:41', '2025-04-25 08:37:41'),
(71, '83a455dd5e19649f36a79f968431e84fc725c73f', NULL, 1020, 1, 1, 2, '2025-04-25 09:25:55', '2025-04-25 09:25:55'),
(73, '2748a2d5f69ad312f990938403eedf0d0bb5f953', NULL, 1019, 1, 1, 1, '2025-04-25 13:29:54', '2025-04-25 13:30:19'),
(77, NULL, 6, 1021, 1, 1, 2, '2025-04-25 21:32:54', '2025-04-26 07:33:38'),
(78, 'bfd3c51acb90984397536dfb661a4702b166099f', NULL, 1012, 1, 1, 1, '2025-04-25 23:18:02', '2025-04-25 23:18:02'),
(79, 'bfd3c51acb90984397536dfb661a4702b166099f', NULL, 1018, 1, 1, 1, '2025-04-25 23:18:05', '2025-04-25 23:18:05'),
(80, 'bfd3c51acb90984397536dfb661a4702b166099f', NULL, 1009, 1, 1, 1, '2025-04-25 23:18:07', '2025-04-25 23:18:07'),
(81, 'bfd3c51acb90984397536dfb661a4702b166099f', NULL, 1021, 1, 1, 1, '2025-04-25 23:18:09', '2025-04-25 23:18:09'),
(83, '647d33cd47a78b4f4de9d23f0ebeccd8abaf8e3e', NULL, 1019, 1, 1, 1, '2025-04-30 04:28:13', '2025-04-30 04:28:13'),
(88, NULL, 13, 1019, 1, 1, 1, '2025-04-30 12:53:15', '2025-04-30 16:03:31'),
(90, NULL, 13, 1017, 1, 1, 1, '2025-04-30 16:02:58', '2025-04-30 16:03:32'),
(91, '3a9cc8b83970360de705250cf5a9c80ae89904ce', NULL, 1005, 1, 1, 1, '2025-05-01 03:24:27', '2025-05-01 03:24:27'),
(92, '100823418244e49fffdb7dae27b7e1d8ae0187bf', NULL, 1019, 1, 1, 1, '2025-05-01 03:26:14', '2025-05-01 03:26:14');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `file_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:File With Preview Image  2:File With Video Preview  3:File With Audio Preview',
  `views` bigint NOT NULL DEFAULT '0',
  `sort_id` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `title`, `description`, `file_type`, `views`, `sort_id`, `created_at`, `updated_at`) VALUES
(2, 'Hazır Yazılımlar', 'yazilimlar', NULL, NULL, 1, 64, 1, '2024-05-26 08:12:15', '2025-05-01 03:29:38'),
(9, 'Wordpress Temaları', 'wordpress-temalari', NULL, NULL, 1, 4, 2, '2025-01-15 02:24:40', '2025-04-20 16:25:22'),
(10, 'Opencart Temaları', 'opencart-temalari', NULL, NULL, 1, 4, 3, '2025-01-15 02:24:51', '2025-04-20 16:24:20');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `category_options`
--

CREATE TABLE `category_options` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `type` tinyint NOT NULL COMMENT '1:Single Select 2:Multiple Select',
  `name` varchar(255) NOT NULL,
  `options` longtext NOT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT '1',
  `sort_id` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `extensions`
--

CREATE TABLE `extensions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `settings` longtext NOT NULL,
  `instructions` text,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:Disabled 1:Enabled',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `extensions`
--

INSERT INTO `extensions` (`id`, `name`, `alias`, `logo`, `settings`, `instructions`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Google Analytics 4', 'google_analytics', 'images/extensions/google-analytics.png', '{\"measurement_id\":\"1\"}', '<ul class=\"mb-0\"> \n<li>Enter google analytics 4 measurement ID, like <strong>G-12345ABC</strong></li> \n</ul>', 0, '2022-02-23 19:40:12', '2025-01-15 04:08:44'),
(3, 'Tawk.to', 'tawk_to', 'images/extensions/tawk-to.png', '{\"api_key\":\"1\"}', '<ul class=\"mb-0\"> \r\n<li>https://tawk.to/chat/<strong>API-KEY</strong></li> \r\n</ul>', 0, '2022-02-23 19:40:12', '2025-01-15 04:08:50'),
(4, 'Imgur', 'imgur', 'images/extensions/imgur.png', '{\"client_id\":\"1\"}', '<ul class=\"mb-0\"> \r\n<li class=\"mb-2\">Imgur API used to upload images from editors all over the website, this is required for the upload function to work.</li>\r\n<li>Get your client id from:\r\n<a href=\"https://api.imgur.com/oauth2/addclient\" traget=\"_blank\">https://api.imgur.com/oauth2/addclient</a>\r\n</li> \r\n</ul>', 0, '2022-02-23 19:40:12', '2025-01-15 04:08:56'),
(5, 'Trustip', 'trustip', 'images/extensions/trustip.png', '{\"api_key\":\"1\"}', '<ul class=\"mb-0\"> \r\n<li class=\"mb-2\">Trustip is used to block people who uses VPN, Proxy, etc from registering or purchasing from the marketplace.</li>\r\n<li>Get your api key from:\r\n<a href=\"https://trustip.io\" traget=\"_blank\">https://trustip.io</a>\r\n</li> \r\n</ul>', 0, '2022-02-23 19:40:12', '2025-01-15 04:09:03');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, 'f9fe83e4-e7de-4f63-8b8e-bf95eee3017e', 'database', 'default', '{\"uuid\":\"f9fe83e4-e7de-4f63-8b8e-bf95eee3017e\",\"displayName\":\"App\\\\Jobs\\\\Admin\\\\SendAdminItemReviewNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\Admin\\\\SendAdminItemReviewNotification\",\"command\":\"O:46:\\\"App\\\\Jobs\\\\Admin\\\\SendAdminItemReviewNotification\\\":1:{s:6:\\\"review\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\ItemReview\\\";s:2:\\\"id\\\";i:1000;s:9:\\\"relations\\\";a:5:{i:0;s:4:\\\"item\\\";i:1;s:13:\\\"item.category\\\";i:2;s:16:\\\"item.subCategory\\\";i:3;s:12:\\\"item.reviews\\\";i:4;s:5:\\\"reply\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\Models\\ItemReview]. in /home/scdemopaneli/public_html/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php:619\nStack trace:\n#0 /home/scdemopaneli/public_html/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(109): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 /home/scdemopaneli/public_html/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(62): App\\Jobs\\Admin\\SendAdminItemReviewNotification->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 /home/scdemopaneli/public_html/vendor/laravel/framework/src/Illuminate/Queue/SerializesModels.php(93): App\\Jobs\\Admin\\SendAdminItemReviewNotification->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: App\\Jobs\\Admin\\SendAdminItemReviewNotification->__unserialize(Array)\n#4 /home/scdemopaneli/public_html/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(97): unserialize(\'O:46:\"App\\\\Jobs\\\\...\')\n#5 /home/scdemopaneli/public_html/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(60): Illuminate\\Queue\\CallQueuedHandler->getCommand(Array)\n#6 /home/scdemopaneli/public_html/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#7 /home/scdemopaneli/public_html/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#8 /home/scdemopaneli/public_html/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#9 /home/scdemopaneli/public_html/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 /home/scdemopaneli/public_html/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#11 /home/scdemopaneli/public_html/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#12 /home/scdemopaneli/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#13 /home/scdemopaneli/public_html/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 /home/scdemopaneli/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 /home/scdemopaneli/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 /home/scdemopaneli/public_html/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 /home/scdemopaneli/public_html/vendor/laravel/framework/src/Illuminate/Console/Command.php(211): Illuminate\\Container\\Container->call(Array)\n#18 /home/scdemopaneli/public_html/vendor/symfony/console/Command/Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 /home/scdemopaneli/public_html/vendor/laravel/framework/src/Illuminate/Console/Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#20 /home/scdemopaneli/public_html/vendor/symfony/console/Application.php(1081): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 /home/scdemopaneli/public_html/vendor/symfony/console/Application.php(320): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 /home/scdemopaneli/public_html/vendor/symfony/console/Application.php(174): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 /home/scdemopaneli/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(201): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 /home/scdemopaneli/public_html/artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 {main}', '2025-04-15 10:06:57');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `sort_id` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `body`, `sort_id`, `created_at`, `updated_at`) VALUES
(1, 'X Yazılım Hangi Hizmetleri Sunuyor?', '<p>X Yazılım, hazır yazılım çözümleri, özel yazılım geliştirme, e-ticaret platformları, SEO hizmetleri, dijital pazarlama ve sosyal medya yönetimi gibi birçok alanda hizmet vermektedir.</p>', 0, '2025-01-11 02:08:04', '2025-01-11 02:08:04'),
(2, 'Yazılım satışında hangi tür ürünler sunuluyor?', '<p>Kullanıcı dostu ERP yazılımları, CRM çözümleri ve özel yazılım geliştirme hizmetleri sunuyoruz. İşletmenizin ihtiyaçlarına özel yazılımlar da geliştirebiliriz.</p><p>&nbsp;</p>', 0, '2025-01-12 06:46:26', '2025-01-12 06:46:26'),
(3, 'E-ticaret hizmetiniz neleri kapsıyor?', '<p>E-ticaret sitesi tasarımı, ürün yönetimi, ödeme entegrasyonları, mobil uyumluluk ve SEO optimizasyonlu altyapı sağlıyoruz.</p>', 0, '2025-01-12 06:46:33', '2025-01-12 06:46:33'),
(4, 'Sosyal medya yönetim hizmetiniz nasıl işliyor?', '<p>Sosyal medya hesaplarınız için içerik planlama, paylaşım, takipçi artırma stratejileri ve reklam kampanyası yönetimi sunuyoruz.</p>', 0, '2025-01-12 06:46:42', '2025-01-12 06:46:42'),
(5, 'SEO hizmetleriniz hangi alanları kapsıyor?', '<p>Web sitesi analizi, anahtar kelime araştırması, içerik optimizasyonu, teknik SEO ve bağlantı oluşturma stratejileri sunuyoruz.</p>', 0, '2025-01-12 06:46:51', '2025-01-12 06:46:51'),
(6, 'SEO çalışmaları ne kadar sürede sonuç verir?', '<p>SEO sonuçları genellikle 3-6 ay arasında görünmeye başlar, ancak süre sektör ve rekabete bağlı olarak değişebilir.</p>', 0, '2025-01-12 06:47:02', '2025-01-12 06:47:02'),
(7, 'Bir e-ticaret sitesi kurmak ne kadar sürer?', '<p>Projenizin kapsamına bağlı olarak e-ticaret sitenizi genellikle 2-4 hafta içinde teslim edebiliyoruz.</p>', 0, '2025-01-12 06:47:08', '2025-01-12 06:47:08'),
(8, 'Yazılım desteği ve güncellemeleri sağlıyor musunuz?', '<p>Evet, satın aldığınız yazılımlar için sürekli destek, bakım ve güncelleme hizmeti sunuyoruz.</p>', 0, '2025-01-12 06:47:16', '2025-01-12 06:47:16'),
(9, 'Hangi platformlar için sosyal medya yönetimi yapıyorsunuz?', '<p>Facebook, Instagram, LinkedIn, Twitter (X) ve diğer popüler sosyal medya platformları için hizmet veriyoruz.</p><p>&nbsp;</p>', 0, '2025-01-12 06:47:22', '2025-01-12 06:47:22'),
(10, 'SEO ve sosyal medya hizmetlerini bir arada alabilir miyim?', '<p>Evet, hizmetlerimizi bir arada alarak hem SEO çalışmalarınızda hem de sosyal medya görünürlüğünüzde avantaj sağlayabilirsiniz.</p>', 0, '2025-01-12 06:47:30', '2025-01-12 06:47:30'),
(11, 'Fiyatlandırma nasıl belirleniyor?', '<p>Fiyatlandırma, projenizin kapsamı, seçilen hizmetler ve ihtiyaçlarınıza bağlı olarak belirlenir. Detaylı bilgi için bizimle iletişime geçebilirsiniz.</p>', 0, '2025-01-12 06:47:37', '2025-01-12 06:47:37'),
(12, 'Hizmetleriniz için destek hattınız var mı?', '<p>Evet, müşterilerimiz için 7/24 destek hattı ve e-posta ile iletişim hizmeti sunuyoruz.</p>', 0, '2025-01-12 06:47:44', '2025-01-12 06:47:44');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `item_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `footer_links`
--

CREATE TABLE `footer_links` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `link_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:Internal 2:External',
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `order` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `footer_links`
--

INSERT INTO `footer_links` (`id`, `name`, `link`, `link_type`, `parent_id`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Kurumsal', '/page-example', 1, NULL, 5, '2023-02-05 14:20:43', '2025-01-10 00:44:10'),
(2, 'Hakkımızda', '/hakkimizda', 1, 1, 1, '2023-02-05 14:21:04', '2025-01-10 00:17:16'),
(3, 'Bize Ulaşın', '/bize-ulasin', 1, 1, 2, '2023-02-05 14:21:21', '2025-01-10 00:17:47'),
(4, 'Sözleşme ve Çerezler', '/page-example', 1, NULL, 6, '2023-02-05 14:21:53', '2025-01-10 00:44:08'),
(5, 'Gizlilik Sözleşmesi', '/gizlilik-sozlesmesi', 1, 4, 1, '2023-02-05 14:22:03', '2025-01-10 00:23:48'),
(6, 'Üyelik Sözleşmesi', '/uyelik-sozlesmesi', 1, 4, 2, '2023-02-05 14:22:16', '2025-01-10 00:24:05'),
(7, 'Kullanım Koşulları', '/kullanim-kosullari', 1, 4, 4, '2023-02-05 14:22:27', '2025-01-10 00:24:37'),
(8, 'Özel Teklif Al', '/teklif-al', 1, 1, 3, '2023-02-05 14:22:53', '2025-01-10 00:18:55'),
(11, 'Mesafeli Satış Sözleşmesi', '/mesafeli-satis-sozlesmesi', 1, 4, 3, '2023-02-05 14:34:06', '2025-01-10 00:24:22'),
(12, 'Yardım', '/page-example', 1, NULL, 7, '2023-02-05 14:34:49', '2025-01-10 00:44:08'),
(13, 'Canlı Destek', '/page-example', 1, 12, 1, '2023-02-05 14:35:02', '2025-01-10 00:25:33'),
(14, 'Sıkça Sorulan Sorular', '/sss', 1, 12, 2, '2023-02-05 14:35:12', '2025-01-10 00:25:47'),
(15, 'Destek Talebi', '/destek-talebi', 1, 12, 3, '2023-02-05 14:35:28', '2025-01-10 00:26:07'),
(16, 'İletişim Formu', '/iletisim', 1, 12, 4, '2023-02-05 14:35:49', '2025-01-10 00:26:21'),
(17, 'Çerez Politikası', '/cerez-politikasi', 1, 4, 5, '2025-01-10 00:24:52', '2025-01-10 00:24:57'),
(18, 'Vizyon & Misyonumuz', '/vizyon-misyonumuz', 1, 1, 4, '2025-01-10 00:27:17', '2025-01-15 03:21:37'),
(19, 'Dijital Çözümler', 's', 1, NULL, 2, '2025-01-10 00:27:54', '2025-01-10 00:40:55'),
(20, 'E-Ticaret Çözümleri', '/eticaret-cozumleri', 1, 19, 1, '2025-01-10 00:28:29', '2025-01-15 02:05:16'),
(21, 'Entegrasyon Çözümleri', '/entegrasyon-cozumleri', 1, 19, 2, '2025-01-10 00:28:46', '2025-01-15 02:05:49'),
(22, 'Seo Hizmetleri', '/seo-hizmetleri', 1, 19, 3, '2025-01-10 00:28:58', '2025-01-15 02:06:14'),
(23, 'Site içi Bağlantılar', 'a', 1, NULL, 8, '2025-01-10 00:37:17', '2025-01-10 00:43:46'),
(24, 'Referanslar', 'Referanslar', 1, 23, 1, '2025-01-10 00:37:46', '2025-01-10 00:37:50'),
(25, 'Haber ve Duyurular', 'f', 1, 23, 2, '2025-01-10 00:38:10', '2025-01-10 00:38:37'),
(26, 'Blog\'tan Yazılar', 's', 1, 23, 3, '2025-01-10 00:38:28', '2025-01-10 00:38:39'),
(27, 'Yazılımlar', 'd', 1, NULL, 1, '2025-01-10 00:39:07', '2025-01-15 02:22:27'),
(28, 'E-Ticaret Yazılımları', '/kategori/yazilimlar/e-ticaret-yazilimlari', 1, 27, 1, '2025-01-10 00:39:12', '2025-01-15 02:20:06'),
(29, 'Kurumsal Firma Yazılımları', '/kategori/yazilimlar/kurumsal-firma-yazilimlari', 1, 27, 2, '2025-01-10 00:39:18', '2025-01-15 02:21:14'),
(30, 'Tüm Yazılımlarımız', '/kategori/yazilimlar', 1, 27, 3, '2025-01-10 00:39:23', '2025-01-15 02:22:06'),
(31, 'Extra Paketler', 'd', 1, NULL, 4, '2025-01-10 00:39:31', '2025-01-10 00:44:10'),
(32, 'Bayilik Paketleri', 'd', 1, 31, 1, '2025-01-10 00:39:36', '2025-01-10 00:39:52'),
(33, 'Seo Paketleri', 'd', 1, 31, 2, '2025-01-10 00:39:41', '2025-01-10 00:39:52'),
(34, 'E-Ticaret Çözümleri', 'd', 1, NULL, 3, '2025-01-10 00:41:45', '2025-01-10 00:44:10'),
(35, 'Kargo Enetgrasyonu', 'd', 1, 34, 1, '2025-01-10 00:42:19', '2025-01-10 00:43:01'),
(36, 'Pazaryeri Entegrasyonu', 'd', 1, 34, 2, '2025-01-10 00:42:33', '2025-01-10 00:43:01'),
(37, 'Muhasebe Entegrasyonu', 'd', 1, 34, 3, '2025-01-10 00:42:47', '2025-01-10 00:43:02');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `home_categories`
--

CREATE TABLE `home_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `sort_id` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `home_categories`
--

INSERT INTO `home_categories` (`id`, `name`, `icon`, `link`, `sort_id`, `created_at`, `updated_at`) VALUES
(2, 'Tüm Yazılımlarımız', 'images/home-categories/KqHy47vd6k6QIEL_1736438132.png', '/kategori/yazilimlar', 2, '2024-03-06 09:35:24', '2025-04-20 14:16:14'),
(10, 'E-Ticaret Yazılımları', 'images/home-categories/EmaY5tOArYY2L9E_1736437879.png', '/kategori/yazilimlar/e-ticaret-yazilimlari', 0, '2025-01-09 07:51:19', '2025-04-20 14:16:24'),
(11, 'Restoran Yazılımları', 'images/home-categories/US1LATPUNG5uh1b_1736438024.png', '/kategori/yazilimlar/restaurant-cafe-yazilimlari', 0, '2025-01-09 07:53:44', '2025-04-20 14:15:54'),
(12, 'Rent A Car Yazılımları', 'images/home-categories/RgZ3wQPvRgVJ5ps_1736438081.png', '/kategori/yazilimlar/rent-a-car-oto-galeri-yat', 0, '2025-01-09 07:54:41', '2025-04-20 14:16:35');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `home_sections`
--

CREATE TABLE `home_sections` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text,
  `json` json NOT NULL,
  `items_number` int DEFAULT NULL,
  `cache_expiry_time` int UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `sort_id` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `home_sections`
--

INSERT INTO `home_sections` (`id`, `name`, `alias`, `description`, `json`, `items_number`, `cache_expiry_time`, `status`, `sort_id`) VALUES
(1, NULL, 'categories', NULL, '{}', NULL, 10, 1, 1),
(2, 'Footer Üstü Makale', 'trending_items', NULL, '{}', 4, 1440, 1, 10),
(3, 'Best Selling Items', 'best_selling_items', NULL, '{}', 4, 1440, 1, 2),
(4, 'Çok Satılanlar', 'sale_items', NULL, '{}', 4, 1440, 1, 3),
(5, 'Free Items', 'free_items', NULL, '{}', 4, 1440, 1, 4),
(6, 'En Son Eklenen Yazılımlarımız', 'latest_items', 'En yeni ve özenle seçilmiş yazılımlarımızı keşfedin! İhtiyaçlarınıza uygun modern çözümleri sunan yazılımlarımız, işlerinizi daha verimli ve kolay hale getirmek için burada. Yeni eklenen yazılımlarımızı inceleyerek teknolojik ihtiyaçlarınızı karşılayacak en güncel seçeneklere ulaşabilirsiniz.', '{}', 8, 60, 1, 5),
(7, 'Sık Sorulan Sorular', 'faqs', 'Dijital çözümlerimizle işletmenizi bir adım öne taşıyoruz. Yazılım satışından e-ticaret çözümlerine, sosyal medya yönetiminden SEO hizmetlerine kadar tüm ihtiyaçlarınız için buradayız. Aşağıda en sık sorulan soruları ve cevaplarını bulabilirsiniz.', '{}', NULL, 30, 1, 9),
(8, 'Testimonials', 'testimonials', 'Discover what our valued clients are saying about their experiences with us.', '{}', NULL, 1440, 1, 7),
(9, 'En Son Bloglarımız', 'blog_articles', 'Güncel bilgiler, ilham verici fikirler ve pratik ipuçlarıyla dolu blog içeriklerimizle tanışın!', '{}', 3, 1440, 1, 8),
(12, 'Featured Items', 'featured_items', 'Each week, our team carefully selects the finest new themes, scripts, and plugins from our extensive library.', '{}', 4, 1440, 1, 6),
(13, 'Tüm İhtiyaçlarınızı Xyazılım ile Karşılayın', 'premium_items', 'Xyazılım olarak dijital ihtiyaçlarınız için kapsamlı çözümler sunuyoruz.', '[{\"icon\": \"fas fa-tools\", \"title\": \"Özel Yazılım Geliştirme\", \"description\": \"İhtiyacınıza uygun özel yazılımlar geliştiriyoruz.\"}, {\"icon\": \"fas fa-shopping-cart\", \"title\": \"E-ticaret Çözümleri\", \"description\": \"Profesyonel online mağaza platformları oluşturuyoruz.\"}, {\"icon\": \"fas fa-paint-brush\", \"title\": \"Web Tasarım\", \"description\": \"Modern ve kullanıcı dostu web tasarımları sunuyoruz.\"}, {\"icon\": \"fas fa-search\", \"title\": \"SEO Optimizasyonu\", \"description\": \"Arama motorlarında görünürlüğünüzü artırıyoruz.\"}, {\"icon\": \"fas fa-mobile-alt\", \"title\": \"Mobil Uygulama Geliştirme\", \"description\": \"Mobil cihazlar için etkili uygulamalar geliştiriyoruz.\"}, {\"icon\": \"fas fa-users\", \"title\": \"CRM Yazılımları\", \"description\": \"Müşteri ilişkilerinizi daha etkili yönetmenizi sağlıyoruz.\"}, {\"icon\": \"fas fa-database\", \"title\": \"ERP Sistemleri\", \"description\": \"İş süreçlerinizi entegre eden kapsamlı çözümler sunuyoruz.\"}, {\"icon\": \"fas fa-chart-line\", \"title\": \"Veri Analizi\", \"description\": \"İşletmenize yönelik anlamlı veriler sunuyoruz.\"}, {\"icon\": \"fas fa-envelope\", \"title\": \"E-posta Pazarlama\", \"description\": \"Etkili e-posta kampanyaları ile dönüşüm oranlarını artırıyoruz.\"}, {\"icon\": \"fas fa-cloud\", \"title\": \"Bulut Çözümleri\", \"description\": \"Verilerinizi güvenle depolamak için bulut çözümleri sağlıyoruz.\"}]', 4, 1440, 1, 6);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `items`
--

CREATE TABLE `items` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `sub_category_id` bigint UNSIGNED DEFAULT NULL,
  `options` longtext,
  `version` varchar(255) DEFAULT NULL,
  `demo_type` enum('embed','direct') DEFAULT NULL,
  `demo_link` text,
  `tags` longtext NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `preview_type` enum('image','video','audio') NOT NULL DEFAULT 'image',
  `preview_image` varchar(255) DEFAULT NULL,
  `preview_video` varchar(255) DEFAULT NULL,
  `preview_audio` varchar(255) DEFAULT NULL,
  `main_file` varchar(255) NOT NULL,
  `main_file_source` enum('upload','external') NOT NULL DEFAULT 'upload',
  `screenshots` longtext,
  `regular_price` bigint UNSIGNED DEFAULT NULL,
  `extended_price` bigint UNSIGNED DEFAULT NULL,
  `is_supported` tinyint(1) NOT NULL DEFAULT '0',
  `support_instructions` text,
  `purchase_method` tinyint DEFAULT '1',
  `purchase_url` text,
  `total_sales` bigint UNSIGNED NOT NULL DEFAULT '0',
  `total_sales_amount` double(18,2) NOT NULL DEFAULT '0.00',
  `total_reviews` bigint UNSIGNED NOT NULL DEFAULT '0',
  `avg_reviews` bigint UNSIGNED NOT NULL DEFAULT '0',
  `total_comments` bigint UNSIGNED NOT NULL DEFAULT '0',
  `total_views` bigint UNSIGNED NOT NULL DEFAULT '0',
  `current_month_views` bigint UNSIGNED NOT NULL DEFAULT '0',
  `free_downloads` bigint UNSIGNED NOT NULL DEFAULT '0',
  `is_premium` tinyint(1) NOT NULL DEFAULT '0',
  `is_free` tinyint(1) NOT NULL DEFAULT '0',
  `is_trending` tinyint(1) NOT NULL DEFAULT '0',
  `is_best_selling` tinyint(1) NOT NULL DEFAULT '0',
  `is_on_discount` tinyint(1) NOT NULL DEFAULT '0',
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `last_update_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `items`
--

INSERT INTO `items` (`id`, `name`, `slug`, `description`, `category_id`, `sub_category_id`, `options`, `version`, `demo_type`, `demo_link`, `tags`, `thumbnail`, `preview_type`, `preview_image`, `preview_video`, `preview_audio`, `main_file`, `main_file_source`, `screenshots`, `regular_price`, `extended_price`, `is_supported`, `support_instructions`, `purchase_method`, `purchase_url`, `total_sales`, `total_sales_amount`, `total_reviews`, `avg_reviews`, `total_comments`, `total_views`, `current_month_views`, `free_downloads`, `is_premium`, `is_free`, `is_trending`, `is_best_selling`, `is_on_discount`, `is_featured`, `last_update_at`, `created_at`, `updated_at`) VALUES
(1003, 'Test Örnek Yazılım 1', 'test-ornek-yazilim-1', '<ul><li>Sınırsız Dil Ekleme</li><li>Sınırsız Ürün Yönetimi</li><li>Ürünlere Galeri Yükleme</li><li>Ürünlere Teknik Özellik Ekleme</li><li>Teknik Özellikleri Filtre Olarak Kullanma</li><li>Ürünlere Varyant Ekleme</li><li>Ek Fiyatlı Varyant Sistemi</li><li>Tarih Seçimi Varyant Sistemi</li><li>Radio Buttonlu Varyant Sistemi</li><li>Resimli Varyant Sistemi</li><li>Yazı Girdili Varyant Sistemi</li><li>Varyantlar Arası Stok Kombinasyonu</li><li>Toplu Ürün Güncelleme</li><li>Ürünlere Yorum Ekleme Modülü</li><li>Gelişmiş Kargo Sistemi</li><li>Kargo Firmaları Ekleme Modülü</li><li>Sabit Kargo ve Ayrı Kargo Sistemi</li><li>Otomatik Resim Boyutlandırma</li><li>Sınırsız Kategori Yönetimi</li><li>Alt Kategori Yönetimi</li><li>Kategori Detay Sayfaları</li><li>Kategorilerde Özellik Filtresi</li><li>Kategorilerde Marka Filtresi</li><li>Kategorilerde Fiyat Aralığı Filtresi</li><li>Kategorilerde Sıralama Seçenekleri</li><li>Kategorilerde Ürün Gösterim Seçimi</li><li>Kategorilerde Alt Kategori Listeleme</li><li>Kategorilerde Ürün Seçeneklerini Gösterme</li><li>Sınırsız Marka Yönetimi</li><li>Markalara Özel Ürün Listeleri</li><li>Anasayfada Marka Listeleme</li><li>Elektronik Katalog Yükleme</li><li>Gelişmiş Sepet Sistemi</li><li>Üyelikli veya Üye Olmadan Alışveriş</li><li>Sepette X üzeri Kargo Bedava Kampanyası</li><li>İlk Siparişe İndirim Kampanyası</li><li>Sepette Ek indirim Kampanyası</li><li>İndirim Kuponu Modülü</li></ul>', 2, 19, '{\"High Resolution\":\"Yes\",\"Compatible Browsers\":[\"Chrome\"],\"Files Included\":[\"PHP\"],\"Frameworks\":[\"Cake PHP\"]}', '1.0', 'embed', 'https://iyovex.com/yazilim/mobilya-e-ticaret-yazilimi', 'e-ticaret,kurumsal,hazır yazılım', 'files/items/18.png', 'image', 'files/items/18.png', NULL, NULL, 'https://sc.demopaneli.com/', 'external', '[\"files\\/items\\/1.png\",\"files\\/items\\/2.png\"]', 1500, 1, 1, '<p>7/24 Teknik Destek</p>', 1, NULL, 0, 0.00, 0, 0, 0, 25, 25, 0, 0, 0, 0, 0, 1, 0, NULL, '2025-01-10 04:39:57', '2025-05-01 03:27:05'),
(1004, 'Test Örnek Yazılım 2', 'test-ornek-yazilim-2', '<ul><li>Sınırsız Dil Ekleme</li><li>Sınırsız Ürün Yönetimi</li><li>Ürünlere Galeri Yükleme</li><li>Ürünlere Teknik Özellik Ekleme</li><li>Teknik Özellikleri Filtre Olarak Kullanma</li><li>Ürünlere Varyant Ekleme</li><li>Ek Fiyatlı Varyant Sistemi</li><li>Tarih Seçimi Varyant Sistemi</li><li>Radio Buttonlu Varyant Sistemi</li><li>Resimli Varyant Sistemi</li><li>Yazı Girdili Varyant Sistemi</li><li>Varyantlar Arası Stok Kombinasyonu</li><li>Toplu Ürün Güncelleme</li><li>Ürünlere Yorum Ekleme Modülü</li><li>Gelişmiş Kargo Sistemi</li><li>Kargo Firmaları Ekleme Modülü</li><li>Sabit Kargo ve Ayrı Kargo Sistemi</li><li>Otomatik Resim Boyutlandırma</li><li>Sınırsız Kategori Yönetimi</li><li>Alt Kategori Yönetimi</li><li>Kategori Detay Sayfaları</li><li>Kategorilerde Özellik Filtresi</li><li>Kategorilerde Marka Filtresi</li><li>Kategorilerde Fiyat Aralığı Filtresi</li><li>Kategorilerde Sıralama Seçenekleri</li><li>Kategorilerde Ürün Gösterim Seçimi</li><li>Kategorilerde Alt Kategori Listeleme</li><li>Kategorilerde Ürün Seçeneklerini Gösterme</li><li>Sınırsız Marka Yönetimi</li><li>Markalara Özel Ürün Listeleri</li><li>Anasayfada Marka Listeleme</li><li>Elektronik Katalog Yükleme</li><li>Gelişmiş Sepet Sistemi</li><li>Üyelikli veya Üye Olmadan Alışveriş</li><li>Sepette X üzeri Kargo Bedava Kampanyası</li><li>İlk Siparişe İndirim Kampanyası</li><li>Sepette Ek indirim Kampanyası</li><li>İndirim Kuponu Modülü</li></ul>', 2, 19, '{\"High Resolution\":\"Yes\",\"Compatible Browsers\":[\"Chrome\"],\"Files Included\":[\"PHP\"],\"Frameworks\":[\"Cake PHP\"]}', '1.0', 'embed', 'https://iyovex.com/yazilim/mobilya-e-ticaret-yazilimi', 'e-ticaret,kurumsal,hazır yazılım', 'files/items/1.png', 'image', 'files/items/1.png', NULL, NULL, 'https://sc.demopaneli.com/', 'external', '[\"files\\/items\\/1.png\",\"files\\/items\\/2.png\"]', 1500, 1, 1, '<p>7/24 Teknik Destek</p>', 1, NULL, 0, 0.00, 0, 0, 0, 21, 21, 0, 0, 0, 0, 0, 1, 0, NULL, '2025-01-10 04:39:57', '2025-04-25 05:38:59'),
(1005, 'Test Örnek Yazılım 3', 'test-ornek-yazilim-3', '<ul><li>Sınırsız Dil Ekleme</li><li>Sınırsız Ürün Yönetimi</li><li>Ürünlere Galeri Yükleme</li><li>Ürünlere Teknik Özellik Ekleme</li><li>Teknik Özellikleri Filtre Olarak Kullanma</li><li>Ürünlere Varyant Ekleme</li><li>Ek Fiyatlı Varyant Sistemi</li><li>Tarih Seçimi Varyant Sistemi</li><li>Radio Buttonlu Varyant Sistemi</li><li>Resimli Varyant Sistemi</li><li>Yazı Girdili Varyant Sistemi</li><li>Varyantlar Arası Stok Kombinasyonu</li><li>Toplu Ürün Güncelleme</li><li>Ürünlere Yorum Ekleme Modülü</li><li>Gelişmiş Kargo Sistemi</li><li>Kargo Firmaları Ekleme Modülü</li><li>Sabit Kargo ve Ayrı Kargo Sistemi</li><li>Otomatik Resim Boyutlandırma</li><li>Sınırsız Kategori Yönetimi</li><li>Alt Kategori Yönetimi</li><li>Kategori Detay Sayfaları</li><li>Kategorilerde Özellik Filtresi</li><li>Kategorilerde Marka Filtresi</li><li>Kategorilerde Fiyat Aralığı Filtresi</li><li>Kategorilerde Sıralama Seçenekleri</li><li>Kategorilerde Ürün Gösterim Seçimi</li><li>Kategorilerde Alt Kategori Listeleme</li><li>Kategorilerde Ürün Seçeneklerini Gösterme</li><li>Sınırsız Marka Yönetimi</li><li>Markalara Özel Ürün Listeleri</li><li>Anasayfada Marka Listeleme</li><li>Elektronik Katalog Yükleme</li><li>Gelişmiş Sepet Sistemi</li><li>Üyelikli veya Üye Olmadan Alışveriş</li><li>Sepette X üzeri Kargo Bedava Kampanyası</li><li>İlk Siparişe İndirim Kampanyası</li><li>Sepette Ek indirim Kampanyası</li><li>İndirim Kuponu Modülü</li></ul>', 2, 20, '{\"High Resolution\":\"Yes\",\"Compatible Browsers\":[\"Chrome\"],\"Files Included\":[\"PHP\"],\"Frameworks\":[\"Cake PHP\"]}', '1.0', 'embed', 'https://iyovex.com/yazilim/mobilya-e-ticaret-yazilimi', 'e-ticaret,kurumsal,hazır yazılım', 'files/items/3.png', 'image', 'files/items/3.png', NULL, NULL, 'https://sc.demopaneli.com/', 'external', '[\"files\\/items\\/1.png\",\"files\\/items\\/2.png\"]', 1500, 1, 1, '<p>7/24 Teknik Destek</p>', 1, NULL, 1, 1350.00, 0, 0, 0, 24, 24, 0, 0, 0, 0, 0, 1, 0, NULL, '2025-01-10 04:39:57', '2025-04-30 07:54:14'),
(1006, 'Test Örnek Yazılım 4', 'test-ornek-yazilim-4', '<ul><li>Sınırsız Dil Ekleme</li><li>Sınırsız Ürün Yönetimi</li><li>Ürünlere Galeri Yükleme</li><li>Ürünlere Teknik Özellik Ekleme</li><li>Teknik Özellikleri Filtre Olarak Kullanma</li><li>Ürünlere Varyant Ekleme</li><li>Ek Fiyatlı Varyant Sistemi</li><li>Tarih Seçimi Varyant Sistemi</li><li>Radio Buttonlu Varyant Sistemi</li><li>Resimli Varyant Sistemi</li><li>Yazı Girdili Varyant Sistemi</li><li>Varyantlar Arası Stok Kombinasyonu</li><li>Toplu Ürün Güncelleme</li><li>Ürünlere Yorum Ekleme Modülü</li><li>Gelişmiş Kargo Sistemi</li><li>Kargo Firmaları Ekleme Modülü</li><li>Sabit Kargo ve Ayrı Kargo Sistemi</li><li>Otomatik Resim Boyutlandırma</li><li>Sınırsız Kategori Yönetimi</li><li>Alt Kategori Yönetimi</li><li>Kategori Detay Sayfaları</li><li>Kategorilerde Özellik Filtresi</li><li>Kategorilerde Marka Filtresi</li><li>Kategorilerde Fiyat Aralığı Filtresi</li><li>Kategorilerde Sıralama Seçenekleri</li><li>Kategorilerde Ürün Gösterim Seçimi</li><li>Kategorilerde Alt Kategori Listeleme</li><li>Kategorilerde Ürün Seçeneklerini Gösterme</li><li>Sınırsız Marka Yönetimi</li><li>Markalara Özel Ürün Listeleri</li><li>Anasayfada Marka Listeleme</li><li>Elektronik Katalog Yükleme</li><li>Gelişmiş Sepet Sistemi</li><li>Üyelikli veya Üye Olmadan Alışveriş</li><li>Sepette X üzeri Kargo Bedava Kampanyası</li><li>İlk Siparişe İndirim Kampanyası</li><li>Sepette Ek indirim Kampanyası</li><li>İndirim Kuponu Modülü</li></ul>', 2, 20, '{\"High Resolution\":\"Yes\",\"Compatible Browsers\":[\"Chrome\"],\"Files Included\":[\"PHP\"],\"Frameworks\":[\"Cake PHP\"]}', '1.0', 'embed', 'https://iyovex.com/yazilim/mobilya-e-ticaret-yazilimi', 'e-ticaret,kurumsal,hazır yazılım', 'files/items/4.png', 'image', 'files/items/4.png', NULL, NULL, 'https://sc.demopaneli.com/', 'external', '[\"files\\/items\\/1.png\",\"files\\/items\\/2.png\"]', 1500, 1, 1, '<p>7/24 Teknik Destek</p>', 1, NULL, 2, 2700.00, 0, 0, 0, 25, 25, 0, 0, 0, 0, 0, 1, 0, NULL, '2025-01-10 04:39:57', '2025-04-30 07:54:14'),
(1007, 'Test Örnek Yazılım 5', 'test-ornek-yazilim-5', '<ul><li>Sınırsız Dil Ekleme</li><li>Sınırsız Ürün Yönetimi</li><li>Ürünlere Galeri Yükleme</li><li>Ürünlere Teknik Özellik Ekleme</li><li>Teknik Özellikleri Filtre Olarak Kullanma</li><li>Ürünlere Varyant Ekleme</li><li>Ek Fiyatlı Varyant Sistemi</li><li>Tarih Seçimi Varyant Sistemi</li><li>Radio Buttonlu Varyant Sistemi</li><li>Resimli Varyant Sistemi</li><li>Yazı Girdili Varyant Sistemi</li><li>Varyantlar Arası Stok Kombinasyonu</li><li>Toplu Ürün Güncelleme</li><li>Ürünlere Yorum Ekleme Modülü</li><li>Gelişmiş Kargo Sistemi</li><li>Kargo Firmaları Ekleme Modülü</li><li>Sabit Kargo ve Ayrı Kargo Sistemi</li><li>Otomatik Resim Boyutlandırma</li><li>Sınırsız Kategori Yönetimi</li><li>Alt Kategori Yönetimi</li><li>Kategori Detay Sayfaları</li><li>Kategorilerde Özellik Filtresi</li><li>Kategorilerde Marka Filtresi</li><li>Kategorilerde Fiyat Aralığı Filtresi</li><li>Kategorilerde Sıralama Seçenekleri</li><li>Kategorilerde Ürün Gösterim Seçimi</li><li>Kategorilerde Alt Kategori Listeleme</li><li>Kategorilerde Ürün Seçeneklerini Gösterme</li><li>Sınırsız Marka Yönetimi</li><li>Markalara Özel Ürün Listeleri</li><li>Anasayfada Marka Listeleme</li><li>Elektronik Katalog Yükleme</li><li>Gelişmiş Sepet Sistemi</li><li>Üyelikli veya Üye Olmadan Alışveriş</li><li>Sepette X üzeri Kargo Bedava Kampanyası</li><li>İlk Siparişe İndirim Kampanyası</li><li>Sepette Ek indirim Kampanyası</li><li>İndirim Kuponu Modülü</li></ul>', 2, 21, '{\"High Resolution\":\"Yes\",\"Compatible Browsers\":[\"Chrome\"],\"Files Included\":[\"PHP\"],\"Frameworks\":[\"Cake PHP\"]}', '1.0', 'embed', 'https://iyovex.com/yazilim/mobilya-e-ticaret-yazilimi', 'e-ticaret,kurumsal,hazır yazılım', 'files/items/5.png', 'image', 'files/items/5.png', NULL, NULL, 'https://sc.demopaneli.com/', 'external', '[\"files\\/items\\/1.png\",\"files\\/items\\/2.png\"]', 1500, 1, 1, '<p>7/24 Teknik Destek</p>', 1, NULL, 0, 0.00, 0, 0, 0, 22, 22, 0, 0, 0, 0, 0, 1, 0, NULL, '2025-01-10 04:39:57', '2025-04-22 15:55:54'),
(1008, 'Test Örnek Yazılım 6', 'test-ornek-yazilim-6', '<ul><li>Sınırsız Dil Ekleme</li><li>Sınırsız Ürün Yönetimi</li><li>Ürünlere Galeri Yükleme</li><li>Ürünlere Teknik Özellik Ekleme</li><li>Teknik Özellikleri Filtre Olarak Kullanma</li><li>Ürünlere Varyant Ekleme</li><li>Ek Fiyatlı Varyant Sistemi</li><li>Tarih Seçimi Varyant Sistemi</li><li>Radio Buttonlu Varyant Sistemi</li><li>Resimli Varyant Sistemi</li><li>Yazı Girdili Varyant Sistemi</li><li>Varyantlar Arası Stok Kombinasyonu</li><li>Toplu Ürün Güncelleme</li><li>Ürünlere Yorum Ekleme Modülü</li><li>Gelişmiş Kargo Sistemi</li><li>Kargo Firmaları Ekleme Modülü</li><li>Sabit Kargo ve Ayrı Kargo Sistemi</li><li>Otomatik Resim Boyutlandırma</li><li>Sınırsız Kategori Yönetimi</li><li>Alt Kategori Yönetimi</li><li>Kategori Detay Sayfaları</li><li>Kategorilerde Özellik Filtresi</li><li>Kategorilerde Marka Filtresi</li><li>Kategorilerde Fiyat Aralığı Filtresi</li><li>Kategorilerde Sıralama Seçenekleri</li><li>Kategorilerde Ürün Gösterim Seçimi</li><li>Kategorilerde Alt Kategori Listeleme</li><li>Kategorilerde Ürün Seçeneklerini Gösterme</li><li>Sınırsız Marka Yönetimi</li><li>Markalara Özel Ürün Listeleri</li><li>Anasayfada Marka Listeleme</li><li>Elektronik Katalog Yükleme</li><li>Gelişmiş Sepet Sistemi</li><li>Üyelikli veya Üye Olmadan Alışveriş</li><li>Sepette X üzeri Kargo Bedava Kampanyası</li><li>İlk Siparişe İndirim Kampanyası</li><li>Sepette Ek indirim Kampanyası</li><li>İndirim Kuponu Modülü</li></ul>', 2, 21, '{\"High Resolution\":\"Yes\",\"Compatible Browsers\":[\"Chrome\"],\"Files Included\":[\"PHP\"],\"Frameworks\":[\"Cake PHP\"]}', '1.0', 'embed', 'https://iyovex.com/yazilim/mobilya-e-ticaret-yazilimi', 'e-ticaret,kurumsal,hazır yazılım', 'files/items/6.png', 'image', 'files/items/6.png', NULL, NULL, 'https://sc.demopaneli.com/', 'external', '[\"files\\/items\\/1.png\",\"files\\/items\\/2.png\"]', 1500, 1, 1, '<p>7/24 Teknik Destek</p>', 1, NULL, 0, 0.00, 0, 0, 0, 20, 20, 0, 0, 0, 0, 0, 1, 0, NULL, '2025-01-10 04:39:57', '2025-04-24 07:48:58'),
(1009, 'Test Örnek Yazılım 7', 'test-ornek-yazilim-7', '<ul><li>Sınırsız Dil Ekleme</li><li>Sınırsız Ürün Yönetimi</li><li>Ürünlere Galeri Yükleme</li><li>Ürünlere Teknik Özellik Ekleme</li><li>Teknik Özellikleri Filtre Olarak Kullanma</li><li>Ürünlere Varyant Ekleme</li><li>Ek Fiyatlı Varyant Sistemi</li><li>Tarih Seçimi Varyant Sistemi</li><li>Radio Buttonlu Varyant Sistemi</li><li>Resimli Varyant Sistemi</li><li>Yazı Girdili Varyant Sistemi</li><li>Varyantlar Arası Stok Kombinasyonu</li><li>Toplu Ürün Güncelleme</li><li>Ürünlere Yorum Ekleme Modülü</li><li>Gelişmiş Kargo Sistemi</li><li>Kargo Firmaları Ekleme Modülü</li><li>Sabit Kargo ve Ayrı Kargo Sistemi</li><li>Otomatik Resim Boyutlandırma</li><li>Sınırsız Kategori Yönetimi</li><li>Alt Kategori Yönetimi</li><li>Kategori Detay Sayfaları</li><li>Kategorilerde Özellik Filtresi</li><li>Kategorilerde Marka Filtresi</li><li>Kategorilerde Fiyat Aralığı Filtresi</li><li>Kategorilerde Sıralama Seçenekleri</li><li>Kategorilerde Ürün Gösterim Seçimi</li><li>Kategorilerde Alt Kategori Listeleme</li><li>Kategorilerde Ürün Seçeneklerini Gösterme</li><li>Sınırsız Marka Yönetimi</li><li>Markalara Özel Ürün Listeleri</li><li>Anasayfada Marka Listeleme</li><li>Elektronik Katalog Yükleme</li><li>Gelişmiş Sepet Sistemi</li><li>Üyelikli veya Üye Olmadan Alışveriş</li><li>Sepette X üzeri Kargo Bedava Kampanyası</li><li>İlk Siparişe İndirim Kampanyası</li><li>Sepette Ek indirim Kampanyası</li><li>İndirim Kuponu Modülü</li></ul>', 2, 22, '{\"High Resolution\":\"Yes\",\"Compatible Browsers\":[\"Chrome\"],\"Files Included\":[\"PHP\"],\"Frameworks\":[\"Cake PHP\"]}', '1.0', 'embed', 'https://iyovex.com/yazilim/mobilya-e-ticaret-yazilimi', 'e-ticaret,kurumsal,hazır yazılım', 'files/items/7.png', 'image', 'files/items/7.png', NULL, NULL, 'https://sc.demopaneli.com/', 'external', '[\"files\\/items\\/1.png\",\"files\\/items\\/2.png\"]', 1500, 1, 1, '<p>7/24 Teknik Destek</p>', 1, NULL, 0, 0.00, 0, 0, 0, 22, 22, 0, 0, 0, 0, 0, 1, 0, NULL, '2025-01-10 04:39:57', '2025-04-26 07:06:07'),
(1010, 'Test Örnek Yazılım 8', 'test-ornek-yazilim-8', '<ul><li>Sınırsız Dil Ekleme</li><li>Sınırsız Ürün Yönetimi</li><li>Ürünlere Galeri Yükleme</li><li>Ürünlere Teknik Özellik Ekleme</li><li>Teknik Özellikleri Filtre Olarak Kullanma</li><li>Ürünlere Varyant Ekleme</li><li>Ek Fiyatlı Varyant Sistemi</li><li>Tarih Seçimi Varyant Sistemi</li><li>Radio Buttonlu Varyant Sistemi</li><li>Resimli Varyant Sistemi</li><li>Yazı Girdili Varyant Sistemi</li><li>Varyantlar Arası Stok Kombinasyonu</li><li>Toplu Ürün Güncelleme</li><li>Ürünlere Yorum Ekleme Modülü</li><li>Gelişmiş Kargo Sistemi</li><li>Kargo Firmaları Ekleme Modülü</li><li>Sabit Kargo ve Ayrı Kargo Sistemi</li><li>Otomatik Resim Boyutlandırma</li><li>Sınırsız Kategori Yönetimi</li><li>Alt Kategori Yönetimi</li><li>Kategori Detay Sayfaları</li><li>Kategorilerde Özellik Filtresi</li><li>Kategorilerde Marka Filtresi</li><li>Kategorilerde Fiyat Aralığı Filtresi</li><li>Kategorilerde Sıralama Seçenekleri</li><li>Kategorilerde Ürün Gösterim Seçimi</li><li>Kategorilerde Alt Kategori Listeleme</li><li>Kategorilerde Ürün Seçeneklerini Gösterme</li><li>Sınırsız Marka Yönetimi</li><li>Markalara Özel Ürün Listeleri</li><li>Anasayfada Marka Listeleme</li><li>Elektronik Katalog Yükleme</li><li>Gelişmiş Sepet Sistemi</li><li>Üyelikli veya Üye Olmadan Alışveriş</li><li>Sepette X üzeri Kargo Bedava Kampanyası</li><li>İlk Siparişe İndirim Kampanyası</li><li>Sepette Ek indirim Kampanyası</li><li>İndirim Kuponu Modülü</li></ul>', 2, 19, '{\"High Resolution\":\"Yes\",\"Compatible Browsers\":[\"Chrome\"],\"Files Included\":[\"PHP\"],\"Frameworks\":[\"Cake PHP\"]}', '1.0', 'embed', 'https://iyovex.com/yazilim/mobilya-e-ticaret-yazilimi', 'e-ticaret,kurumsal,hazır yazılım', 'files/items/8.png', 'image', 'files/items/8.png', NULL, NULL, 'https://sc.demopaneli.com/', 'external', '[\"files\\/items\\/1.png\",\"files\\/items\\/2.png\"]', 1500, 1, 1, '<p>7/24 Teknik Destek</p>', 1, NULL, 0, 0.00, 0, 0, 0, 14, 14, 0, 0, 0, 0, 0, 0, 0, NULL, '2025-01-10 04:39:57', '2025-05-01 03:38:32'),
(1011, 'Test Örnek Yazılım 9', 'test-ornek-yazilim-9', '<ul><li>Sınırsız Dil Ekleme</li><li>Sınırsız Ürün Yönetimi</li><li>Ürünlere Galeri Yükleme</li><li>Ürünlere Teknik Özellik Ekleme</li><li>Teknik Özellikleri Filtre Olarak Kullanma</li><li>Ürünlere Varyant Ekleme</li><li>Ek Fiyatlı Varyant Sistemi</li><li>Tarih Seçimi Varyant Sistemi</li><li>Radio Buttonlu Varyant Sistemi</li><li>Resimli Varyant Sistemi</li><li>Yazı Girdili Varyant Sistemi</li><li>Varyantlar Arası Stok Kombinasyonu</li><li>Toplu Ürün Güncelleme</li><li>Ürünlere Yorum Ekleme Modülü</li><li>Gelişmiş Kargo Sistemi</li><li>Kargo Firmaları Ekleme Modülü</li><li>Sabit Kargo ve Ayrı Kargo Sistemi</li><li>Otomatik Resim Boyutlandırma</li><li>Sınırsız Kategori Yönetimi</li><li>Alt Kategori Yönetimi</li><li>Kategori Detay Sayfaları</li><li>Kategorilerde Özellik Filtresi</li><li>Kategorilerde Marka Filtresi</li><li>Kategorilerde Fiyat Aralığı Filtresi</li><li>Kategorilerde Sıralama Seçenekleri</li><li>Kategorilerde Ürün Gösterim Seçimi</li><li>Kategorilerde Alt Kategori Listeleme</li><li>Kategorilerde Ürün Seçeneklerini Gösterme</li><li>Sınırsız Marka Yönetimi</li><li>Markalara Özel Ürün Listeleri</li><li>Anasayfada Marka Listeleme</li><li>Elektronik Katalog Yükleme</li><li>Gelişmiş Sepet Sistemi</li><li>Üyelikli veya Üye Olmadan Alışveriş</li><li>Sepette X üzeri Kargo Bedava Kampanyası</li><li>İlk Siparişe İndirim Kampanyası</li><li>Sepette Ek indirim Kampanyası</li><li>İndirim Kuponu Modülü</li></ul>', 2, 22, '{\"High Resolution\":\"Yes\",\"Compatible Browsers\":[\"Chrome\"],\"Files Included\":[\"PHP\"],\"Frameworks\":[\"Cake PHP\"]}', '1.0', 'embed', 'https://iyovex.com/yazilim/mobilya-e-ticaret-yazilimi', 'e-ticaret,kurumsal,hazır yazılım', 'files/items/9.png', 'image', 'files/items/9.png', NULL, NULL, 'https://sc.demopaneli.com/', 'external', '[\"files\\/items\\/1.png\",\"files\\/items\\/2.png\"]', 1500, 1, 1, '<p>7/24 Teknik Destek</p>', 1, NULL, 0, 0.00, 0, 0, 0, 16, 16, 0, 0, 0, 0, 0, 1, 0, NULL, '2025-01-10 04:39:57', '2025-04-22 04:28:45'),
(1012, 'Test Örnek Yazılım 10', 'test-ornek-yazilim-10', '<ul><li>Sınırsız Dil Ekleme</li><li>Sınırsız Ürün Yönetimi</li><li>Ürünlere Galeri Yükleme</li><li>Ürünlere Teknik Özellik Ekleme</li><li>Teknik Özellikleri Filtre Olarak Kullanma</li><li>Ürünlere Varyant Ekleme</li><li>Ek Fiyatlı Varyant Sistemi</li><li>Tarih Seçimi Varyant Sistemi</li><li>Radio Buttonlu Varyant Sistemi</li><li>Resimli Varyant Sistemi</li><li>Yazı Girdili Varyant Sistemi</li><li>Varyantlar Arası Stok Kombinasyonu</li><li>Toplu Ürün Güncelleme</li><li>Ürünlere Yorum Ekleme Modülü</li><li>Gelişmiş Kargo Sistemi</li><li>Kargo Firmaları Ekleme Modülü</li><li>Sabit Kargo ve Ayrı Kargo Sistemi</li><li>Otomatik Resim Boyutlandırma</li><li>Sınırsız Kategori Yönetimi</li><li>Alt Kategori Yönetimi</li><li>Kategori Detay Sayfaları</li><li>Kategorilerde Özellik Filtresi</li><li>Kategorilerde Marka Filtresi</li><li>Kategorilerde Fiyat Aralığı Filtresi</li><li>Kategorilerde Sıralama Seçenekleri</li><li>Kategorilerde Ürün Gösterim Seçimi</li><li>Kategorilerde Alt Kategori Listeleme</li><li>Kategorilerde Ürün Seçeneklerini Gösterme</li><li>Sınırsız Marka Yönetimi</li><li>Markalara Özel Ürün Listeleri</li><li>Anasayfada Marka Listeleme</li><li>Elektronik Katalog Yükleme</li><li>Gelişmiş Sepet Sistemi</li><li>Üyelikli veya Üye Olmadan Alışveriş</li><li>Sepette X üzeri Kargo Bedava Kampanyası</li><li>İlk Siparişe İndirim Kampanyası</li><li>Sepette Ek indirim Kampanyası</li><li>İndirim Kuponu Modülü</li></ul>', 2, 19, '{\"High Resolution\":\"Yes\",\"Compatible Browsers\":[\"Chrome\"],\"Files Included\":[\"PHP\"],\"Frameworks\":[\"Cake PHP\"]}', '1.0', 'embed', 'https://iyovex.com/yazilim/mobilya-e-ticaret-yazilimi', 'e-ticaret,kurumsal,hazır yazılım', 'files/items/10.png', 'image', 'files/items/10.png', NULL, NULL, 'https://sc.demopaneli.com/', 'external', '[\"files\\/items\\/1.png\",\"files\\/items\\/2.png\"]', 1500, 1, 1, '<p>7/24 Teknik Destek</p>', 1, NULL, 0, 0.00, 0, 0, 0, 81, 81, 0, 0, 0, 0, 0, 1, 0, NULL, '2025-01-10 04:39:57', '2025-04-26 07:46:25'),
(1013, 'Test Örnek Yazılım 11', 'test-ornek-yazilim-11', '<ul><li>Sınırsız Dil Ekleme</li><li>Sınırsız Ürün Yönetimi</li><li>Ürünlere Galeri Yükleme</li><li>Ürünlere Teknik Özellik Ekleme</li><li>Teknik Özellikleri Filtre Olarak Kullanma</li><li>Ürünlere Varyant Ekleme</li><li>Ek Fiyatlı Varyant Sistemi</li><li>Tarih Seçimi Varyant Sistemi</li><li>Radio Buttonlu Varyant Sistemi</li><li>Resimli Varyant Sistemi</li><li>Yazı Girdili Varyant Sistemi</li><li>Varyantlar Arası Stok Kombinasyonu</li><li>Toplu Ürün Güncelleme</li><li>Ürünlere Yorum Ekleme Modülü</li><li>Gelişmiş Kargo Sistemi</li><li>Kargo Firmaları Ekleme Modülü</li><li>Sabit Kargo ve Ayrı Kargo Sistemi</li><li>Otomatik Resim Boyutlandırma</li><li>Sınırsız Kategori Yönetimi</li><li>Alt Kategori Yönetimi</li><li>Kategori Detay Sayfaları</li><li>Kategorilerde Özellik Filtresi</li><li>Kategorilerde Marka Filtresi</li><li>Kategorilerde Fiyat Aralığı Filtresi</li><li>Kategorilerde Sıralama Seçenekleri</li><li>Kategorilerde Ürün Gösterim Seçimi</li><li>Kategorilerde Alt Kategori Listeleme</li><li>Kategorilerde Ürün Seçeneklerini Gösterme</li><li>Sınırsız Marka Yönetimi</li><li>Markalara Özel Ürün Listeleri</li><li>Anasayfada Marka Listeleme</li><li>Elektronik Katalog Yükleme</li><li>Gelişmiş Sepet Sistemi</li><li>Üyelikli veya Üye Olmadan Alışveriş</li><li>Sepette X üzeri Kargo Bedava Kampanyası</li><li>İlk Siparişe İndirim Kampanyası</li><li>Sepette Ek indirim Kampanyası</li><li>İndirim Kuponu Modülü</li></ul>', 2, 23, '{\"High Resolution\":\"Yes\",\"Compatible Browsers\":[\"Chrome\"],\"Files Included\":[\"PHP\"],\"Frameworks\":[\"Cake PHP\"]}', '1.0', 'embed', 'https://iyovex.com/yazilim/mobilya-e-ticaret-yazilimi', 'e-ticaret,kurumsal,hazır yazılım', 'files/items/11.png', 'image', 'files/items/11.png', NULL, NULL, 'https://sc.demopaneli.com/', 'external', '[\"files\\/items\\/1.png\",\"files\\/items\\/2.png\"]', 1500, 1, 1, '<p>7/24 Teknik Destek</p>', 1, NULL, 0, 0.00, 0, 0, 0, 15, 15, 0, 0, 0, 0, 0, 0, 0, NULL, '2025-01-10 04:39:57', '2025-04-25 03:11:18'),
(1014, 'Test Örnek Yazılım 12', 'test-ornek-yazilim-12', '<ul><li>Sınırsız Dil Ekleme</li><li>Sınırsız Ürün Yönetimi</li><li>Ürünlere Galeri Yükleme</li><li>Ürünlere Teknik Özellik Ekleme</li><li>Teknik Özellikleri Filtre Olarak Kullanma</li><li>Ürünlere Varyant Ekleme</li><li>Ek Fiyatlı Varyant Sistemi</li><li>Tarih Seçimi Varyant Sistemi</li><li>Radio Buttonlu Varyant Sistemi</li><li>Resimli Varyant Sistemi</li><li>Yazı Girdili Varyant Sistemi</li><li>Varyantlar Arası Stok Kombinasyonu</li><li>Toplu Ürün Güncelleme</li><li>Ürünlere Yorum Ekleme Modülü</li><li>Gelişmiş Kargo Sistemi</li><li>Kargo Firmaları Ekleme Modülü</li><li>Sabit Kargo ve Ayrı Kargo Sistemi</li><li>Otomatik Resim Boyutlandırma</li><li>Sınırsız Kategori Yönetimi</li><li>Alt Kategori Yönetimi</li><li>Kategori Detay Sayfaları</li><li>Kategorilerde Özellik Filtresi</li><li>Kategorilerde Marka Filtresi</li><li>Kategorilerde Fiyat Aralığı Filtresi</li><li>Kategorilerde Sıralama Seçenekleri</li><li>Kategorilerde Ürün Gösterim Seçimi</li><li>Kategorilerde Alt Kategori Listeleme</li><li>Kategorilerde Ürün Seçeneklerini Gösterme</li><li>Sınırsız Marka Yönetimi</li><li>Markalara Özel Ürün Listeleri</li><li>Anasayfada Marka Listeleme</li><li>Elektronik Katalog Yükleme</li><li>Gelişmiş Sepet Sistemi</li><li>Üyelikli veya Üye Olmadan Alışveriş</li><li>Sepette X üzeri Kargo Bedava Kampanyası</li><li>İlk Siparişe İndirim Kampanyası</li><li>Sepette Ek indirim Kampanyası</li><li>İndirim Kuponu Modülü</li></ul>', 2, 23, '{\"High Resolution\":\"Yes\",\"Compatible Browsers\":[\"Chrome\"],\"Files Included\":[\"PHP\"],\"Frameworks\":[\"Cake PHP\"]}', '1.0', 'embed', 'https://iyovex.com/yazilim/mobilya-e-ticaret-yazilimi', 'e-ticaret,kurumsal,hazır yazılım', 'files/items/12.png', 'image', 'files/items/12.png', NULL, NULL, 'https://sc.demopaneli.com/', 'external', '[\"files\\/items\\/1.png\",\"files\\/items\\/2.png\"]', 1500, 1, 1, '<p>7/24 Teknik Destek</p>', 1, NULL, 0, 0.00, 0, 0, 0, 63, 63, 0, 0, 0, 0, 0, 1, 0, NULL, '2025-01-10 04:39:57', '2025-04-25 09:53:56'),
(1015, 'Test Örnek Yazılım 13', 'test-ornek-yazilim-13', '<ul><li>Sınırsız Dil Ekleme</li><li>Sınırsız Ürün Yönetimi</li><li>Ürünlere Galeri Yükleme</li><li>Ürünlere Teknik Özellik Ekleme</li><li>Teknik Özellikleri Filtre Olarak Kullanma</li><li>Ürünlere Varyant Ekleme</li><li>Ek Fiyatlı Varyant Sistemi</li><li>Tarih Seçimi Varyant Sistemi</li><li>Radio Buttonlu Varyant Sistemi</li><li>Resimli Varyant Sistemi</li><li>Yazı Girdili Varyant Sistemi</li><li>Varyantlar Arası Stok Kombinasyonu</li><li>Toplu Ürün Güncelleme</li><li>Ürünlere Yorum Ekleme Modülü</li><li>Gelişmiş Kargo Sistemi</li><li>Kargo Firmaları Ekleme Modülü</li><li>Sabit Kargo ve Ayrı Kargo Sistemi</li><li>Otomatik Resim Boyutlandırma</li><li>Sınırsız Kategori Yönetimi</li><li>Alt Kategori Yönetimi</li><li>Kategori Detay Sayfaları</li><li>Kategorilerde Özellik Filtresi</li><li>Kategorilerde Marka Filtresi</li><li>Kategorilerde Fiyat Aralığı Filtresi</li><li>Kategorilerde Sıralama Seçenekleri</li><li>Kategorilerde Ürün Gösterim Seçimi</li><li>Kategorilerde Alt Kategori Listeleme</li><li>Kategorilerde Ürün Seçeneklerini Gösterme</li><li>Sınırsız Marka Yönetimi</li><li>Markalara Özel Ürün Listeleri</li><li>Anasayfada Marka Listeleme</li><li>Elektronik Katalog Yükleme</li><li>Gelişmiş Sepet Sistemi</li><li>Üyelikli veya Üye Olmadan Alışveriş</li><li>Sepette X üzeri Kargo Bedava Kampanyası</li><li>İlk Siparişe İndirim Kampanyası</li><li>Sepette Ek indirim Kampanyası</li><li>İndirim Kuponu Modülü</li></ul>', 2, 24, '{\"High Resolution\":\"Yes\",\"Compatible Browsers\":[\"Chrome\"],\"Files Included\":[\"PHP\"],\"Frameworks\":[\"Cake PHP\"]}', '1.0', 'embed', 'https://iyovex.com/yazilim/mobilya-e-ticaret-yazilimi', 'e-ticaret,kurumsal,hazır yazılım', 'files/items/13.png', 'image', 'files/items/13.png', NULL, NULL, 'https://sc.demopaneli.com/', 'external', '[\"files\\/items\\/1.png\",\"files\\/items\\/2.png\"]', 1500, 1, 1, '<p>7/24 Teknik Destek</p>', 1, NULL, 0, 0.00, 0, 0, 0, 20, 20, 0, 0, 0, 0, 0, 1, 0, NULL, '2025-01-10 04:39:57', '2025-04-25 05:48:17'),
(1016, 'Test Örnek Yazılım 14', 'test-ornek-yazilim-14', '<ul><li>Sınırsız Dil Ekleme</li><li>Sınırsız Ürün Yönetimi</li><li>Ürünlere Galeri Yükleme</li><li>Ürünlere Teknik Özellik Ekleme</li><li>Teknik Özellikleri Filtre Olarak Kullanma</li><li>Ürünlere Varyant Ekleme</li><li>Ek Fiyatlı Varyant Sistemi</li><li>Tarih Seçimi Varyant Sistemi</li><li>Radio Buttonlu Varyant Sistemi</li><li>Resimli Varyant Sistemi</li><li>Yazı Girdili Varyant Sistemi</li><li>Varyantlar Arası Stok Kombinasyonu</li><li>Toplu Ürün Güncelleme</li><li>Ürünlere Yorum Ekleme Modülü</li><li>Gelişmiş Kargo Sistemi</li><li>Kargo Firmaları Ekleme Modülü</li><li>Sabit Kargo ve Ayrı Kargo Sistemi</li><li>Otomatik Resim Boyutlandırma</li><li>Sınırsız Kategori Yönetimi</li><li>Alt Kategori Yönetimi</li><li>Kategori Detay Sayfaları</li><li>Kategorilerde Özellik Filtresi</li><li>Kategorilerde Marka Filtresi</li><li>Kategorilerde Fiyat Aralığı Filtresi</li><li>Kategorilerde Sıralama Seçenekleri</li><li>Kategorilerde Ürün Gösterim Seçimi</li><li>Kategorilerde Alt Kategori Listeleme</li><li>Kategorilerde Ürün Seçeneklerini Gösterme</li><li>Sınırsız Marka Yönetimi</li><li>Markalara Özel Ürün Listeleri</li><li>Anasayfada Marka Listeleme</li><li>Elektronik Katalog Yükleme</li><li>Gelişmiş Sepet Sistemi</li><li>Üyelikli veya Üye Olmadan Alışveriş</li><li>Sepette X üzeri Kargo Bedava Kampanyası</li><li>İlk Siparişe İndirim Kampanyası</li><li>Sepette Ek indirim Kampanyası</li><li>İndirim Kuponu Modülü</li></ul>', 2, 24, '{\"High Resolution\":\"Yes\",\"Compatible Browsers\":[\"Chrome\"],\"Files Included\":[\"PHP\"],\"Frameworks\":[\"Cake PHP\"]}', '1.0', 'embed', 'https://iyovex.com/yazilim/mobilya-e-ticaret-yazilimi', 'e-ticaret,kurumsal,hazır yazılım', 'files/items/14.png', 'image', 'files/items/14.png', NULL, NULL, 'https://sc.demopaneli.com/', 'external', '[\"files\\/items\\/1.png\",\"files\\/items\\/2.png\"]', 1500, 1, 1, '<p>7/24 Teknik Destek</p>', 1, NULL, 0, 0.00, 0, 0, 0, 40, 40, 0, 0, 0, 0, 0, 1, 0, NULL, '2025-01-10 04:39:57', '2025-05-01 03:27:30'),
(1017, 'Test Örnek Yazılım 15', 'test-ornek-yazilim-15', '<ul><li>Sınırsız Dil Ekleme</li><li>Sınırsız Ürün Yönetimi</li><li>Ürünlere Galeri Yükleme</li><li>Ürünlere Teknik Özellik Ekleme</li><li>Teknik Özellikleri Filtre Olarak Kullanma</li><li>Ürünlere Varyant Ekleme</li><li>Ek Fiyatlı Varyant Sistemi</li><li>Tarih Seçimi Varyant Sistemi</li><li>Radio Buttonlu Varyant Sistemi</li><li>Resimli Varyant Sistemi</li><li>Yazı Girdili Varyant Sistemi</li><li>Varyantlar Arası Stok Kombinasyonu</li><li>Toplu Ürün Güncelleme</li><li>Ürünlere Yorum Ekleme Modülü</li><li>Gelişmiş Kargo Sistemi</li><li>Kargo Firmaları Ekleme Modülü</li><li>Sabit Kargo ve Ayrı Kargo Sistemi</li><li>Otomatik Resim Boyutlandırma</li><li>Sınırsız Kategori Yönetimi</li><li>Alt Kategori Yönetimi</li><li>Kategori Detay Sayfaları</li><li>Kategorilerde Özellik Filtresi</li><li>Kategorilerde Marka Filtresi</li><li>Kategorilerde Fiyat Aralığı Filtresi</li><li>Kategorilerde Sıralama Seçenekleri</li><li>Kategorilerde Ürün Gösterim Seçimi</li><li>Kategorilerde Alt Kategori Listeleme</li><li>Kategorilerde Ürün Seçeneklerini Gösterme</li><li>Sınırsız Marka Yönetimi</li><li>Markalara Özel Ürün Listeleri</li><li>Anasayfada Marka Listeleme</li><li>Elektronik Katalog Yükleme</li><li>Gelişmiş Sepet Sistemi</li><li>Üyelikli veya Üye Olmadan Alışveriş</li><li>Sepette X üzeri Kargo Bedava Kampanyası</li><li>İlk Siparişe İndirim Kampanyası</li><li>Sepette Ek indirim Kampanyası</li><li>İndirim Kuponu Modülü</li></ul>', 2, 25, '{\"High Resolution\":\"Yes\",\"Compatible Browsers\":[\"Chrome\"],\"Files Included\":[\"PHP\"],\"Frameworks\":[\"Cake PHP\"]}', '1.0', 'embed', 'https://iyovex.com/yazilim/mobilya-e-ticaret-yazilimi', 'e-ticaret,kurumsal,hazır yazılım', 'files/items/15.png', 'image', 'files/items/15.png', NULL, NULL, 'https://sc.demopaneli.com/', 'external', '[\"files\\/items\\/1.png\",\"files\\/items\\/2.png\"]', 1500, 1, 1, '<p>7/24 Teknik Destek</p>', 1, NULL, 0, 0.00, 0, 0, 0, 60, 60, 0, 0, 0, 0, 0, 1, 0, NULL, '2025-01-10 04:39:57', '2025-04-30 16:02:52'),
(1018, 'Test Örnek Yazılım 16', 'test-ornek-yazilim-16', '<ul><li>Sınırsız Dil Ekleme</li><li>Sınırsız Ürün Yönetimi</li><li>Ürünlere Galeri Yükleme</li><li>Ürünlere Teknik Özellik Ekleme</li><li>Teknik Özellikleri Filtre Olarak Kullanma</li><li>Ürünlere Varyant Ekleme</li><li>Ek Fiyatlı Varyant Sistemi</li><li>Tarih Seçimi Varyant Sistemi</li><li>Radio Buttonlu Varyant Sistemi</li><li>Resimli Varyant Sistemi</li><li>Yazı Girdili Varyant Sistemi</li><li>Varyantlar Arası Stok Kombinasyonu</li><li>Toplu Ürün Güncelleme</li><li>Ürünlere Yorum Ekleme Modülü</li><li>Gelişmiş Kargo Sistemi</li><li>Kargo Firmaları Ekleme Modülü</li><li>Sabit Kargo ve Ayrı Kargo Sistemi</li><li>Otomatik Resim Boyutlandırma</li><li>Sınırsız Kategori Yönetimi</li><li>Alt Kategori Yönetimi</li><li>Kategori Detay Sayfaları</li><li>Kategorilerde Özellik Filtresi</li><li>Kategorilerde Marka Filtresi</li><li>Kategorilerde Fiyat Aralığı Filtresi</li><li>Kategorilerde Sıralama Seçenekleri</li><li>Kategorilerde Ürün Gösterim Seçimi</li><li>Kategorilerde Alt Kategori Listeleme</li><li>Kategorilerde Ürün Seçeneklerini Gösterme</li><li>Sınırsız Marka Yönetimi</li><li>Markalara Özel Ürün Listeleri</li><li>Anasayfada Marka Listeleme</li><li>Elektronik Katalog Yükleme</li><li>Gelişmiş Sepet Sistemi</li><li>Üyelikli veya Üye Olmadan Alışveriş</li><li>Sepette X üzeri Kargo Bedava Kampanyası</li><li>İlk Siparişe İndirim Kampanyası</li><li>Sepette Ek indirim Kampanyası</li><li>İndirim Kuponu Modülü</li></ul>', 2, 25, '{\"High Resolution\":\"Yes\",\"Compatible Browsers\":[\"Chrome\"],\"Files Included\":[\"PHP\"],\"Frameworks\":[\"Cake PHP\"]}', '1.0', 'embed', 'https://iyovex.com/yazilim/mobilya-e-ticaret-yazilimi', 'e-ticaret,kurumsal,hazır yazılım', 'files/items/16.png', 'image', 'files/items/16.png', NULL, NULL, 'https://sc.demopaneli.com/', 'external', '[\"files\\/items\\/1.png\",\"files\\/items\\/2.png\"]', 1500, 1, 1, '<p>7/24 Teknik Destek</p>', 1, NULL, 1, 1350.00, 0, 0, 0, 43, 43, 0, 0, 0, 0, 0, 1, 0, NULL, '2025-01-10 04:39:57', '2025-04-30 11:19:33'),
(1019, 'Test Örnek Yazılım 17', 'test-ornek-yazilim-17', '<ul><li>Sınırsız Dil Ekleme</li><li>Sınırsız Ürün Yönetimi</li><li>Ürünlere Galeri Yükleme</li><li>Ürünlere Teknik Özellik Ekleme</li><li>Teknik Özellikleri Filtre Olarak Kullanma</li><li>Ürünlere Varyant Ekleme</li><li>Ek Fiyatlı Varyant Sistemi</li><li>Tarih Seçimi Varyant Sistemi</li><li>Radio Buttonlu Varyant Sistemi</li><li>Resimli Varyant Sistemi</li><li>Yazı Girdili Varyant Sistemi</li><li>Varyantlar Arası Stok Kombinasyonu</li><li>Toplu Ürün Güncelleme</li><li>Ürünlere Yorum Ekleme Modülü</li><li>Gelişmiş Kargo Sistemi</li><li>Kargo Firmaları Ekleme Modülü</li><li>Sabit Kargo ve Ayrı Kargo Sistemi</li><li>Otomatik Resim Boyutlandırma</li><li>Sınırsız Kategori Yönetimi</li><li>Alt Kategori Yönetimi</li><li>Kategori Detay Sayfaları</li><li>Kategorilerde Özellik Filtresi</li><li>Kategorilerde Marka Filtresi</li><li>Kategorilerde Fiyat Aralığı Filtresi</li><li>Kategorilerde Sıralama Seçenekleri</li><li>Kategorilerde Ürün Gösterim Seçimi</li><li>Kategorilerde Alt Kategori Listeleme</li><li>Kategorilerde Ürün Seçeneklerini Gösterme</li><li>Sınırsız Marka Yönetimi</li><li>Markalara Özel Ürün Listeleri</li><li>Anasayfada Marka Listeleme</li><li>Elektronik Katalog Yükleme</li><li>Gelişmiş Sepet Sistemi</li><li>Üyelikli veya Üye Olmadan Alışveriş</li><li>Sepette X üzeri Kargo Bedava Kampanyası</li><li>İlk Siparişe İndirim Kampanyası</li><li>Sepette Ek indirim Kampanyası</li><li>İndirim Kuponu Modülü</li></ul>', 2, 26, '{\"High Resolution\":\"Yes\",\"Compatible Browsers\":[\"Chrome\"],\"Files Included\":[\"PHP\"],\"Frameworks\":[\"Cake PHP\"]}', '1.0', 'embed', 'https://iyovex.com/yazilim/mobilya-e-ticaret-yazilimi', 'e-ticaret,kurumsal,hazır yazılım', 'files/items/17.png', 'image', 'files/items/17.png', NULL, NULL, 'https://sc.demopaneli.com/', 'external', '[\"files\\/items\\/1.png\",\"files\\/items\\/2.png\"]', 1500, 1, 1, '<p>7/24 Teknik Destek</p>', 1, NULL, 0, 0.00, 0, 0, 0, 32, 32, 0, 0, 0, 0, 0, 1, 0, NULL, '2025-01-10 04:39:57', '2025-05-01 03:26:06'),
(1020, 'Test Örnek Yazılım 19', 'test-ornek-yazilim-19', '<ul><li>Sınırsız Dil Ekleme</li><li>Sınırsız Ürün Yönetimi</li><li>Ürünlere Galeri Yükleme</li><li>Ürünlere Teknik Özellik Ekleme</li><li>Teknik Özellikleri Filtre Olarak Kullanma</li><li>Ürünlere Varyant Ekleme</li><li>Ek Fiyatlı Varyant Sistemi</li><li>Tarih Seçimi Varyant Sistemi</li><li>Radio Buttonlu Varyant Sistemi</li><li>Resimli Varyant Sistemi</li><li>Yazı Girdili Varyant Sistemi</li><li>Varyantlar Arası Stok Kombinasyonu</li><li>Toplu Ürün Güncelleme</li><li>Ürünlere Yorum Ekleme Modülü</li><li>Gelişmiş Kargo Sistemi</li><li>Kargo Firmaları Ekleme Modülü</li><li>Sabit Kargo ve Ayrı Kargo Sistemi</li><li>Otomatik Resim Boyutlandırma</li><li>Sınırsız Kategori Yönetimi</li><li>Alt Kategori Yönetimi</li><li>Kategori Detay Sayfaları</li><li>Kategorilerde Özellik Filtresi</li><li>Kategorilerde Marka Filtresi</li><li>Kategorilerde Fiyat Aralığı Filtresi</li><li>Kategorilerde Sıralama Seçenekleri</li><li>Kategorilerde Ürün Gösterim Seçimi</li><li>Kategorilerde Alt Kategori Listeleme</li><li>Kategorilerde Ürün Seçeneklerini Gösterme</li><li>Sınırsız Marka Yönetimi</li><li>Markalara Özel Ürün Listeleri</li><li>Anasayfada Marka Listeleme</li><li>Elektronik Katalog Yükleme</li><li>Gelişmiş Sepet Sistemi</li><li>Üyelikli veya Üye Olmadan Alışveriş</li><li>Sepette X üzeri Kargo Bedava Kampanyası</li><li>İlk Siparişe İndirim Kampanyası</li><li>Sepette Ek indirim Kampanyası</li><li>İndirim Kuponu Modülü</li></ul>', 2, 26, '{\"High Resolution\":\"Yes\",\"Compatible Browsers\":[\"Chrome\"],\"Files Included\":[\"PHP\"],\"Frameworks\":[\"Cake PHP\"]}', '1.0', 'embed', 'https://iyovex.com/yazilim/mobilya-e-ticaret-yazilimi', 'e-ticaret,kurumsal,hazır yazılım', 'files/items/19.png', 'image', 'files/items/19.png', NULL, NULL, 'https://sc.demopaneli.com/', 'external', '[\"files\\/items\\/1.png\",\"files\\/items\\/2.png\"]', 1500, 1, 1, '<p>7/24 Teknik Destek</p>', 1, NULL, 0, 0.00, 0, 0, 0, 27, 27, 0, 0, 0, 0, 0, 1, 0, NULL, '2025-01-10 04:39:57', '2025-04-25 13:02:36'),
(1021, 'Test Örnek Yazılım 20', 'test-ornek-yazilim-20', '<ul><li>Sınırsız Dil Ekleme</li><li>Sınırsız Ürün Yönetimi</li><li>Ürünlere Galeri Yükleme</li><li>Ürünlere Teknik Özellik Ekleme</li><li>Teknik Özellikleri Filtre Olarak Kullanma</li><li>Ürünlere Varyant Ekleme</li><li>Ek Fiyatlı Varyant Sistemi</li><li>Tarih Seçimi Varyant Sistemi</li><li>Radio Buttonlu Varyant Sistemi</li><li>Resimli Varyant Sistemi</li><li>Yazı Girdili Varyant Sistemi</li><li>Varyantlar Arası Stok Kombinasyonu</li><li>Toplu Ürün Güncelleme</li><li>Ürünlere Yorum Ekleme Modülü</li><li>Gelişmiş Kargo Sistemi</li><li>Kargo Firmaları Ekleme Modülü</li><li>Sabit Kargo ve Ayrı Kargo Sistemi</li><li>Otomatik Resim Boyutlandırma</li><li>Sınırsız Kategori Yönetimi</li><li>Alt Kategori Yönetimi</li><li>Kategori Detay Sayfaları</li><li>Kategorilerde Özellik Filtresi</li><li>Kategorilerde Marka Filtresi</li><li>Kategorilerde Fiyat Aralığı Filtresi</li><li>Kategorilerde Sıralama Seçenekleri</li><li>Kategorilerde Ürün Gösterim Seçimi</li><li>Kategorilerde Alt Kategori Listeleme</li><li>Kategorilerde Ürün Seçeneklerini Gösterme</li><li>Sınırsız Marka Yönetimi</li><li>Markalara Özel Ürün Listeleri</li><li>Anasayfada Marka Listeleme</li><li>Elektronik Katalog Yükleme</li><li>Gelişmiş Sepet Sistemi</li><li>Üyelikli veya Üye Olmadan Alışveriş</li><li>Sepette X üzeri Kargo Bedava Kampanyası</li><li>İlk Siparişe İndirim Kampanyası</li><li>Sepette Ek indirim Kampanyası</li><li>İndirim Kuponu Modülü</li></ul>', 2, 27, '{\"High Resolution\":\"Yes\",\"Compatible Browsers\":[\"Chrome\"],\"Files Included\":[\"PHP\"],\"Frameworks\":[\"Cake PHP\"]}', '1.0', 'embed', 'https://iyovex.com/yazilim/mobilya-e-ticaret-yazilimi', 'e-ticaret,kurumsal,hazır yazılım', 'files/items/20.png', 'image', 'files/items/20.png', NULL, NULL, 'https://sc.demopaneli.com/', 'external', '[\"files\\/items\\/1.png\",\"files\\/items\\/2.png\"]', 1500, 1, 1, '<p>7/24 Teknik Destek</p>', 1, NULL, 1, 1350.00, 0, 0, 0, 37, 37, 0, 0, 0, 0, 0, 1, 0, NULL, '2025-01-10 04:39:57', '2025-04-30 11:19:27'),
(1022, 'Test Örnek Yazılım 21', 'test-ornek-yazilim-21', '<ul><li>Sınırsız Dil Ekleme</li><li>Sınırsız Ürün Yönetimi</li><li>Ürünlere Galeri Yükleme</li><li>Ürünlere Teknik Özellik Ekleme</li><li>Teknik Özellikleri Filtre Olarak Kullanma</li><li>Ürünlere Varyant Ekleme</li><li>Ek Fiyatlı Varyant Sistemi</li><li>Tarih Seçimi Varyant Sistemi</li><li>Radio Buttonlu Varyant Sistemi</li><li>Resimli Varyant Sistemi</li><li>Yazı Girdili Varyant Sistemi</li><li>Varyantlar Arası Stok Kombinasyonu</li><li>Toplu Ürün Güncelleme</li><li>Ürünlere Yorum Ekleme Modülü</li><li>Gelişmiş Kargo Sistemi</li><li>Kargo Firmaları Ekleme Modülü</li><li>Sabit Kargo ve Ayrı Kargo Sistemi</li><li>Otomatik Resim Boyutlandırma</li><li>Sınırsız Kategori Yönetimi</li><li>Alt Kategori Yönetimi</li><li>Kategori Detay Sayfaları</li><li>Kategorilerde Özellik Filtresi</li><li>Kategorilerde Marka Filtresi</li><li>Kategorilerde Fiyat Aralığı Filtresi</li><li>Kategorilerde Sıralama Seçenekleri</li><li>Kategorilerde Ürün Gösterim Seçimi</li><li>Kategorilerde Alt Kategori Listeleme</li><li>Kategorilerde Ürün Seçeneklerini Gösterme</li><li>Sınırsız Marka Yönetimi</li><li>Markalara Özel Ürün Listeleri</li><li>Anasayfada Marka Listeleme</li><li>Elektronik Katalog Yükleme</li><li>Gelişmiş Sepet Sistemi</li><li>Üyelikli veya Üye Olmadan Alışveriş</li><li>Sepette X üzeri Kargo Bedava Kampanyası</li><li>İlk Siparişe İndirim Kampanyası</li><li>Sepette Ek indirim Kampanyası</li><li>İndirim Kuponu Modülü</li></ul>', 2, 27, '{\"High Resolution\":\"Yes\",\"Compatible Browsers\":[\"Chrome\"],\"Files Included\":[\"PHP\"],\"Frameworks\":[\"Cake PHP\"]}', '1.0', 'embed', 'https://iyovex.com/yazilim/mobilya-e-ticaret-yazilimi', 'e-ticaret,kurumsal,hazır yazılım', 'files/items/21.png', 'image', 'files/items/21.png', NULL, NULL, 'https://sc.demopaneli.com/', 'external', '[\"files\\/items\\/1.png\",\"files\\/items\\/2.png\"]', 1500, 1, 1, '<p>7/24 Teknik Destek</p>', 1, NULL, 2, 3000.00, 0, 0, 0, 40, 40, 0, 0, 0, 0, 0, 0, 0, NULL, '2025-01-10 04:39:57', '2025-04-30 13:57:02'),
(1023, 'Test Örnek Yazılım 22', 'test-ornek-yazilim-22', '<ul><li>Sınırsız Dil Ekleme</li><li>Sınırsız Ürün Yönetimi</li><li>Ürünlere Galeri Yükleme</li><li>Ürünlere Teknik Özellik Ekleme</li><li>Teknik Özellikleri Filtre Olarak Kullanma</li><li>Ürünlere Varyant Ekleme</li><li>Ek Fiyatlı Varyant Sistemi</li><li>Tarih Seçimi Varyant Sistemi</li><li>Radio Buttonlu Varyant Sistemi</li><li>Resimli Varyant Sistemi</li><li>Yazı Girdili Varyant Sistemi</li><li>Varyantlar Arası Stok Kombinasyonu</li><li>Toplu Ürün Güncelleme</li><li>Ürünlere Yorum Ekleme Modülü</li><li>Gelişmiş Kargo Sistemi</li><li>Kargo Firmaları Ekleme Modülü</li><li>Sabit Kargo ve Ayrı Kargo Sistemi</li><li>Otomatik Resim Boyutlandırma</li><li>Sınırsız Kategori Yönetimi</li><li>Alt Kategori Yönetimi</li><li>Kategori Detay Sayfaları</li><li>Kategorilerde Özellik Filtresi</li><li>Kategorilerde Marka Filtresi</li><li>Kategorilerde Fiyat Aralığı Filtresi</li><li>Kategorilerde Sıralama Seçenekleri</li><li>Kategorilerde Ürün Gösterim Seçimi</li><li>Kategorilerde Alt Kategori Listeleme</li><li>Kategorilerde Ürün Seçeneklerini Gösterme</li><li>Sınırsız Marka Yönetimi</li><li>Markalara Özel Ürün Listeleri</li><li>Anasayfada Marka Listeleme</li><li>Elektronik Katalog Yükleme</li><li>Gelişmiş Sepet Sistemi</li><li>Üyelikli veya Üye Olmadan Alışveriş</li><li>Sepette X üzeri Kargo Bedava Kampanyası</li><li>İlk Siparişe İndirim Kampanyası</li><li>Sepette Ek indirim Kampanyası</li><li>İndirim Kuponu Modülü</li></ul>', 2, 28, '{\"High Resolution\":\"Yes\",\"Compatible Browsers\":[\"Chrome\"],\"Files Included\":[\"PHP\"],\"Frameworks\":[\"Cake PHP\"]}', '1.0', 'embed', 'https://iyovex.com/yazilim/mobilya-e-ticaret-yazilimi', 'e-ticaret,kurumsal,hazır yazılım', 'files/items/22.png', 'image', 'files/items/22.png', NULL, NULL, 'https://sc.demopaneli.com/', 'external', '[\"files\\/items\\/1.png\",\"files\\/items\\/2.png\"]', 1500, 1, 1, '<p>7/24 Teknik Destek</p>', 1, NULL, 1, 1500.00, 0, 0, 0, 65, 65, 0, 0, 0, 0, 0, 0, 0, NULL, '2025-01-10 04:39:57', '2025-04-30 17:22:19');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `item_change_logs`
--

CREATE TABLE `item_change_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `item_id` bigint UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `item_comments`
--

CREATE TABLE `item_comments` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `item_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `item_comment_replies`
--

CREATE TABLE `item_comment_replies` (
  `id` bigint UNSIGNED NOT NULL,
  `item_comment_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `body` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `item_comment_reports`
--

CREATE TABLE `item_comment_reports` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `item_comment_reply_id` bigint UNSIGNED NOT NULL,
  `reason` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `item_discounts`
--

CREATE TABLE `item_discounts` (
  `id` bigint UNSIGNED NOT NULL,
  `item_id` bigint UNSIGNED NOT NULL,
  `regular_percentage` int UNSIGNED NOT NULL,
  `regular_price` bigint NOT NULL,
  `extended_percentage` int UNSIGNED DEFAULT NULL,
  `extended_price` bigint DEFAULT NULL,
  `starting_at` date NOT NULL,
  `ending_at` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `item_discounts`
--

INSERT INTO `item_discounts` (`id`, `item_id`, `regular_percentage`, `regular_price`, `extended_percentage`, `extended_price`, `starting_at`, `ending_at`, `status`, `created_at`, `updated_at`) VALUES
(2, 1003, 10, 1350, 10, 1, '2025-01-10', '2025-08-16', 1, '2025-01-10 04:46:17', '2025-01-10 04:46:17'),
(3, 1004, 10, 1350, 10, 1, '2025-01-10', '2025-08-16', 1, '2025-01-10 04:46:17', '2025-01-10 04:46:17'),
(4, 1005, 10, 1350, 10, 1, '2025-01-10', '2025-08-16', 1, '2025-01-10 04:46:17', '2025-01-10 04:46:17'),
(5, 1006, 10, 1350, 10, 1, '2025-01-10', '2025-08-16', 1, '2025-01-10 04:46:17', '2025-01-10 04:46:17'),
(6, 1007, 10, 1350, 10, 1, '2025-01-10', '2025-08-16', 1, '2025-01-10 04:46:17', '2025-01-10 04:46:17'),
(7, 1008, 10, 1350, 10, 1, '2025-01-10', '2025-08-16', 1, '2025-01-10 04:46:17', '2025-01-10 04:46:17'),
(8, 1009, 10, 1350, 10, 1, '2025-01-10', '2025-08-16', 1, '2025-01-10 04:46:17', '2025-01-10 04:46:17'),
(10, 1011, 10, 1350, 10, 1, '2025-01-10', '2025-08-16', 1, '2025-01-10 04:46:17', '2025-01-10 04:46:17'),
(11, 1012, 10, 1350, 10, 1, '2025-01-10', '2025-08-16', 1, '2025-01-10 04:46:17', '2025-01-10 04:46:17'),
(13, 1014, 10, 1350, 10, 1, '2025-01-10', '2025-08-16', 1, '2025-01-10 04:46:17', '2025-01-10 04:46:17'),
(14, 1015, 10, 1350, 10, 1, '2025-01-10', '2025-08-16', 1, '2025-01-10 04:46:17', '2025-01-10 04:46:17'),
(15, 1016, 10, 1350, 10, 1, '2025-01-10', '2025-08-16', 1, '2025-01-10 04:46:17', '2025-01-10 04:46:17'),
(16, 1017, 10, 1350, 10, 1, '2025-01-10', '2025-08-16', 1, '2025-01-10 04:46:17', '2025-01-10 04:46:17'),
(17, 1018, 10, 1350, 10, 1, '2025-01-10', '2025-08-16', 1, '2025-01-10 04:46:17', '2025-01-10 04:46:17'),
(18, 1019, 10, 1350, 10, 1, '2025-01-10', '2025-08-16', 1, '2025-01-10 04:46:17', '2025-01-10 04:46:17'),
(19, 1020, 10, 1350, 10, 1, '2025-01-10', '2025-08-16', 1, '2025-01-10 04:46:17', '2025-01-10 04:46:17'),
(20, 1021, 10, 1350, 10, 1, '2025-01-10', '2025-08-16', 1, '2025-01-10 04:46:17', '2025-01-10 04:46:17');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `item_reviews`
--

CREATE TABLE `item_reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `item_id` bigint UNSIGNED NOT NULL,
  `stars` int NOT NULL,
  `body` longtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `item_review_replies`
--

CREATE TABLE `item_review_replies` (
  `id` bigint UNSIGNED NOT NULL,
  `item_review_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `body` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `item_views`
--

CREATE TABLE `item_views` (
  `id` bigint UNSIGNED NOT NULL,
  `item_id` bigint UNSIGNED NOT NULL,
  `ip` varchar(255) NOT NULL,
  `referrer` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `item_views`
--

INSERT INTO `item_views` (`id`, `item_id`, `ip`, `referrer`, `created_at`, `updated_at`) VALUES
(4, 1003, '185.209.196.163', '/', '2025-01-10 04:44:08', '2025-01-10 04:44:08'),
(5, 1004, '185.209.196.163', NULL, '2025-01-10 04:50:03', '2025-01-10 04:50:03'),
(6, 1012, '185.209.196.163', '/', '2025-01-10 05:01:31', '2025-01-10 05:01:31'),
(7, 1023, '185.209.196.163', '/', '2025-01-10 05:11:52', '2025-01-10 05:11:52'),
(8, 1016, '185.209.196.163', '/', '2025-01-10 05:17:03', '2025-01-10 05:17:03'),
(9, 1019, '185.209.196.163', '/', '2025-01-10 08:21:40', '2025-01-10 08:21:40'),
(10, 1018, '78.164.217.208', '/', '2025-01-10 08:27:19', '2025-01-10 08:27:19'),
(11, 1014, '78.164.217.208', '/', '2025-01-10 08:28:19', '2025-01-10 08:28:19'),
(12, 1018, '185.209.196.163', '/', '2025-01-10 08:36:38', '2025-01-10 08:36:38'),
(13, 1017, '185.209.196.163', '/', '2025-01-10 09:09:04', '2025-01-10 09:09:04'),
(14, 1020, '185.209.196.163', '/', '2025-01-10 09:11:04', '2025-01-10 09:11:04'),
(15, 1008, '185.209.196.163', '/', '2025-01-10 09:14:12', '2025-01-10 09:14:12'),
(16, 1014, '78.183.157.248', '/', '2025-01-11 01:20:19', '2025-01-11 01:20:19'),
(17, 1009, '185.209.196.163', '/', '2025-01-11 02:06:11', '2025-01-11 02:06:11'),
(18, 1014, '78.167.126.108', '/', '2025-01-11 07:13:40', '2025-01-11 07:13:40'),
(19, 1015, '185.209.196.163', '/', '2025-01-12 06:44:08', '2025-01-12 06:44:08'),
(20, 1023, '78.167.126.108', '/', '2025-01-12 07:01:26', '2025-01-12 07:01:26'),
(21, 1012, '78.167.126.108', '/', '2025-01-12 07:02:10', '2025-01-12 07:02:10'),
(22, 1017, '78.167.126.108', '/', '2025-01-12 07:05:24', '2025-01-12 07:05:24'),
(23, 1015, '78.167.126.108', '/', '2025-01-12 07:09:26', '2025-01-12 07:09:26'),
(24, 1020, '78.167.126.108', '/', '2025-01-12 07:10:23', '2025-01-12 07:10:23'),
(25, 1014, '78.167.126.108', '/', '2025-01-12 23:46:46', '2025-01-12 23:46:46'),
(26, 1016, '5.47.167.87', '/', '2025-01-13 23:43:20', '2025-01-13 23:43:20'),
(27, 1014, '88.226.58.231', '/', '2025-01-14 04:01:13', '2025-01-14 04:01:13'),
(28, 1021, '88.226.58.231', '/', '2025-01-14 08:10:01', '2025-01-14 08:10:01'),
(29, 1014, '95.12.64.14', '/', '2025-01-14 23:15:01', '2025-01-14 23:15:01'),
(30, 1018, '185.213.155.242', '/', '2025-01-14 23:50:53', '2025-01-14 23:50:53'),
(31, 1016, '185.213.155.242', '/', '2025-01-14 23:56:26', '2025-01-14 23:56:26'),
(32, 1015, '185.213.155.242', '/', '2025-01-14 23:57:08', '2025-01-14 23:57:08'),
(33, 1017, '185.213.155.242', '/', '2025-01-15 00:26:06', '2025-01-15 00:26:06'),
(34, 1006, '185.213.155.242', '/', '2025-01-15 00:30:25', '2025-01-15 00:30:25'),
(35, 1014, '185.213.155.242', NULL, '2025-01-15 02:15:01', '2025-01-15 02:15:01'),
(36, 1012, '185.213.155.242', '/', '2025-01-15 02:26:08', '2025-01-15 02:26:08'),
(37, 1008, '185.213.155.242', '/', '2025-01-15 02:31:27', '2025-01-15 02:31:27'),
(38, 1004, '185.213.155.242', '/', '2025-01-15 02:42:41', '2025-01-15 02:42:41'),
(39, 1017, '95.12.64.14', '/', '2025-01-15 03:39:35', '2025-01-15 03:39:35'),
(40, 1008, '95.12.64.14', '/', '2025-01-15 03:59:06', '2025-01-15 03:59:06'),
(41, 1012, '95.12.64.14', '/', '2025-01-15 04:18:17', '2025-01-15 04:18:17'),
(42, 1017, '78.183.157.60', '/', '2025-01-16 00:55:13', '2025-01-16 00:55:13'),
(43, 1020, '157.55.39.16', NULL, '2025-01-22 05:18:15', '2025-01-22 05:18:15'),
(44, 1022, '52.167.144.24', NULL, '2025-01-23 22:09:45', '2025-01-23 22:09:45'),
(45, 1004, '52.167.144.24', NULL, '2025-01-23 22:09:46', '2025-01-23 22:09:46'),
(46, 1014, '52.167.144.24', NULL, '2025-01-23 22:09:49', '2025-01-23 22:09:49'),
(47, 1016, '52.167.144.24', NULL, '2025-01-23 22:09:51', '2025-01-23 22:09:51'),
(48, 1019, '52.167.144.24', NULL, '2025-01-23 22:09:54', '2025-01-23 22:09:54'),
(49, 1018, '52.167.144.162', NULL, '2025-01-23 22:09:58', '2025-01-23 22:09:58'),
(50, 1017, '207.46.13.17', NULL, '2025-01-23 22:10:07', '2025-01-23 22:10:07'),
(51, 1023, '52.167.144.162', NULL, '2025-01-23 22:10:12', '2025-01-23 22:10:12'),
(52, 1015, '52.167.144.162', NULL, '2025-01-23 22:10:13', '2025-01-23 22:10:13'),
(53, 1020, '52.167.144.158', NULL, '2025-01-24 16:28:08', '2025-01-24 16:28:08'),
(54, 1015, '52.167.144.213', NULL, '2025-01-24 19:22:31', '2025-01-24 19:22:31'),
(55, 1005, '52.167.144.138', NULL, '2025-01-24 22:33:52', '2025-01-24 22:33:52'),
(56, 1006, '40.77.167.33', NULL, '2025-01-24 22:33:57', '2025-01-24 22:33:57'),
(57, 1016, '52.167.144.166', NULL, '2025-01-24 23:06:35', '2025-01-24 23:06:35'),
(58, 1008, '52.167.144.157', NULL, '2025-01-25 01:35:20', '2025-01-25 01:35:20'),
(59, 1013, '52.167.144.157', NULL, '2025-01-25 01:35:20', '2025-01-25 01:35:20'),
(60, 1010, '52.167.144.157', NULL, '2025-01-25 01:35:21', '2025-01-25 01:35:21'),
(61, 1003, '52.167.144.157', NULL, '2025-01-25 01:35:22', '2025-01-25 01:35:22'),
(62, 1011, '40.77.167.10', NULL, '2025-01-25 01:35:27', '2025-01-25 01:35:27'),
(63, 1009, '40.77.167.10', NULL, '2025-01-25 01:35:28', '2025-01-25 01:35:28'),
(64, 1007, '40.77.167.54', NULL, '2025-01-25 01:48:49', '2025-01-25 01:48:49'),
(65, 1004, '52.167.144.24', NULL, '2025-01-25 02:03:22', '2025-01-25 02:03:22'),
(66, 1014, '40.77.167.70', NULL, '2025-01-25 02:10:05', '2025-01-25 02:10:05'),
(67, 1018, '52.167.144.199', NULL, '2025-01-25 10:46:59', '2025-01-25 10:46:59'),
(68, 1019, '52.167.144.229', NULL, '2025-01-25 12:21:13', '2025-01-25 12:21:13'),
(69, 1014, '52.167.144.156', NULL, '2025-01-25 13:51:41', '2025-01-25 13:51:41'),
(70, 1023, '52.167.144.158', NULL, '2025-01-25 15:36:38', '2025-01-25 15:36:38'),
(71, 1016, '52.167.144.217', NULL, '2025-01-25 18:20:04', '2025-01-25 18:20:04'),
(72, 1017, '207.46.13.31', NULL, '2025-01-25 18:22:37', '2025-01-25 18:22:37'),
(73, 1018, '52.167.144.219', NULL, '2025-01-25 19:31:15', '2025-01-25 19:31:15'),
(74, 1019, '40.77.167.1', NULL, '2025-01-26 05:24:39', '2025-01-26 05:24:39'),
(75, 1015, '157.55.39.50', NULL, '2025-01-26 05:45:31', '2025-01-26 05:45:31'),
(76, 1004, '52.167.144.203', NULL, '2025-01-26 07:43:52', '2025-01-26 07:43:52'),
(77, 1022, '52.167.144.20', NULL, '2025-01-26 07:52:02', '2025-01-26 07:52:02'),
(78, 1009, '207.46.13.168', NULL, '2025-01-26 12:39:53', '2025-01-26 12:39:53'),
(79, 1015, '157.55.39.63', NULL, '2025-01-26 14:12:42', '2025-01-26 14:12:42'),
(80, 1016, '40.77.167.2', NULL, '2025-01-26 15:49:27', '2025-01-26 15:49:27'),
(81, 1014, '40.77.167.53', NULL, '2025-01-26 16:15:40', '2025-01-26 16:15:40'),
(82, 1007, '157.55.39.60', NULL, '2025-01-26 18:36:28', '2025-01-26 18:36:28'),
(83, 1004, '40.77.167.23', NULL, '2025-01-26 20:06:01', '2025-01-26 20:06:01'),
(84, 1017, '40.77.167.75', NULL, '2025-01-26 20:11:39', '2025-01-26 20:11:39'),
(85, 1003, '40.77.167.121', NULL, '2025-01-26 22:00:52', '2025-01-26 22:00:52'),
(86, 1008, '52.167.144.202', NULL, '2025-01-26 23:01:59', '2025-01-26 23:01:59'),
(87, 1019, '52.167.144.17', NULL, '2025-01-26 23:30:13', '2025-01-26 23:30:13'),
(88, 1022, '40.77.167.33', NULL, '2025-01-27 01:20:33', '2025-01-27 01:20:33'),
(89, 1010, '40.77.167.79', NULL, '2025-01-27 01:30:13', '2025-01-27 01:30:13'),
(90, 1013, '40.77.167.143', NULL, '2025-01-27 01:55:26', '2025-01-27 01:55:26'),
(91, 1011, '52.167.144.18', NULL, '2025-01-27 03:27:27', '2025-01-27 03:27:27'),
(92, 1018, '40.77.167.34', NULL, '2025-01-27 05:24:50', '2025-01-27 05:24:50'),
(93, 1023, '52.167.144.179', NULL, '2025-01-27 06:56:59', '2025-01-27 06:56:59'),
(94, 1003, '52.167.144.137', NULL, '2025-01-27 15:09:25', '2025-01-27 15:09:25'),
(95, 1010, '52.167.144.162', NULL, '2025-01-27 15:28:57', '2025-01-27 15:28:57'),
(96, 1009, '40.77.167.41', NULL, '2025-01-27 22:03:43', '2025-01-27 22:03:43'),
(97, 1013, '40.77.167.13', NULL, '2025-01-27 22:47:29', '2025-01-27 22:47:29'),
(98, 1008, '52.167.144.203', NULL, '2025-01-28 02:01:07', '2025-01-28 02:01:07'),
(99, 1011, '52.167.144.231', NULL, '2025-01-28 09:12:51', '2025-01-28 09:12:51'),
(100, 1007, '40.77.167.65', NULL, '2025-01-28 09:26:14', '2025-01-28 09:26:14'),
(101, 1016, '52.167.144.176', NULL, '2025-02-01 11:16:28', '2025-02-01 11:16:28'),
(102, 1012, '193.32.248.172', '/', '2025-02-02 08:03:04', '2025-02-02 08:03:04'),
(103, 1019, '193.32.248.172', '/', '2025-02-02 08:22:14', '2025-02-02 08:22:14'),
(104, 1016, '52.167.144.138', NULL, '2025-02-03 03:13:02', '2025-02-03 03:13:02'),
(105, 1016, '52.167.144.158', NULL, '2025-02-04 19:09:50', '2025-02-04 19:09:50'),
(106, 1021, '157.55.39.16', NULL, '2025-02-07 00:09:00', '2025-02-07 00:09:00'),
(107, 1012, '157.55.39.15', NULL, '2025-02-16 23:44:44', '2025-02-16 23:44:44'),
(108, 1009, '176.89.131.73', '/', '2025-02-17 02:54:03', '2025-02-17 02:54:03'),
(109, 1003, '176.89.131.73', '/', '2025-02-17 02:54:27', '2025-02-17 02:54:27'),
(110, 1021, '176.89.131.73', '/', '2025-02-17 02:54:42', '2025-02-17 02:54:42'),
(111, 1018, '176.89.131.73', '/', '2025-02-17 04:59:22', '2025-02-17 04:59:22'),
(112, 1022, '188.57.125.14', '/', '2025-02-18 03:40:12', '2025-02-18 03:40:12'),
(113, 1006, '20.171.207.25', NULL, '2025-02-19 15:37:06', '2025-02-19 15:37:06'),
(114, 1008, '20.171.207.25', NULL, '2025-02-19 15:37:11', '2025-02-19 15:37:11'),
(115, 1009, '20.171.207.25', NULL, '2025-02-19 15:37:16', '2025-02-19 15:37:16'),
(116, 1010, '20.171.207.25', NULL, '2025-02-19 15:37:19', '2025-02-19 15:37:19'),
(117, 1004, '20.171.207.25', NULL, '2025-02-19 15:37:23', '2025-02-19 15:37:23'),
(118, 1007, '20.171.207.25', NULL, '2025-02-19 15:37:28', '2025-02-19 15:37:28'),
(119, 1005, '20.171.207.25', NULL, '2025-02-19 15:38:00', '2025-02-19 15:38:00'),
(120, 1003, '20.171.207.25', NULL, '2025-02-19 15:38:03', '2025-02-19 15:38:03'),
(121, 1011, '20.171.207.25', NULL, '2025-02-19 15:38:19', '2025-02-19 15:38:19'),
(122, 1022, '20.171.207.25', NULL, '2025-02-19 15:38:22', '2025-02-19 15:38:22'),
(123, 1017, '20.171.207.25', NULL, '2025-02-19 15:38:26', '2025-02-19 15:38:26'),
(124, 1016, '20.171.207.25', NULL, '2025-02-19 15:38:30', '2025-02-19 15:38:30'),
(125, 1015, '20.171.207.25', NULL, '2025-02-19 15:38:34', '2025-02-19 15:38:34'),
(126, 1018, '20.171.207.25', NULL, '2025-02-19 15:38:44', '2025-02-19 15:38:44'),
(127, 1023, '20.171.207.25', NULL, '2025-02-19 15:39:15', '2025-02-19 15:39:15'),
(128, 1019, '20.171.207.25', NULL, '2025-02-19 15:39:18', '2025-02-19 15:39:18'),
(129, 1020, '20.171.207.25', NULL, '2025-02-19 15:39:27', '2025-02-19 15:39:27'),
(130, 1012, '20.171.207.25', NULL, '2025-02-19 15:39:31', '2025-02-19 15:39:31'),
(131, 1021, '20.171.207.25', NULL, '2025-02-19 15:39:34', '2025-02-19 15:39:34'),
(132, 1014, '20.171.207.25', NULL, '2025-02-19 15:39:37', '2025-02-19 15:39:37'),
(133, 1013, '20.171.207.25', NULL, '2025-02-19 15:39:45', '2025-02-19 15:39:45'),
(134, 1021, '188.57.107.82', '/', '2025-02-21 08:28:36', '2025-02-21 08:28:36'),
(135, 1004, '78.174.137.227', '/', '2025-02-25 07:43:01', '2025-02-25 07:43:01'),
(136, 1006, '20.171.207.140', NULL, '2025-02-25 21:01:28', '2025-02-25 21:01:28'),
(137, 1005, '20.171.207.140', NULL, '2025-02-25 21:01:31', '2025-02-25 21:01:31'),
(138, 1003, '20.171.207.140', NULL, '2025-02-25 21:01:33', '2025-02-25 21:01:33'),
(139, 1004, '20.171.207.140', NULL, '2025-02-25 21:01:35', '2025-02-25 21:01:35'),
(140, 1009, '20.171.207.140', NULL, '2025-02-25 21:01:38', '2025-02-25 21:01:38'),
(141, 1011, '20.171.207.140', NULL, '2025-02-25 21:25:06', '2025-02-25 21:25:06'),
(142, 1021, '20.171.207.140', NULL, '2025-02-25 21:25:19', '2025-02-25 21:25:19'),
(143, 1017, '20.171.207.140', NULL, '2025-02-25 21:25:32', '2025-02-25 21:25:32'),
(144, 1014, '20.171.207.140', NULL, '2025-02-25 21:25:45', '2025-02-25 21:25:45'),
(145, 1018, '20.171.207.140', NULL, '2025-02-25 21:25:58', '2025-02-25 21:25:58'),
(146, 1023, '20.171.207.140', NULL, '2025-02-25 21:26:11', '2025-02-25 21:26:11'),
(147, 1016, '20.171.207.140', NULL, '2025-02-25 21:26:23', '2025-02-25 21:26:23'),
(148, 1012, '20.171.207.140', NULL, '2025-02-25 21:26:35', '2025-02-25 21:26:35'),
(149, 1013, '20.171.207.140', NULL, '2025-02-25 21:27:00', '2025-02-25 21:27:00'),
(150, 1016, '185.209.196.164', '/', '2025-03-15 04:47:46', '2025-03-15 04:47:46'),
(151, 1012, '185.209.196.164', '/', '2025-03-15 04:56:41', '2025-03-15 04:56:41'),
(152, 1005, '185.209.196.164', '/', '2025-03-16 10:05:39', '2025-03-16 10:05:39'),
(153, 1019, '213.180.203.25', NULL, '2025-03-16 18:24:25', '2025-03-16 18:24:25'),
(154, 1018, '213.180.203.184', NULL, '2025-03-16 18:24:26', '2025-03-16 18:24:26'),
(155, 1023, '213.180.203.129', NULL, '2025-03-16 18:24:28', '2025-03-16 18:24:28'),
(156, 1009, '95.108.213.201', NULL, '2025-03-16 18:24:31', '2025-03-16 18:24:31'),
(157, 1006, '87.250.224.36', NULL, '2025-03-16 18:24:53', '2025-03-16 18:24:53'),
(158, 1010, '95.108.213.253', NULL, '2025-03-16 18:24:54', '2025-03-16 18:24:54'),
(159, 1014, '5.255.231.75', NULL, '2025-03-16 18:24:55', '2025-03-16 18:24:55'),
(160, 1007, '5.255.231.148', NULL, '2025-03-16 18:24:57', '2025-03-16 18:24:57'),
(161, 1013, '87.250.224.35', NULL, '2025-03-16 18:24:58', '2025-03-16 18:24:58'),
(162, 1012, '5.255.231.126', NULL, '2025-03-16 18:24:58', '2025-03-16 18:24:58'),
(163, 1008, '95.108.213.215', NULL, '2025-03-16 18:25:02', '2025-03-16 18:25:02'),
(164, 1016, '5.255.231.148', NULL, '2025-03-16 18:25:02', '2025-03-16 18:25:02'),
(165, 1017, '87.250.224.36', NULL, '2025-03-16 18:25:27', '2025-03-16 18:25:27'),
(166, 1022, '213.180.203.129', NULL, '2025-03-16 18:25:28', '2025-03-16 18:25:28'),
(167, 1004, '213.180.203.184', NULL, '2025-03-16 18:25:48', '2025-03-16 18:25:48'),
(168, 1003, '95.108.213.253', NULL, '2025-03-16 18:25:49', '2025-03-16 18:25:49'),
(169, 1021, '213.180.203.129', NULL, '2025-03-16 18:26:05', '2025-03-16 18:26:05'),
(170, 1005, '95.108.213.144', NULL, '2025-03-16 18:26:16', '2025-03-16 18:26:16'),
(171, 1011, '5.255.231.148', NULL, '2025-03-16 18:26:16', '2025-03-16 18:26:16'),
(172, 1020, '213.180.203.254', NULL, '2025-03-16 18:26:20', '2025-03-16 18:26:20'),
(173, 1015, '95.108.213.201', NULL, '2025-03-16 18:26:20', '2025-03-16 18:26:20'),
(174, 1021, '5.255.231.148', NULL, '2025-03-16 18:29:41', '2025-03-16 18:29:41'),
(175, 1009, '95.108.213.144', NULL, '2025-03-16 18:29:51', '2025-03-16 18:29:51'),
(176, 1005, '213.180.203.254', NULL, '2025-03-16 18:29:54', '2025-03-16 18:29:54'),
(177, 1004, '95.108.213.201', NULL, '2025-03-16 18:30:14', '2025-03-16 18:30:14'),
(178, 1012, '185.209.196.164', '/', '2025-03-17 01:29:05', '2025-03-17 01:29:05'),
(179, 1023, '185.209.196.164', '/', '2025-03-17 01:33:42', '2025-03-17 01:33:42'),
(180, 1021, '185.209.196.164', '/', '2025-03-17 03:06:51', '2025-03-17 03:06:51'),
(181, 1021, '213.202.254.242', '/', '2025-03-17 03:18:33', '2025-03-17 03:18:33'),
(182, 1021, '40.77.167.144', NULL, '2025-03-17 03:33:11', '2025-03-17 03:33:11'),
(183, 1016, '5.47.163.7', '/', '2025-03-17 05:11:23', '2025-03-17 05:11:23'),
(184, 1016, '18.207.106.4', '/', '2025-03-17 05:54:07', '2025-03-17 05:54:07'),
(185, 1021, '18.207.106.4', '/', '2025-03-17 05:54:08', '2025-03-17 05:54:08'),
(186, 1008, '18.207.106.4', '/', '2025-03-17 05:54:08', '2025-03-17 05:54:08'),
(187, 1011, '18.207.106.4', '/', '2025-03-17 05:54:09', '2025-03-17 05:54:09'),
(188, 1023, '18.207.106.4', '/', '2025-03-17 05:54:10', '2025-03-17 05:54:10'),
(189, 1022, '18.207.106.4', '/', '2025-03-17 05:54:10', '2025-03-17 05:54:10'),
(190, 1020, '18.207.106.4', '/', '2025-03-17 05:54:11', '2025-03-17 05:54:11'),
(191, 1019, '18.207.106.4', '/', '2025-03-17 05:54:12', '2025-03-17 05:54:12'),
(192, 1018, '18.207.106.4', '/', '2025-03-17 05:54:12', '2025-03-17 05:54:12'),
(193, 1017, '18.207.106.4', '/', '2025-03-17 05:54:13', '2025-03-17 05:54:13'),
(194, 1021, '176.41.180.166', '/', '2025-03-17 10:37:14', '2025-03-17 10:37:14'),
(195, 1008, '185.209.196.164', '/', '2025-03-17 23:56:34', '2025-03-17 23:56:34'),
(196, 1021, '184.72.115.35', NULL, '2025-03-19 12:36:43', '2025-03-19 12:36:43'),
(197, 1018, '3.218.208.61', '/', '2025-03-20 04:20:07', '2025-03-20 04:20:07'),
(198, 1021, '3.218.208.61', '/', '2025-03-20 04:20:08', '2025-03-20 04:20:08'),
(199, 1004, '3.218.208.61', '/', '2025-03-20 04:20:09', '2025-03-20 04:20:09'),
(200, 1007, '3.218.208.61', '/', '2025-03-20 04:20:09', '2025-03-20 04:20:09'),
(201, 1023, '3.218.208.61', '/', '2025-03-20 04:20:10', '2025-03-20 04:20:10'),
(202, 1022, '3.218.208.61', '/', '2025-03-20 04:20:11', '2025-03-20 04:20:11'),
(203, 1020, '3.218.208.61', '/', '2025-03-20 04:20:11', '2025-03-20 04:20:11'),
(204, 1019, '3.218.208.61', '/', '2025-03-20 04:20:12', '2025-03-20 04:20:12'),
(205, 1017, '3.218.208.61', '/', '2025-03-20 04:20:13', '2025-03-20 04:20:13'),
(206, 1016, '3.218.208.61', '/', '2025-03-20 04:20:13', '2025-03-20 04:20:13'),
(207, 1016, '185.209.196.164', '/', '2025-03-24 07:53:52', '2025-03-24 07:53:52'),
(208, 1012, '188.119.16.236', '/', '2025-03-26 05:32:20', '2025-03-26 05:32:20'),
(209, 1012, '185.209.196.164', '/', '2025-03-26 06:26:05', '2025-03-26 06:26:05'),
(210, 1015, '185.209.196.164', '/', '2025-03-26 06:52:31', '2025-03-26 06:52:31'),
(211, 1021, '5.255.231.79', NULL, '2025-03-28 01:43:33', '2025-03-28 01:43:33'),
(212, 1018, '176.103.50.127', '/', '2025-03-28 08:56:44', '2025-03-28 08:56:44'),
(213, 1021, '213.180.203.57', NULL, '2025-03-31 02:01:02', '2025-03-31 02:01:02'),
(214, 1007, '87.250.224.30', NULL, '2025-04-02 00:13:44', '2025-04-02 00:13:44'),
(215, 1013, '5.255.231.14', NULL, '2025-04-02 00:13:44', '2025-04-02 00:13:44'),
(216, 1014, '213.180.203.8', NULL, '2025-04-02 00:13:45', '2025-04-02 00:13:45'),
(217, 1022, '5.176.237.252', '/', '2025-04-03 13:31:49', '2025-04-03 13:31:49'),
(218, 1022, '185.209.196.152', '/', '2025-04-05 02:11:25', '2025-04-05 02:11:25'),
(219, 1005, '5.255.231.85', NULL, '2025-04-07 00:38:54', '2025-04-07 00:38:54'),
(220, 1023, '146.70.107.196', '/', '2025-04-08 02:36:59', '2025-04-08 02:36:59'),
(221, 1006, '146.70.107.196', '/', '2025-04-08 02:44:14', '2025-04-08 02:44:14'),
(223, 1008, '5.47.165.149', '/', '2025-04-10 00:23:00', '2025-04-10 00:23:00'),
(224, 1007, '5.47.165.149', NULL, '2025-04-10 00:23:11', '2025-04-10 00:23:11'),
(225, 1023, '5.47.165.149', '/', '2025-04-10 00:23:27', '2025-04-10 00:23:27'),
(226, 1008, '176.216.204.159', '/', '2025-04-11 02:43:39', '2025-04-11 02:43:39'),
(227, 1016, '5.47.165.149', '/', '2025-04-11 21:59:38', '2025-04-11 21:59:38'),
(228, 1013, '95.108.213.94', NULL, '2025-04-11 22:28:20', '2025-04-11 22:28:20'),
(229, 1019, '31.171.153.68', '/', '2025-04-14 11:04:51', '2025-04-14 11:04:51'),
(230, 1012, '31.171.153.68', '/', '2025-04-15 09:36:41', '2025-04-15 09:36:41'),
(231, 1004, '44.200.158.210', '/', '2025-04-17 16:19:29', '2025-04-17 16:19:29'),
(232, 1007, '44.200.158.210', '/', '2025-04-17 16:19:30', '2025-04-17 16:19:30'),
(233, 1003, '44.200.158.210', '/', '2025-04-17 16:19:30', '2025-04-17 16:19:30'),
(234, 1009, '44.200.158.210', '/', '2025-04-17 16:19:31', '2025-04-17 16:19:31'),
(235, 1023, '44.200.158.210', '/', '2025-04-17 16:19:32', '2025-04-17 16:19:32'),
(236, 1022, '44.200.158.210', '/', '2025-04-17 16:19:33', '2025-04-17 16:19:33'),
(237, 1021, '44.200.158.210', '/', '2025-04-17 16:19:33', '2025-04-17 16:19:33'),
(238, 1020, '44.200.158.210', '/', '2025-04-17 16:19:34', '2025-04-17 16:19:34'),
(239, 1019, '44.200.158.210', '/', '2025-04-17 16:19:35', '2025-04-17 16:19:35'),
(240, 1018, '44.200.158.210', '/', '2025-04-17 16:19:36', '2025-04-17 16:19:36'),
(241, 1017, '44.200.158.210', '/', '2025-04-17 16:19:37', '2025-04-17 16:19:37'),
(242, 1016, '44.200.158.210', '/', '2025-04-17 16:19:38', '2025-04-17 16:19:38'),
(243, 1019, '62.248.104.141', '/', '2025-04-19 08:49:16', '2025-04-19 08:49:16'),
(244, 1019, '44.223.111.223', '/', '2025-04-19 13:17:10', '2025-04-19 13:17:10'),
(245, 1017, '44.223.111.223', '/', '2025-04-19 13:17:12', '2025-04-19 13:17:12'),
(246, 1015, '44.223.111.223', '/', '2025-04-19 13:17:12', '2025-04-19 13:17:12'),
(247, 1009, '44.223.111.223', '/', '2025-04-19 13:17:13', '2025-04-19 13:17:13'),
(248, 1023, '44.223.111.223', '/', '2025-04-19 13:17:14', '2025-04-19 13:17:14'),
(249, 1022, '44.223.111.223', '/', '2025-04-19 13:17:16', '2025-04-19 13:17:16'),
(250, 1021, '44.223.111.223', '/', '2025-04-19 13:17:17', '2025-04-19 13:17:17'),
(251, 1020, '44.223.111.223', '/', '2025-04-19 13:17:17', '2025-04-19 13:17:17'),
(252, 1018, '44.223.111.223', '/', '2025-04-19 13:17:18', '2025-04-19 13:17:18'),
(253, 1016, '44.223.111.223', '/', '2025-04-19 13:17:19', '2025-04-19 13:17:19'),
(254, 1016, '78.173.39.154', '/', '2025-04-20 07:30:54', '2025-04-20 07:30:54'),
(255, 1005, '81.214.165.160', '/', '2025-04-20 07:32:41', '2025-04-20 07:32:41'),
(256, 1005, '95.10.118.248', '/', '2025-04-20 07:34:35', '2025-04-20 07:34:35'),
(257, 1022, '212.112.126.242', '/', '2025-04-20 07:34:40', '2025-04-20 07:34:40'),
(258, 1005, '195.174.135.118', '/', '2025-04-20 07:35:07', '2025-04-20 07:35:07'),
(259, 1005, '85.107.102.18', '/', '2025-04-20 07:36:27', '2025-04-20 07:36:27'),
(260, 1006, '85.107.102.18', '/', '2025-04-20 07:36:41', '2025-04-20 07:36:41'),
(261, 1016, '188.132.132.64', '/', '2025-04-20 07:40:22', '2025-04-20 07:40:22'),
(262, 1005, '159.146.27.24', '/', '2025-04-20 07:40:33', '2025-04-20 07:40:33'),
(263, 1004, '188.132.132.64', '/', '2025-04-20 07:41:03', '2025-04-20 07:41:03'),
(264, 1023, '178.241.9.39', '/', '2025-04-20 07:41:47', '2025-04-20 07:41:47'),
(265, 1005, '45.135.204.189', '/', '2025-04-20 07:44:03', '2025-04-20 07:44:03'),
(266, 1005, '178.241.9.39', '/', '2025-04-20 07:44:28', '2025-04-20 07:44:28'),
(267, 1017, '178.241.9.39', '/', '2025-04-20 07:46:58', '2025-04-20 07:46:58'),
(268, 1023, '45.135.204.189', '/', '2025-04-20 07:47:53', '2025-04-20 07:47:53'),
(269, 1011, '176.89.229.237', '/', '2025-04-20 07:59:35', '2025-04-20 07:59:35'),
(270, 1011, '185.209.196.152', '/', '2025-04-20 08:02:56', '2025-04-20 08:02:56'),
(271, 1010, '185.209.196.152', '/', '2025-04-20 08:03:32', '2025-04-20 08:03:32'),
(272, 1004, '88.228.246.47', '/', '2025-04-20 08:16:04', '2025-04-20 08:16:04'),
(273, 1023, '31.143.219.6', '/', '2025-04-20 08:25:35', '2025-04-20 08:25:35'),
(274, 1018, '94.54.170.112', '/', '2025-04-20 09:10:53', '2025-04-20 09:10:53'),
(275, 1003, '176.216.39.38', '/', '2025-04-20 09:16:40', '2025-04-20 09:16:40'),
(276, 1012, '176.216.39.38', '/', '2025-04-20 09:17:23', '2025-04-20 09:17:23'),
(277, 1005, '104.28.30.74', '/', '2025-04-20 09:19:37', '2025-04-20 09:19:37'),
(278, 1011, '88.234.83.250', '/', '2025-04-20 09:24:24', '2025-04-20 09:24:24'),
(279, 1011, '5.176.44.108', '/', '2025-04-20 10:14:55', '2025-04-20 10:14:55'),
(280, 1005, '176.33.70.255', '/', '2025-04-20 10:56:06', '2025-04-20 10:56:06'),
(281, 1012, '178.241.10.255', '/', '2025-04-20 12:01:14', '2025-04-20 12:01:14'),
(282, 1010, '194.145.136.4', '/', '2025-04-20 14:31:33', '2025-04-20 14:31:33'),
(283, 1012, '194.145.136.4', '/', '2025-04-20 14:33:51', '2025-04-20 14:33:51'),
(284, 1016, '194.145.136.4', '/', '2025-04-20 14:35:56', '2025-04-20 14:35:56'),
(285, 1005, '78.190.201.185', '/', '2025-04-20 15:11:56', '2025-04-20 15:11:56'),
(286, 1012, '78.190.201.185', '/', '2025-04-20 15:13:27', '2025-04-20 15:13:27'),
(287, 1003, '20.171.207.215', NULL, '2025-04-20 15:56:43', '2025-04-20 15:56:43'),
(288, 1009, '20.171.207.215', NULL, '2025-04-20 15:56:58', '2025-04-20 15:56:58'),
(289, 1006, '20.171.207.215', NULL, '2025-04-20 15:57:04', '2025-04-20 15:57:04'),
(290, 1005, '20.171.207.215', NULL, '2025-04-20 15:57:06', '2025-04-20 15:57:06'),
(291, 1008, '20.171.207.215', NULL, '2025-04-20 15:57:09', '2025-04-20 15:57:09'),
(292, 1010, '20.171.207.215', NULL, '2025-04-20 15:57:11', '2025-04-20 15:57:11'),
(293, 1004, '20.171.207.215', NULL, '2025-04-20 15:57:47', '2025-04-20 15:57:47'),
(294, 1007, '20.171.207.215', NULL, '2025-04-20 15:57:48', '2025-04-20 15:57:48'),
(295, 1011, '20.171.207.215', NULL, '2025-04-20 15:57:56', '2025-04-20 15:57:56'),
(296, 1023, '20.171.207.215', NULL, '2025-04-20 15:57:58', '2025-04-20 15:57:58'),
(297, 1016, '20.171.207.215', NULL, '2025-04-20 15:58:01', '2025-04-20 15:58:01'),
(298, 1017, '20.171.207.215', NULL, '2025-04-20 15:58:03', '2025-04-20 15:58:03'),
(299, 1018, '20.171.207.215', NULL, '2025-04-20 15:58:04', '2025-04-20 15:58:04'),
(300, 1019, '20.171.207.215', NULL, '2025-04-20 15:58:06', '2025-04-20 15:58:06'),
(301, 1015, '20.171.207.215', NULL, '2025-04-20 15:58:07', '2025-04-20 15:58:07'),
(302, 1021, '20.171.207.215', NULL, '2025-04-20 15:58:51', '2025-04-20 15:58:51'),
(303, 1022, '20.171.207.215', NULL, '2025-04-20 15:58:54', '2025-04-20 15:58:54'),
(304, 1012, '20.171.207.215', NULL, '2025-04-20 15:58:56', '2025-04-20 15:58:56'),
(305, 1014, '20.171.207.215', NULL, '2025-04-20 15:58:58', '2025-04-20 15:58:58'),
(306, 1020, '20.171.207.215', NULL, '2025-04-20 15:58:59', '2025-04-20 15:58:59'),
(307, 1013, '20.171.207.215', NULL, '2025-04-20 15:59:06', '2025-04-20 15:59:06'),
(308, 1005, '31.141.247.57', '/', '2025-04-20 23:17:00', '2025-04-20 23:17:00'),
(309, 1005, '213.125.47.114', '/', '2025-04-20 23:46:22', '2025-04-20 23:46:22'),
(310, 1004, '213.125.47.114', '/', '2025-04-20 23:46:28', '2025-04-20 23:46:28'),
(311, 1012, '92.44.25.62', '/', '2025-04-21 03:36:47', '2025-04-21 03:36:47'),
(312, 1016, '92.44.25.62', '/', '2025-04-21 03:40:02', '2025-04-21 03:40:02'),
(313, 1005, '78.173.94.231', '/', '2025-04-21 05:53:54', '2025-04-21 05:53:54'),
(314, 1021, '185.209.196.152', '/', '2025-04-21 06:45:41', '2025-04-21 06:45:41'),
(315, 1018, '188.132.248.71', '/', '2025-04-21 06:52:25', '2025-04-21 06:52:25'),
(316, 1011, '188.132.248.71', '/', '2025-04-21 06:53:14', '2025-04-21 06:53:14'),
(317, 1015, '78.173.94.231', '/', '2025-04-21 07:08:25', '2025-04-21 07:08:25'),
(318, 1022, '188.132.138.107', '/', '2025-04-21 12:31:46', '2025-04-21 12:31:46'),
(319, 1009, '38.10.71.12', '/', '2025-04-21 12:48:25', '2025-04-21 12:48:25'),
(320, 1012, '46.1.139.239', '/', '2025-04-21 14:54:35', '2025-04-21 14:54:35'),
(321, 1012, '170.106.110.146', NULL, '2025-04-21 18:53:38', '2025-04-21 18:53:38'),
(322, 1009, '49.51.183.15', NULL, '2025-04-21 19:55:24', '2025-04-21 19:55:24'),
(323, 1023, '46.2.70.119', '/', '2025-04-21 20:47:17', '2025-04-21 20:47:17'),
(324, 1020, '46.2.70.119', '/', '2025-04-21 20:53:31', '2025-04-21 20:53:31'),
(325, 1012, '185.209.196.152', '/', '2025-04-22 02:54:37', '2025-04-22 02:54:37'),
(326, 1022, '5.255.231.24', NULL, '2025-04-22 04:11:01', '2025-04-22 04:11:01'),
(327, 1021, '87.250.224.115', NULL, '2025-04-22 04:11:01', '2025-04-22 04:11:01'),
(328, 1012, '5.255.231.30', NULL, '2025-04-22 04:11:02', '2025-04-22 04:11:02'),
(329, 1017, '213.180.203.79', NULL, '2025-04-22 04:11:03', '2025-04-22 04:11:03'),
(330, 1019, '87.250.224.115', NULL, '2025-04-22 04:11:07', '2025-04-22 04:11:07'),
(331, 1023, '87.250.224.224', NULL, '2025-04-22 04:14:56', '2025-04-22 04:14:56'),
(332, 1015, '5.255.231.147', NULL, '2025-04-22 04:14:57', '2025-04-22 04:14:57'),
(333, 1018, '95.108.213.190', NULL, '2025-04-22 04:15:09', '2025-04-22 04:15:09'),
(334, 1009, '5.255.231.30', NULL, '2025-04-22 04:15:10', '2025-04-22 04:15:10'),
(335, 1020, '87.250.224.102', NULL, '2025-04-22 04:15:23', '2025-04-22 04:15:23'),
(336, 1016, '5.255.231.179', NULL, '2025-04-22 04:15:28', '2025-04-22 04:15:28'),
(337, 1017, '213.180.203.72', NULL, '2025-04-22 04:17:16', '2025-04-22 04:17:16'),
(338, 1015, '87.250.224.115', NULL, '2025-04-22 04:18:44', '2025-04-22 04:18:44'),
(339, 1008, '5.255.231.24', NULL, '2025-04-22 04:20:32', '2025-04-22 04:20:32'),
(340, 1013, '87.250.224.115', NULL, '2025-04-22 04:20:32', '2025-04-22 04:20:32'),
(341, 1006, '95.108.213.190', NULL, '2025-04-22 04:20:33', '2025-04-22 04:20:33'),
(342, 1019, '95.108.213.205', NULL, '2025-04-22 04:21:34', '2025-04-22 04:21:34'),
(343, 1023, '213.180.203.72', NULL, '2025-04-22 04:21:36', '2025-04-22 04:21:36'),
(344, 1016, '87.250.224.102', NULL, '2025-04-22 04:22:01', '2025-04-22 04:22:01'),
(345, 1018, '87.250.224.115', NULL, '2025-04-22 04:22:41', '2025-04-22 04:22:41'),
(346, 1009, '5.255.231.147', NULL, '2025-04-22 04:23:54', '2025-04-22 04:23:54'),
(347, 1004, '87.250.224.115', NULL, '2025-04-22 04:24:31', '2025-04-22 04:24:31'),
(348, 1006, '87.250.224.102', NULL, '2025-04-22 04:24:32', '2025-04-22 04:24:32'),
(349, 1003, '213.180.203.79', NULL, '2025-04-22 04:24:33', '2025-04-22 04:24:33'),
(350, 1003, '5.255.231.30', NULL, '2025-04-22 04:28:42', '2025-04-22 04:28:42'),
(351, 1011, '213.180.203.79', NULL, '2025-04-22 04:28:45', '2025-04-22 04:28:45'),
(352, 1007, '5.255.231.179', NULL, '2025-04-22 04:29:32', '2025-04-22 04:29:32'),
(353, 1007, '95.108.213.205', NULL, '2025-04-22 04:34:28', '2025-04-22 04:34:28'),
(354, 1007, '149.0.16.66', '/', '2025-04-22 08:34:43', '2025-04-22 08:34:43'),
(355, 1023, '88.243.136.57', '/', '2025-04-22 11:15:11', '2025-04-22 11:15:11'),
(356, 1016, '5.177.193.242', '/', '2025-04-22 11:47:06', '2025-04-22 11:47:06'),
(357, 1018, '176.33.103.109', '/', '2025-04-22 11:54:34', '2025-04-22 11:54:34'),
(358, 1007, '176.33.103.109', '/', '2025-04-22 12:07:03', '2025-04-22 12:07:03'),
(359, 1007, '31.13.127.19', NULL, '2025-04-22 12:07:41', '2025-04-22 12:07:41'),
(360, 1007, '31.13.127.16', NULL, '2025-04-22 12:07:45', '2025-04-22 12:07:45'),
(361, 1007, '31.13.127.2', NULL, '2025-04-22 12:07:46', '2025-04-22 12:07:46'),
(362, 1007, '31.13.127.9', NULL, '2025-04-22 12:07:58', '2025-04-22 12:07:58'),
(363, 1007, '173.252.107.10', NULL, '2025-04-22 12:08:01', '2025-04-22 12:08:01'),
(364, 1023, '176.33.103.109', '/', '2025-04-22 12:23:06', '2025-04-22 12:23:06'),
(365, 1020, '46.197.71.88', '/', '2025-04-22 12:46:55', '2025-04-22 12:46:55'),
(366, 1007, '173.252.83.116', NULL, '2025-04-22 15:55:54', '2025-04-22 15:55:54'),
(367, 1018, '185.209.196.152', '/', '2025-04-23 01:49:40', '2025-04-23 01:49:40'),
(368, 1015, '185.209.196.152', '/', '2025-04-23 06:18:01', '2025-04-23 06:18:01'),
(369, 1012, '95.70.229.246', '/', '2025-04-23 09:38:16', '2025-04-23 09:38:16'),
(370, 1020, '43.135.135.57', NULL, '2025-04-23 12:31:36', '2025-04-23 12:31:36'),
(371, 1020, '176.33.103.109', '/', '2025-04-23 14:16:08', '2025-04-23 14:16:08'),
(372, 1023, '176.33.103.109', '/', '2025-04-23 14:18:35', '2025-04-23 14:18:35'),
(373, 1022, '176.33.103.109', '/', '2025-04-23 14:25:47', '2025-04-23 14:25:47'),
(374, 1003, '46.196.83.9', '/', '2025-04-23 14:43:11', '2025-04-23 14:43:11'),
(375, 1008, '5.199.130.245', '/', '2025-04-23 15:05:04', '2025-04-23 15:05:04'),
(376, 1012, '5.199.130.245', '/', '2025-04-23 15:06:50', '2025-04-23 15:06:50'),
(377, 1021, '5.199.130.245', '/', '2025-04-23 15:12:46', '2025-04-23 15:12:46'),
(378, 1012, '149.86.128.18', '/', '2025-04-23 15:23:48', '2025-04-23 15:23:48'),
(379, 1003, '109.228.198.137', '/', '2025-04-23 15:31:45', '2025-04-23 15:31:45'),
(380, 1012, '95.70.215.78', '/', '2025-04-24 02:04:09', '2025-04-24 02:04:09'),
(381, 1012, '78.173.17.214', '/', '2025-04-24 03:19:43', '2025-04-24 03:19:43'),
(382, 1008, '78.173.17.214', '/', '2025-04-24 03:23:42', '2025-04-24 03:23:42'),
(383, 1012, '85.105.134.86', '/', '2025-04-24 03:33:42', '2025-04-24 03:33:42'),
(384, 1023, '85.105.134.86', '/', '2025-04-24 03:34:09', '2025-04-24 03:34:09'),
(385, 1013, '85.105.134.86', '/', '2025-04-24 03:38:19', '2025-04-24 03:38:19'),
(386, 1021, '85.105.134.86', '/', '2025-04-24 03:39:06', '2025-04-24 03:39:06'),
(387, 1023, '88.235.223.81', '/', '2025-04-24 04:06:41', '2025-04-24 04:06:41'),
(388, 1016, '85.105.134.86', '/', '2025-04-24 04:24:57', '2025-04-24 04:24:57'),
(389, 1005, '85.105.134.86', '/', '2025-04-24 04:26:01', '2025-04-24 04:26:01'),
(390, 1003, '188.132.247.200', '/', '2025-04-24 04:37:43', '2025-04-24 04:37:43'),
(391, 1021, '185.19.153.101', '/', '2025-04-24 05:18:11', '2025-04-24 05:18:11'),
(392, 1012, '212.154.68.111', '/', '2025-04-24 05:33:11', '2025-04-24 05:33:11'),
(393, 1012, '78.187.168.220', '/', '2025-04-24 05:33:36', '2025-04-24 05:33:36'),
(394, 1012, '88.245.16.126', '/', '2025-04-24 05:44:53', '2025-04-24 05:44:53'),
(395, 1016, '31.171.154.52', '/', '2025-04-24 06:01:02', '2025-04-24 06:01:02'),
(396, 1012, '88.245.196.56', '/', '2025-04-24 06:07:25', '2025-04-24 06:07:25'),
(397, 1012, '78.189.51.213', '/', '2025-04-24 07:29:24', '2025-04-24 07:29:24'),
(398, 1008, '85.105.134.86', '/', '2025-04-24 07:38:39', '2025-04-24 07:38:39'),
(399, 1017, '207.46.13.87', NULL, '2025-04-24 07:48:10', '2025-04-24 07:48:10'),
(400, 1021, '207.46.13.87', NULL, '2025-04-24 07:48:18', '2025-04-24 07:48:18'),
(401, 1012, '40.77.167.57', NULL, '2025-04-24 07:48:26', '2025-04-24 07:48:26'),
(402, 1022, '40.77.167.57', NULL, '2025-04-24 07:48:28', '2025-04-24 07:48:28'),
(403, 1016, '40.77.167.57', NULL, '2025-04-24 07:48:35', '2025-04-24 07:48:35'),
(404, 1018, '40.77.167.57', NULL, '2025-04-24 07:48:38', '2025-04-24 07:48:38'),
(405, 1020, '40.77.167.57', NULL, '2025-04-24 07:48:41', '2025-04-24 07:48:41'),
(406, 1015, '40.77.167.57', NULL, '2025-04-24 07:48:43', '2025-04-24 07:48:43'),
(407, 1003, '40.77.167.131', NULL, '2025-04-24 07:48:56', '2025-04-24 07:48:56'),
(408, 1008, '40.77.167.131', NULL, '2025-04-24 07:48:58', '2025-04-24 07:48:58'),
(409, 1023, '40.77.167.131', NULL, '2025-04-24 07:48:59', '2025-04-24 07:48:59'),
(410, 1019, '40.77.167.131', NULL, '2025-04-24 07:49:03', '2025-04-24 07:49:03'),
(411, 1012, '178.241.11.180', '/', '2025-04-24 08:35:38', '2025-04-24 08:35:38'),
(412, 1014, '185.155.148.252', '/', '2025-04-24 12:06:54', '2025-04-24 12:06:54'),
(413, 1023, '38.10.71.12', '/', '2025-04-24 12:55:57', '2025-04-24 12:55:57'),
(414, 1023, '66.249.81.199', NULL, '2025-04-24 12:56:01', '2025-04-24 12:56:01'),
(415, 1023, '66.102.9.97', NULL, '2025-04-24 12:56:03', '2025-04-24 12:56:03'),
(416, 1023, '66.249.88.47', NULL, '2025-04-24 12:56:04', '2025-04-24 12:56:04'),
(417, 1017, '176.240.124.49', '/', '2025-04-24 13:32:22', '2025-04-24 13:32:22'),
(418, 1014, '31.223.74.207', '/', '2025-04-24 13:32:54', '2025-04-24 13:32:54'),
(419, 1017, '176.232.236.129', '/', '2025-04-24 22:17:17', '2025-04-24 22:17:17'),
(420, 1023, '176.232.236.129', '/', '2025-04-24 22:17:50', '2025-04-24 22:17:50'),
(421, 1014, '176.41.173.39', '/', '2025-04-24 23:26:32', '2025-04-24 23:26:32'),
(422, 1003, '176.41.173.39', '/', '2025-04-24 23:27:23', '2025-04-24 23:27:23'),
(423, 1012, '94.54.148.179', '/', '2025-04-25 00:14:42', '2025-04-25 00:14:42'),
(424, 1023, '159.146.64.177', '/', '2025-04-25 00:34:07', '2025-04-25 00:34:07'),
(425, 1017, '78.190.159.106', '/', '2025-04-25 01:01:50', '2025-04-25 01:01:50'),
(426, 1012, '95.12.121.127', '/', '2025-04-25 01:02:05', '2025-04-25 01:02:05'),
(427, 1017, '188.119.23.107', '/', '2025-04-25 01:02:09', '2025-04-25 01:02:09'),
(428, 1014, '176.220.217.239', '/', '2025-04-25 01:02:17', '2025-04-25 01:02:17'),
(429, 1014, '78.180.8.36', '/', '2025-04-25 01:02:33', '2025-04-25 01:02:33'),
(430, 1019, '31.141.247.57', '/', '2025-04-25 01:02:54', '2025-04-25 01:02:54'),
(431, 1017, '104.28.216.174', '/', '2025-04-25 01:03:22', '2025-04-25 01:03:22'),
(432, 1006, '109.228.210.62', '/', '2025-04-25 01:04:33', '2025-04-25 01:04:33'),
(433, 1021, '78.161.135.231', '/', '2025-04-25 01:05:40', '2025-04-25 01:05:40'),
(434, 1014, '46.155.84.58', '/', '2025-04-25 01:05:43', '2025-04-25 01:05:43'),
(435, 1023, '78.174.221.201', '/', '2025-04-25 01:06:38', '2025-04-25 01:06:38'),
(436, 1014, '95.173.234.246', '/', '2025-04-25 01:06:49', '2025-04-25 01:06:49'),
(437, 1006, '155.223.53.110', '/', '2025-04-25 01:07:13', '2025-04-25 01:07:13'),
(438, 1006, '185.104.22.70', '/', '2025-04-25 01:07:37', '2025-04-25 01:07:37'),
(439, 1021, '159.146.81.160', '/', '2025-04-25 01:07:53', '2025-04-25 01:07:53'),
(440, 1012, '88.255.135.162', '/', '2025-04-25 01:08:22', '2025-04-25 01:08:22'),
(441, 1022, '88.229.201.119', '/', '2025-04-25 01:09:12', '2025-04-25 01:09:12'),
(442, 1023, '88.255.135.162', '/', '2025-04-25 01:09:36', '2025-04-25 01:09:36'),
(443, 1017, '88.241.178.175', '/', '2025-04-25 01:09:39', '2025-04-25 01:09:39'),
(444, 1018, '88.225.219.96', '/', '2025-04-25 01:10:56', '2025-04-25 01:10:56'),
(445, 1022, '31.143.210.214', '/', '2025-04-25 01:11:24', '2025-04-25 01:11:24'),
(446, 1021, '85.105.86.218', '/', '2025-04-25 01:11:53', '2025-04-25 01:11:53'),
(447, 1012, '151.135.72.38', '/', '2025-04-25 01:13:24', '2025-04-25 01:13:24'),
(448, 1020, '95.70.246.175', '/', '2025-04-25 01:13:29', '2025-04-25 01:13:29'),
(449, 1014, '207.46.13.17', NULL, '2025-04-25 01:13:42', '2025-04-25 01:13:42'),
(450, 1006, '40.77.167.4', NULL, '2025-04-25 01:14:08', '2025-04-25 01:14:08'),
(451, 1006, '176.220.217.239', '/', '2025-04-25 01:14:48', '2025-04-25 01:14:48'),
(452, 1017, '78.175.229.15', '/', '2025-04-25 01:15:33', '2025-04-25 01:15:33'),
(453, 1017, '146.19.141.21', '/', '2025-04-25 01:16:13', '2025-04-25 01:16:13'),
(454, 1023, '78.186.131.195', '/', '2025-04-25 01:17:07', '2025-04-25 01:17:07'),
(455, 1014, '146.19.141.21', '/', '2025-04-25 01:17:19', '2025-04-25 01:17:19'),
(456, 1006, '46.221.40.187', '/', '2025-04-25 01:17:29', '2025-04-25 01:17:29'),
(457, 1014, '78.174.214.231', '/', '2025-04-25 01:18:01', '2025-04-25 01:18:01'),
(458, 1012, '176.41.180.227', '/', '2025-04-25 01:18:16', '2025-04-25 01:18:16'),
(459, 1014, '31.223.14.151', '/', '2025-04-25 01:19:29', '2025-04-25 01:19:29'),
(460, 1014, '5.176.130.89', '/', '2025-04-25 01:20:41', '2025-04-25 01:20:41'),
(461, 1023, '159.146.79.130', '/', '2025-04-25 01:20:46', '2025-04-25 01:20:46'),
(462, 1012, '95.70.254.231', '/', '2025-04-25 01:20:51', '2025-04-25 01:20:51'),
(463, 1014, '212.156.31.170', '/', '2025-04-25 01:22:31', '2025-04-25 01:22:31'),
(464, 1014, '94.235.255.159', '/', '2025-04-25 01:25:00', '2025-04-25 01:25:00'),
(465, 1017, '5.176.35.140', '/', '2025-04-25 01:27:40', '2025-04-25 01:27:40'),
(466, 1014, '87.250.224.14', NULL, '2025-04-25 01:27:51', '2025-04-25 01:27:51'),
(467, 1013, '88.231.170.179', '/', '2025-04-25 01:28:15', '2025-04-25 01:28:15'),
(468, 1014, '176.40.123.116', '/', '2025-04-25 01:29:20', '2025-04-25 01:29:20'),
(469, 1022, '31.223.77.205', '/', '2025-04-25 01:29:52', '2025-04-25 01:29:52'),
(470, 1023, '151.250.62.143', '/', '2025-04-25 01:31:25', '2025-04-25 01:31:25'),
(471, 1016, '149.140.132.126', '/', '2025-04-25 01:32:24', '2025-04-25 01:32:24'),
(472, 1020, '188.132.136.208', '/', '2025-04-25 01:34:39', '2025-04-25 01:34:39'),
(473, 1017, '88.230.78.187', '/', '2025-04-25 01:35:38', '2025-04-25 01:35:38'),
(474, 1014, '149.140.132.126', '/', '2025-04-25 01:36:21', '2025-04-25 01:36:21'),
(475, 1006, '85.101.230.231', '/', '2025-04-25 01:37:48', '2025-04-25 01:37:48'),
(476, 1017, '5.229.64.140', '/', '2025-04-25 01:38:53', '2025-04-25 01:38:53'),
(477, 1012, '217.131.125.15', '/', '2025-04-25 01:41:47', '2025-04-25 01:41:47'),
(478, 1023, '217.131.125.15', '/', '2025-04-25 01:42:30', '2025-04-25 01:42:30'),
(479, 1023, '31.143.225.44', '/', '2025-04-25 01:42:49', '2025-04-25 01:42:49'),
(480, 1006, '176.220.167.52', NULL, '2025-04-25 01:43:02', '2025-04-25 01:43:02'),
(481, 1017, '78.180.53.45', '/', '2025-04-25 01:46:57', '2025-04-25 01:46:57'),
(482, 1006, '88.214.42.62', '/', '2025-04-25 01:49:22', '2025-04-25 01:49:22'),
(483, 1006, '78.187.127.179', '/', '2025-04-25 01:50:49', '2025-04-25 01:50:49'),
(484, 1017, '193.42.103.158', '/', '2025-04-25 01:53:25', '2025-04-25 01:53:25'),
(485, 1017, '151.135.93.28', '/', '2025-04-25 01:55:49', '2025-04-25 01:55:49'),
(486, 1014, '176.240.29.231', '/', '2025-04-25 01:56:22', '2025-04-25 01:56:22'),
(487, 1023, '176.240.29.231', '/', '2025-04-25 01:57:20', '2025-04-25 01:57:20'),
(488, 1022, '95.7.2.31', '/', '2025-04-25 01:57:42', '2025-04-25 01:57:42'),
(489, 1017, '195.33.247.233', '/', '2025-04-25 01:58:10', '2025-04-25 01:58:10'),
(490, 1014, '195.33.247.233', '/', '2025-04-25 01:58:46', '2025-04-25 01:58:46'),
(491, 1006, '95.10.177.71', '/', '2025-04-25 01:59:31', '2025-04-25 01:59:31'),
(492, 1014, '92.44.185.68', '/', '2025-04-25 02:01:54', '2025-04-25 02:01:54'),
(493, 1017, '212.252.117.54', '/', '2025-04-25 02:05:26', '2025-04-25 02:05:26'),
(494, 1010, '88.245.197.122', '/', '2025-04-25 02:12:27', '2025-04-25 02:12:27'),
(495, 1014, '78.186.14.39', '/', '2025-04-25 02:13:05', '2025-04-25 02:13:05'),
(496, 1022, '46.104.5.51', '/', '2025-04-25 02:18:45', '2025-04-25 02:18:45'),
(497, 1023, '46.104.5.51', '/', '2025-04-25 02:19:23', '2025-04-25 02:19:23'),
(498, 1014, '176.88.38.181', '/', '2025-04-25 02:20:06', '2025-04-25 02:20:06'),
(499, 1022, '212.252.137.247', '/', '2025-04-25 02:21:28', '2025-04-25 02:21:28'),
(500, 1016, '176.88.38.181', '/', '2025-04-25 02:21:28', '2025-04-25 02:21:28'),
(501, 1014, '81.215.166.217', '/', '2025-04-25 02:23:52', '2025-04-25 02:23:52'),
(502, 1019, '195.58.63.115', '/', '2025-04-25 02:27:48', '2025-04-25 02:27:48'),
(503, 1022, '31.155.180.4', '/', '2025-04-25 02:29:56', '2025-04-25 02:29:56'),
(504, 1012, '31.223.87.41', '/', '2025-04-25 02:29:57', '2025-04-25 02:29:57'),
(505, 1014, '159.146.51.205', '/', '2025-04-25 02:31:41', '2025-04-25 02:31:41'),
(506, 1018, '176.235.84.134', '/', '2025-04-25 02:37:35', '2025-04-25 02:37:35'),
(507, 1020, '88.230.4.95', '/', '2025-04-25 02:41:52', '2025-04-25 02:41:52'),
(508, 1014, '31.223.3.100', '/', '2025-04-25 02:44:39', '2025-04-25 02:44:39'),
(509, 1017, '159.146.15.242', '/', '2025-04-25 02:46:36', '2025-04-25 02:46:36'),
(510, 1012, '185.118.176.162', '/', '2025-04-25 02:51:59', '2025-04-25 02:51:59'),
(511, 1022, '176.33.73.52', '/', '2025-04-25 02:56:39', '2025-04-25 02:56:39'),
(512, 1014, '176.88.20.21', '/', '2025-04-25 02:56:45', '2025-04-25 02:56:45'),
(513, 1017, '24.133.18.36', '/', '2025-04-25 03:06:11', '2025-04-25 03:06:11'),
(514, 1020, '104.28.248.174', '/', '2025-04-25 03:07:17', '2025-04-25 03:07:17'),
(515, 1004, '46.1.253.187', '/', '2025-04-25 03:08:44', '2025-04-25 03:08:44'),
(516, 1014, '157.55.39.53', NULL, '2025-04-25 03:10:56', '2025-04-25 03:10:56'),
(517, 1013, '157.55.39.53', NULL, '2025-04-25 03:11:18', '2025-04-25 03:11:18'),
(518, 1006, '176.220.26.153', '/', '2025-04-25 03:13:21', '2025-04-25 03:13:21'),
(519, 1012, '95.70.233.178', '/', '2025-04-25 03:16:31', '2025-04-25 03:16:31'),
(520, 1022, '95.70.233.178', '/', '2025-04-25 03:16:39', '2025-04-25 03:16:39'),
(521, 1014, '88.240.44.14', '/', '2025-04-25 03:28:51', '2025-04-25 03:28:51'),
(522, 1017, '95.15.74.85', '/', '2025-04-25 03:30:36', '2025-04-25 03:30:36'),
(523, 1012, '176.233.28.58', '/', '2025-04-25 03:35:28', '2025-04-25 03:35:28'),
(524, 1014, '46.221.196.107', '/', '2025-04-25 03:36:30', '2025-04-25 03:36:30'),
(525, 1017, '46.221.196.107', '/', '2025-04-25 03:37:00', '2025-04-25 03:37:00'),
(526, 1017, '95.70.208.136', '/', '2025-04-25 03:40:11', '2025-04-25 03:40:11'),
(527, 1023, '176.237.33.111', '/', '2025-04-25 03:40:39', '2025-04-25 03:40:39'),
(528, 1012, '88.247.60.227', '/', '2025-04-25 03:42:39', '2025-04-25 03:42:39'),
(529, 1017, '5.47.204.55', '/', '2025-04-25 03:47:13', '2025-04-25 03:47:13'),
(530, 1016, '31.223.119.190', '/', '2025-04-25 04:01:45', '2025-04-25 04:01:45'),
(531, 1014, '195.174.126.203', '/', '2025-04-25 04:04:05', '2025-04-25 04:04:05'),
(532, 1022, '24.133.65.71', '/', '2025-04-25 04:16:17', '2025-04-25 04:16:17'),
(533, 1022, '212.125.4.16', '/', '2025-04-25 04:17:49', '2025-04-25 04:17:49'),
(534, 1017, '176.88.120.139', '/', '2025-04-25 04:18:52', '2025-04-25 04:18:52'),
(535, 1012, '37.130.68.215', '/', '2025-04-25 04:35:46', '2025-04-25 04:35:46'),
(536, 1014, '212.156.95.26', '/', '2025-04-25 04:46:59', '2025-04-25 04:46:59'),
(537, 1014, '185.237.81.172', '/', '2025-04-25 04:50:31', '2025-04-25 04:50:31'),
(538, 1019, '185.237.81.172', '/', '2025-04-25 04:51:20', '2025-04-25 04:51:20'),
(539, 1014, '78.175.132.243', '/', '2025-04-25 04:56:16', '2025-04-25 04:56:16'),
(540, 1017, '109.228.201.19', '/', '2025-04-25 05:01:04', '2025-04-25 05:01:04'),
(541, 1017, '94.123.237.159', '/', '2025-04-25 05:07:21', '2025-04-25 05:07:21'),
(542, 1017, '88.236.175.239', '/', '2025-04-25 05:08:44', '2025-04-25 05:08:44'),
(543, 1012, '88.236.175.239', '/', '2025-04-25 05:11:28', '2025-04-25 05:11:28'),
(544, 1014, '176.30.243.23', '/', '2025-04-25 05:12:04', '2025-04-25 05:12:04'),
(545, 1017, '94.55.45.67', '/', '2025-04-25 05:14:17', '2025-04-25 05:14:17'),
(546, 1023, '88.236.175.239', '/', '2025-04-25 05:14:32', '2025-04-25 05:14:32'),
(547, 1016, '88.236.175.239', '/', '2025-04-25 05:17:29', '2025-04-25 05:17:29'),
(548, 1021, '88.236.175.239', '/', '2025-04-25 05:20:13', '2025-04-25 05:20:13'),
(549, 1020, '46.197.29.138', '/', '2025-04-25 05:20:15', '2025-04-25 05:20:15'),
(550, 1010, '88.236.175.239', '/', '2025-04-25 05:23:36', '2025-04-25 05:23:36'),
(551, 1023, '93.115.79.159', '/', '2025-04-25 05:24:21', '2025-04-25 05:24:21'),
(552, 1023, '176.42.21.1', '/', '2025-04-25 05:31:48', '2025-04-25 05:31:48'),
(553, 1022, '88.236.175.239', '/', '2025-04-25 05:37:52', '2025-04-25 05:37:52'),
(554, 1004, '88.236.175.239', '/', '2025-04-25 05:38:59', '2025-04-25 05:38:59'),
(555, 1018, '78.182.133.206', '/', '2025-04-25 05:40:16', '2025-04-25 05:40:16'),
(556, 1003, '88.236.175.239', '/', '2025-04-25 05:41:59', '2025-04-25 05:41:59'),
(557, 1014, '185.241.101.48', '/', '2025-04-25 05:42:51', '2025-04-25 05:42:51'),
(558, 1017, '185.144.79.200', '/', '2025-04-25 05:47:07', '2025-04-25 05:47:07'),
(559, 1020, '185.144.79.200', '/', '2025-04-25 05:47:16', '2025-04-25 05:47:16'),
(560, 1015, '88.236.175.239', '/', '2025-04-25 05:48:17', '2025-04-25 05:48:17'),
(561, 1022, '176.88.136.174', '/', '2025-04-25 05:50:42', '2025-04-25 05:50:42'),
(562, 1014, '176.227.61.191', '/', '2025-04-25 05:53:14', '2025-04-25 05:53:14'),
(563, 1014, '193.192.113.98', '/', '2025-04-25 06:01:16', '2025-04-25 06:01:16'),
(564, 1023, '159.146.102.140', '/', '2025-04-25 06:06:27', '2025-04-25 06:06:27'),
(565, 1017, '212.252.139.236', '/', '2025-04-25 06:07:39', '2025-04-25 06:07:39'),
(566, 1012, '92.44.184.235', '/', '2025-04-25 06:09:23', '2025-04-25 06:09:23'),
(567, 1023, '176.234.128.173', '/', '2025-04-25 06:17:06', '2025-04-25 06:17:06'),
(568, 1014, '176.88.78.49', '/', '2025-04-25 06:35:41', '2025-04-25 06:35:41'),
(569, 1023, '88.230.75.0', '/', '2025-04-25 06:35:52', '2025-04-25 06:35:52'),
(570, 1021, '178.247.27.30', '/', '2025-04-25 06:38:13', '2025-04-25 06:38:13'),
(571, 1016, '88.230.75.0', '/', '2025-04-25 06:38:59', '2025-04-25 06:38:59'),
(572, 1017, '104.28.248.174', '/', '2025-04-25 06:39:44', '2025-04-25 06:39:44'),
(573, 1014, '31.145.252.42', '/', '2025-04-25 06:44:11', '2025-04-25 06:44:11'),
(574, 1017, '31.145.252.42', '/', '2025-04-25 06:44:59', '2025-04-25 06:44:59'),
(575, 1023, '104.28.212.148', '/', '2025-04-25 06:45:16', '2025-04-25 06:45:16'),
(576, 1003, '95.5.19.108', '/', '2025-04-25 06:46:07', '2025-04-25 06:46:07'),
(577, 1023, '95.5.19.108', '/', '2025-04-25 06:50:29', '2025-04-25 06:50:29'),
(578, 1023, '176.88.133.201', '/', '2025-04-25 06:56:46', '2025-04-25 06:56:46'),
(579, 1018, '212.156.113.30', '/', '2025-04-25 06:59:15', '2025-04-25 06:59:15'),
(580, 1012, '5.25.161.39', '/', '2025-04-25 06:59:41', '2025-04-25 06:59:41'),
(581, 1014, '213.254.153.54', '/', '2025-04-25 07:05:37', '2025-04-25 07:05:37'),
(582, 1012, '95.70.248.9', '/', '2025-04-25 07:25:46', '2025-04-25 07:25:46'),
(583, 1023, '95.70.248.9', '/', '2025-04-25 07:31:27', '2025-04-25 07:31:27'),
(584, 1012, '85.105.223.124', '/', '2025-04-25 07:36:23', '2025-04-25 07:36:23'),
(585, 1017, '84.17.86.73', '/', '2025-04-25 07:41:53', '2025-04-25 07:41:53'),
(586, 1018, '159.146.29.84', '/', '2025-04-25 07:42:48', '2025-04-25 07:42:48'),
(587, 1014, '212.154.68.107', '/', '2025-04-25 08:10:42', '2025-04-25 08:10:42'),
(588, 1017, '94.110.226.176', '/', '2025-04-25 08:11:54', '2025-04-25 08:11:54'),
(589, 1012, '95.70.243.143', '/', '2025-04-25 08:13:39', '2025-04-25 08:13:39'),
(590, 1019, '5.25.161.39', '/', '2025-04-25 08:25:13', '2025-04-25 08:25:13'),
(591, 1014, '149.86.128.18', '/', '2025-04-25 08:37:21', '2025-04-25 08:37:21'),
(592, 1014, '88.243.64.102', '/', '2025-04-25 08:44:37', '2025-04-25 08:44:37'),
(593, 1014, '85.99.18.192', '/', '2025-04-25 08:46:29', '2025-04-25 08:46:29'),
(594, 1023, '151.250.142.106', '/', '2025-04-25 08:54:34', '2025-04-25 08:54:34'),
(595, 1017, '151.250.142.106', '/', '2025-04-25 08:56:46', '2025-04-25 08:56:46'),
(596, 1012, '78.190.213.63', '/', '2025-04-25 09:01:34', '2025-04-25 09:01:34'),
(597, 1003, '149.140.27.143', '/', '2025-04-25 09:04:24', '2025-04-25 09:04:24'),
(598, 1018, '81.215.68.166', '/', '2025-04-25 09:06:50', '2025-04-25 09:06:50'),
(599, 1020, '46.1.46.117', '/', '2025-04-25 09:25:37', '2025-04-25 09:25:37'),
(600, 1017, '78.166.223.29', '/', '2025-04-25 09:33:56', '2025-04-25 09:33:56'),
(601, 1023, '176.88.137.207', '/', '2025-04-25 09:36:31', '2025-04-25 09:36:31'),
(602, 1012, '46.197.28.255', '/', '2025-04-25 09:37:54', '2025-04-25 09:37:54'),
(603, 1014, '176.233.31.87', '/', '2025-04-25 09:53:56', '2025-04-25 09:53:56'),
(604, 1022, '217.131.120.224', '/', '2025-04-25 10:07:22', '2025-04-25 10:07:22'),
(605, 1023, '88.244.80.2', '/', '2025-04-25 10:17:07', '2025-04-25 10:17:07'),
(606, 1012, '88.240.44.14', '/', '2025-04-25 10:35:45', '2025-04-25 10:35:45'),
(607, 1012, '92.44.151.189', '/', '2025-04-25 10:57:21', '2025-04-25 10:57:21'),
(608, 1003, '92.44.151.189', '/', '2025-04-25 10:57:33', '2025-04-25 10:57:33'),
(609, 1022, '95.70.243.103', '/', '2025-04-25 11:03:08', '2025-04-25 11:03:08'),
(610, 1012, '85.103.108.133', '/', '2025-04-25 11:07:11', '2025-04-25 11:07:11'),
(611, 1018, '185.118.178.8', '/', '2025-04-25 11:15:06', '2025-04-25 11:15:06'),
(612, 1023, '88.238.210.187', '/', '2025-04-25 11:21:34', '2025-04-25 11:21:34'),
(613, 1022, '176.88.36.69', '/', '2025-04-25 11:26:32', '2025-04-25 11:26:32'),
(614, 1012, '78.163.72.89', '/', '2025-04-25 11:43:15', '2025-04-25 11:43:15'),
(615, 1022, '159.146.79.214', '/', '2025-04-25 12:23:51', '2025-04-25 12:23:51'),
(616, 1012, '185.233.246.67', '/', '2025-04-25 12:30:19', '2025-04-25 12:30:19'),
(617, 1012, '188.132.144.217', '/', '2025-04-25 12:31:32', '2025-04-25 12:31:32'),
(618, 1021, '78.180.26.87', '/', '2025-04-25 13:02:13', '2025-04-25 13:02:13'),
(619, 1020, '78.180.26.87', '/', '2025-04-25 13:02:36', '2025-04-25 13:02:36'),
(620, 1018, '85.99.19.205', '/', '2025-04-25 13:11:49', '2025-04-25 13:11:49'),
(621, 1018, '149.86.128.178', '/', '2025-04-25 13:17:25', '2025-04-25 13:17:25'),
(622, 1012, '176.42.133.48', '/', '2025-04-25 13:25:05', '2025-04-25 13:25:05'),
(623, 1019, '88.242.133.95', '/', '2025-04-25 13:29:29', '2025-04-25 13:29:29'),
(624, 1019, '66.249.81.197', NULL, '2025-04-25 13:29:34', '2025-04-25 13:29:34'),
(625, 1019, '66.249.81.199', NULL, '2025-04-25 13:29:35', '2025-04-25 13:29:35'),
(626, 1019, '66.249.88.47', NULL, '2025-04-25 13:29:35', '2025-04-25 13:29:35'),
(627, 1023, '88.236.118.181', '/', '2025-04-25 13:38:01', '2025-04-25 13:38:01'),
(628, 1018, '151.135.177.2', '/', '2025-04-25 13:58:37', '2025-04-25 13:58:37'),
(629, 1012, '185.253.121.57', '/', '2025-04-25 14:37:51', '2025-04-25 14:37:51'),
(630, 1012, '78.174.65.133', '/', '2025-04-25 14:46:03', '2025-04-25 14:46:03'),
(631, 1022, '83.135.176.229', '/', '2025-04-25 15:16:21', '2025-04-25 15:16:21');
INSERT INTO `item_views` (`id`, `item_id`, `ip`, `referrer`, `created_at`, `updated_at`) VALUES
(632, 1012, '188.3.197.45', '/', '2025-04-25 15:34:53', '2025-04-25 15:34:53'),
(633, 1018, '176.88.72.200', '/', '2025-04-25 15:47:11', '2025-04-25 15:47:11'),
(634, 1022, '81.214.32.81', '/', '2025-04-25 15:50:09', '2025-04-25 15:50:09'),
(635, 1003, '81.214.32.81', '/', '2025-04-25 15:53:13', '2025-04-25 15:53:13'),
(636, 1012, '81.214.32.81', '/', '2025-04-25 15:54:16', '2025-04-25 15:54:16'),
(637, 1023, '217.131.122.73', '/', '2025-04-25 16:11:09', '2025-04-25 16:11:09'),
(638, 1018, '24.133.81.62', '/', '2025-04-25 16:45:16', '2025-04-25 16:45:16'),
(639, 1017, '24.133.81.62', '/', '2025-04-25 16:45:50', '2025-04-25 16:45:50'),
(640, 1012, '185.188.129.254', '/', '2025-04-25 16:49:48', '2025-04-25 16:49:48'),
(641, 1009, '207.46.13.127', NULL, '2025-04-25 17:45:28', '2025-04-25 17:45:28'),
(642, 1021, '149.140.3.138', '/', '2025-04-25 19:15:26', '2025-04-25 19:15:26'),
(643, 1009, '78.174.218.40', '/', '2025-04-25 19:44:47', '2025-04-25 19:44:47'),
(644, 1009, '159.146.110.3', '/', '2025-04-25 20:26:37', '2025-04-25 20:26:37'),
(645, 1012, '85.153.239.180', '/', '2025-04-25 21:24:13', '2025-04-25 21:24:13'),
(646, 1010, '78.163.159.102', '/', '2025-04-25 22:46:19', '2025-04-25 22:46:19'),
(647, 1012, '159.146.68.229', '/', '2025-04-26 00:58:17', '2025-04-26 00:58:17'),
(648, 1012, '176.237.60.28', '/', '2025-04-26 01:07:08', '2025-04-26 01:07:08'),
(649, 1018, '46.104.47.34', '/', '2025-04-26 01:18:18', '2025-04-26 01:18:18'),
(650, 1017, '46.104.47.34', '/', '2025-04-26 01:18:38', '2025-04-26 01:18:38'),
(651, 1012, '188.119.58.188', '/', '2025-04-26 01:28:59', '2025-04-26 01:28:59'),
(652, 1012, '149.0.17.102', '/', '2025-04-26 01:32:56', '2025-04-26 01:32:56'),
(653, 1012, '217.140.214.232', '/', '2025-04-26 02:02:37', '2025-04-26 02:02:37'),
(654, 1003, '217.140.214.232', '/', '2025-04-26 02:05:55', '2025-04-26 02:05:55'),
(655, 1018, '217.140.214.232', '/', '2025-04-26 02:08:11', '2025-04-26 02:08:11'),
(656, 1022, '149.34.216.106', '/', '2025-04-26 05:02:57', '2025-04-26 05:02:57'),
(657, 1018, '88.236.126.148', '/', '2025-04-26 05:13:37', '2025-04-26 05:13:37'),
(658, 1012, '95.70.185.47', '/', '2025-04-26 05:53:03', '2025-04-26 05:53:03'),
(659, 1021, '31.171.153.68', '/', '2025-04-26 05:59:57', '2025-04-26 05:59:57'),
(660, 1018, '196.206.54.135', '/', '2025-04-26 06:33:12', '2025-04-26 06:33:12'),
(661, 1009, '95.70.215.219', '/', '2025-04-26 07:06:07', '2025-04-26 07:06:07'),
(662, 1023, '176.43.30.192', '/', '2025-04-26 07:27:44', '2025-04-26 07:27:44'),
(663, 1012, '40.77.167.18', NULL, '2025-04-26 07:32:46', '2025-04-26 07:32:46'),
(664, 1012, '78.163.159.102', '/', '2025-04-26 07:46:25', '2025-04-26 07:46:25'),
(665, 1006, '185.253.121.135', '/', '2025-04-29 07:49:01', '2025-04-29 07:49:01'),
(666, 1019, '78.173.21.209', '/', '2025-04-30 04:27:59', '2025-04-30 04:27:59'),
(667, 1023, '176.33.103.109', '/', '2025-04-30 09:45:29', '2025-04-30 09:45:29'),
(668, 1019, '176.33.103.109', '/', '2025-04-30 11:18:56', '2025-04-30 11:18:56'),
(669, 1021, '176.33.103.109', '/', '2025-04-30 11:19:27', '2025-04-30 11:19:27'),
(670, 1018, '176.33.103.109', '/', '2025-04-30 11:19:33', '2025-04-30 11:19:33'),
(671, 1017, '178.243.234.155', '/', '2025-04-30 16:02:52', '2025-04-30 16:02:52'),
(672, 1023, '178.243.234.155', '/', '2025-04-30 17:22:19', '2025-04-30 17:22:19'),
(673, 1019, '38.10.71.12', '/', '2025-05-01 01:38:28', '2025-05-01 01:38:28'),
(674, 1019, '88.236.120.86', '/', '2025-05-01 03:26:06', '2025-05-01 03:26:06'),
(675, 1003, '88.236.120.86', '/', '2025-05-01 03:27:05', '2025-05-01 03:27:05'),
(676, 1016, '88.254.2.57', '/', '2025-05-01 03:27:30', '2025-05-01 03:27:30'),
(677, 1010, '88.236.120.86', '/', '2025-05-01 03:38:32', '2025-05-01 03:38:32');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(21, 'default', '{\"uuid\":\"2f42fe4d-9aa5-45e4-81cf-9ef2a114748c\",\"displayName\":\"App\\\\Jobs\\\\SendPaymentConfirmationNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendPaymentConfirmationNotification\",\"command\":\"O:44:\\\"App\\\\Jobs\\\\SendPaymentConfirmationNotification\\\":1:{s:11:\\\"transaction\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:22:\\\"App\\\\Models\\\\Transaction\\\";s:2:\\\"id\\\";i:1068;s:9:\\\"relations\\\";a:6:{i:0;s:8:\\\"trxItems\\\";i:1;s:13:\\\"trxItems.item\\\";i:2;s:22:\\\"trxItems.item.category\\\";i:3;s:25:\\\"trxItems.item.subCategory\\\";i:4;s:4:\\\"user\\\";i:5;s:14:\\\"user.cartItems\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1746024807, 1746024807),
(22, 'default', '{\"uuid\":\"f9fae62d-46dc-43e4-abde-5138c0001b23\",\"displayName\":\"App\\\\Jobs\\\\SendPurchaseConfirmationNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendPurchaseConfirmationNotification\",\"command\":\"O:45:\\\"App\\\\Jobs\\\\SendPurchaseConfirmationNotification\\\":1:{s:8:\\\"purchase\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Purchase\\\";s:2:\\\"id\\\";i:1004;s:9:\\\"relations\\\";a:4:{i:0;s:4:\\\"item\\\";i:1;s:13:\\\"item.category\\\";i:2;s:16:\\\"item.subCategory\\\";i:3;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1746024807, 1746024807),
(23, 'default', '{\"uuid\":\"5116b354-5162-48a2-9c28-20e2b646237a\",\"displayName\":\"App\\\\Jobs\\\\SendPaymentConfirmationNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendPaymentConfirmationNotification\",\"command\":\"O:44:\\\"App\\\\Jobs\\\\SendPaymentConfirmationNotification\\\":1:{s:11:\\\"transaction\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:22:\\\"App\\\\Models\\\\Transaction\\\";s:2:\\\"id\\\";i:1069;s:9:\\\"relations\\\";a:6:{i:0;s:8:\\\"trxItems\\\";i:1;s:13:\\\"trxItems.item\\\";i:2;s:22:\\\"trxItems.item.category\\\";i:3;s:25:\\\"trxItems.item.subCategory\\\";i:4;s:4:\\\"user\\\";i:5;s:14:\\\"user.cartItems\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1746024854, 1746024854),
(24, 'default', '{\"uuid\":\"b3d1122b-fe21-491e-8c2d-e6fa0c3bc920\",\"displayName\":\"App\\\\Jobs\\\\SendPurchaseConfirmationNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendPurchaseConfirmationNotification\",\"command\":\"O:45:\\\"App\\\\Jobs\\\\SendPurchaseConfirmationNotification\\\":1:{s:8:\\\"purchase\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Purchase\\\";s:2:\\\"id\\\";i:1005;s:9:\\\"relations\\\";a:4:{i:0;s:4:\\\"item\\\";i:1;s:13:\\\"item.category\\\";i:2;s:16:\\\"item.subCategory\\\";i:3;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1746024854, 1746024854),
(25, 'default', '{\"uuid\":\"44e5f443-3700-44ee-8063-fddd7e1acfc9\",\"displayName\":\"App\\\\Jobs\\\\SendPurchaseConfirmationNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendPurchaseConfirmationNotification\",\"command\":\"O:45:\\\"App\\\\Jobs\\\\SendPurchaseConfirmationNotification\\\":1:{s:8:\\\"purchase\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Purchase\\\";s:2:\\\"id\\\";i:1006;s:9:\\\"relations\\\";a:4:{i:0;s:4:\\\"item\\\";i:1;s:13:\\\"item.category\\\";i:2;s:16:\\\"item.subCategory\\\";i:3;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1746024854, 1746024854),
(26, 'default', '{\"uuid\":\"845f96d4-b9a9-44ea-b55e-0beaef1932db\",\"displayName\":\"App\\\\Jobs\\\\SendPaymentConfirmationNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendPaymentConfirmationNotification\",\"command\":\"O:44:\\\"App\\\\Jobs\\\\SendPaymentConfirmationNotification\\\":1:{s:11:\\\"transaction\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:22:\\\"App\\\\Models\\\\Transaction\\\";s:2:\\\"id\\\";i:1073;s:9:\\\"relations\\\";a:6:{i:0;s:8:\\\"trxItems\\\";i:1;s:13:\\\"trxItems.item\\\";i:2;s:22:\\\"trxItems.item.category\\\";i:3;s:25:\\\"trxItems.item.subCategory\\\";i:4;s:4:\\\"user\\\";i:5;s:14:\\\"user.cartItems\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1746044155, 1746044155),
(27, 'default', '{\"uuid\":\"a899de33-922e-4dca-920e-800dbc8840f5\",\"displayName\":\"App\\\\Jobs\\\\SendPurchaseConfirmationNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendPurchaseConfirmationNotification\",\"command\":\"O:45:\\\"App\\\\Jobs\\\\SendPurchaseConfirmationNotification\\\":1:{s:8:\\\"purchase\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Purchase\\\";s:2:\\\"id\\\";i:1007;s:9:\\\"relations\\\";a:4:{i:0;s:4:\\\"item\\\";i:1;s:13:\\\"item.category\\\";i:2;s:16:\\\"item.subCategory\\\";i:3;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1746044155, 1746044155),
(28, 'default', '{\"uuid\":\"e8508097-091d-4081-8559-d1be86c2dbd8\",\"displayName\":\"App\\\\Jobs\\\\SendPaymentConfirmationNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendPaymentConfirmationNotification\",\"command\":\"O:44:\\\"App\\\\Jobs\\\\SendPaymentConfirmationNotification\\\":1:{s:11:\\\"transaction\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:22:\\\"App\\\\Models\\\\Transaction\\\";s:2:\\\"id\\\";i:1075;s:9:\\\"relations\\\";a:6:{i:0;s:8:\\\"trxItems\\\";i:1;s:13:\\\"trxItems.item\\\";i:2;s:22:\\\"trxItems.item.category\\\";i:3;s:25:\\\"trxItems.item.subCategory\\\";i:4;s:4:\\\"user\\\";i:5;s:14:\\\"user.cartItems\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1746046622, 1746046622),
(29, 'default', '{\"uuid\":\"306d1b8e-f52c-4f72-8dd8-985088b3ad75\",\"displayName\":\"App\\\\Jobs\\\\SendPurchaseConfirmationNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendPurchaseConfirmationNotification\",\"command\":\"O:45:\\\"App\\\\Jobs\\\\SendPurchaseConfirmationNotification\\\":1:{s:8:\\\"purchase\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Purchase\\\";s:2:\\\"id\\\";i:1008;s:9:\\\"relations\\\";a:4:{i:0;s:4:\\\"item\\\";i:1;s:13:\\\"item.category\\\";i:2;s:16:\\\"item.subCategory\\\";i:3;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1746046622, 1746046622);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kyc_verifications`
--

CREATE TABLE `kyc_verifications` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `document_type` enum('national_id','passport') NOT NULL,
  `document_number` varchar(30) NOT NULL,
  `documents` varchar(255) NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1:Pending 2:Approved 3:Rejected',
  `rejection_reason` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mail_templates`
--

CREATE TABLE `mail_templates` (
  `id` bigint UNSIGNED NOT NULL,
  `alias` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `shortcodes` longtext,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `mail_templates`
--

INSERT INTO `mail_templates` (`id`, `alias`, `name`, `subject`, `body`, `shortcodes`, `status`) VALUES
(1, 'password_reset', 'Reset Password', 'Reset Your Account Password', '<h2><strong>Hello!</strong></h2><p>You are receiving this email because we received a password reset request for your account, please click on the link below to reset your password.</p><p><a href=\"{{link}}\">{{link}}</a></p><p>This password reset link will expire in <strong>{{expiry_time}}</strong> minutes. If you did not request a password reset, no further action is required.</p><p>Regards,<br><strong>{{website_name}}</strong></p>', '[\"link\",\"expiry_time\",\"website_name\"]', 1),
(2, 'email_verification', 'Email Verification', 'Verify Email Address', '<h2>Hello!</h2><p>Please click on the link below to verify your email address.</p><p><a href=\"{{link}}\">{{link}}</a></p><p>If you did not create an account, no further action is required.</p><p>Regards,<br><strong>{{website_name}}</strong></p>', '[\"link\",\"website_name\"]', 1),
(3, 'kyc_verification_approved', 'KYC Verification Approved', 'Your KYC verification has been approved', '<h2>Hi, {{username}}</h2><p>We are pleased to inform you that your Know Your Customer (KYC) verification process has been successfully completed and approved. Your account is now fully verified and ready for use.</p><p>This verification process ensures the security and integrity of our platform, and we appreciate your cooperation throughout this process. With your KYC verification approved, you now have access to all features and functionalities of our platform without any restrictions.</p><p>Should you have any questions or require further assistance, please do not hesitate to contact our customer support team. We are here to help you with any queries you may have.</p><p>Thank you for choosing our platform. We look forward to serving you and providing you with an excellent user experience.</p><p>Best regards,<br><strong>{{website_name}}</strong></p>', '[\"username\",\"website_name\"]', 1),
(4, 'kyc_verification_rejected', 'KYC Verification Rejected', 'Your KYC verification has been rejected', '<h2>Hi, {{username}}</h2><p>We regret to inform you that your recent Know Your Customer (KYC) verification submission has been rejected. After a thorough review, we have determined that we are unable to approve your KYC verification at this time.</p><p>The reason for the rejection is as follows:&nbsp;<br>“ {{rejection_reason}} ”</p><p>We understand that this may be disappointing, and we apologize for any inconvenience this may cause. Please review the reason provided above to understand why your submission was not successful.</p><p>To address this issue and proceed with the verification process, we kindly request that you review the provided reason and take the necessary steps to rectify any discrepancies or issues. Once you have addressed the concerns, you may resubmit your KYC verification documents for further review.</p><p>If you have any questions or require assistance in understanding the rejection reason or the steps to take for resubmission, please don\'t hesitate to reach out to our customer support team. We are here to assist you throughout this process.</p><p>Thank you for your understanding and cooperation.</p><p>Best regards,<br><strong>{{website_name}}</strong></p>', '[\"username\",\"rejection_reason\",\"website_name\"]', 1),
(5, 'new_ticket', 'New Ticket', 'New Ticket [#{{ticket_id}}]', '<h2>Hi <strong>{{username}},</strong></h2><p>We trust this message finds you well. We want to inform you that a new support ticket has been created.</p><p>Here are the details of the ticket:</p><p><strong>Ticket ID:</strong> #{{ticket_id}}</p><p><strong>Category: </strong>{{category}}</p><p><strong>Date Created:</strong> {{date}}</p><p><strong>Brief Description of the Issue:</strong> {{subject}}<strong>.</strong></p><p>You can view the entire conversation and reply by following this link:<a href=\"{{link}}\"> {{link}}</a></p><p>We understand the importance of your concern and assure you that it\'s receiving our immediate attention. Our dedicated team will be reviewing your request and will provide updates, solutions, or further assistance as needed.</p><p>Should you have any additional information to share or any questions, feel free to log in to our support portal and contribute to the ongoing conversation about your ticket.</p><p>Thank you for giving us the opportunity to assist you.</p><p>Regards,<br><strong>{{website_name}}</strong></p>', '[\"username\",\"ticket_id\",\"subject\",\"category\",\"link\",\"date\",\"website_name\"]', 1),
(6, 'new_ticket_reply', 'New Ticket Reply', 'New reply on your ticket [#{{ticket_id}}]', '<h2>Hi <strong>{{username}},</strong></h2><p>We hope this message finds you well. We wanted to inform you that a new reply has been added to your support ticket #<strong>{{ticket_id}}</strong>. Our team has been working diligently to assist you.</p><p><strong>Reply Message:</strong></p><p>{{reply_message}}</p><p><strong>Reply date: </strong>{{date}}</p><p>You can view the entire conversation and reply by following this link:<a href=\"{{link}}\"> {{link}}</a></p><p>Thank you for your patience and cooperation as we work to resolve your issue.</p><p>Regards,&nbsp;<br><strong>{{website_name}}</strong></p>', '[\"username\",\"ticket_id\",\"reply_message\",\"link\",\"date\",\"website_name\"]', 1),
(7, 'buyer_item_update', 'Buyer Item Update', 'New Update ({{item_name}})', '<h2>Hi, {{username}}!</h2><p>We have released a new update for <strong>{{item_name}}, </strong>here is the details:</p><p><a href=\"{{item_link}}\"><strong>{{item_name}}</strong></a></p><p><a href=\"{{item_link}}\">{{item_preview_image}}</a></p><p><strong>View Item:</strong> <a href=\"{{item_link}}\">{{item_link}}</a></p><p>Regards,&nbsp;<br><strong>{{website_name}}</strong></p>', '[\"username\",\"item_name\",\"item_preview_image\",\"item_link\",\"website_name\"]', 1),
(8, 'subscriber_new_item', 'Subscriber New Item', 'New item has been published', '<h2>Hello!</h2><p>We want to let you know that we have published a new item, here are the details:</p><p><a href=\"{{item_link}}\"><strong>{{item_name}}</strong></a></p><p><a href=\"{{item_link}}\">{{item_preview_image}}</a></p><p><strong>View Item:</strong> <a href=\"{{item_link}}\">{{item_link}}</a></p><p>Regards,&nbsp;<br><strong>{{website_name}}</strong></p>', '[\"item_name\",\"item_preview_image\",\"item_link\",\"website_name\"]', 1),
(9, 'payment_confirmation', 'Payment Confirmation', 'Payment Confirmation [#{{transaction_id}}]', '<h2>Hi, {{username}}</h2><p>We hope this email finds you well. We are reaching out to confirm the successful payment for your recent transaction.</p><p><strong><u>Here are the details of your transaction:</u></strong></p><p><strong>Transaction ID:</strong> #{{transaction_id}}</p><p><strong>Payment Method:</strong> {{payment_method}}</p><p><strong>SubTotal:</strong> {{transaction_subtotal}}</p><p><strong>Fees:</strong> {{transaction_fees}}</p><p><strong>Total :</strong> {{transaction_total}}</p><p><strong>Date: </strong>{{transaction_date}}</p><p>Your payment has been processed successfully, and your transaction is now complete. You can view the transaction and print your invoice by clicking on the link below</p><p><a href=\"{{transaction_view_link}}\">{{transaction_view_link}}</a></p><p>If you have any questions or require further assistance, please don\'t hesitate to contact us. We are here to help.</p><p>Best regards,<br><strong>{{website_name}}</strong></p>', '[\"username\",\"transaction_id\",\"transaction_subtotal\",\"payment_method\",\"transaction_fees\",\"transaction_total\",\"transaction_date\",\"transaction_view_link\",\"website_name\"]', 1),
(10, 'purchase_confirmation', 'Purchase Confirmation', 'Your Purchase Confirmation ({{item_name}})', '<h2>Hi, {{username}}</h2><p>We are thrilled to inform you that your recent purchase has been successfully processed. Your satisfaction is our priority, and we are grateful for your trust in {{website_name}}.</p><p><strong><u>Here are the details of your purchase:</u></strong></p><p><a href=\"{{item_link}}\">{{item_preview_image}}</a></p><p><strong>Item Name: </strong><a href=\"{{item_link}}\">{{item_name}}</a></p><p><strong>Purchase Code: </strong>{{purchase_code}}</p><p><strong>Download Link: </strong><a href=\"{{download_link}}\">{{download_link}}</a></p><p>If you have any questions or require further assistance, please don\'t hesitate to contact us. We are here to help.</p><p>Best regards,<br><strong>{{website_name}}</strong></p>', '[\"username\",\"item_name\",\"item_preview_image\",\"item_link\",\"purchase_code\",\"download_link\",\"website_name\"]', 1),
(11, 'transaction_cancelled', 'Transaction Cancelled', 'Your transaction has been canceled [#{{transaction_id}}]', '<h2>Hi, {{username}}</h2><p>We hope this email finds you well. We are reaching out because your recent transaction has been canceled for the following reason:</p><p>--</p><p><i>{{cancellation_reason}}</i></p><p><i>--</i></p><p><strong><u>Here are the details of your transaction:</u></strong></p><p><strong>Transaction ID:</strong> #{{transaction_id}}</p><p><strong>Payment Method:</strong> {{payment_method}}</p><p><strong>SubTotal:</strong> {{transaction_subtotal}}</p><p><strong>Fees:</strong> {{transaction_fees}}</p><p><strong>Total:</strong> {{transaction_total}}</p><p><strong>Date: </strong>{{transaction_date}}</p><p><strong>View Link:</strong> <a href=\"{{transaction_view_link}}\">{{transaction_view_link}}</a></p><p>If you have any questions or require further assistance, please don\'t hesitate to contact us. We are here to help.</p><p>Best regards,<br><strong>{{website_name}}</strong></p>', '[\"username\",\"transaction_id\",\"transaction_subtotal\",\"payment_method\",\"transaction_fees\",\"transaction_total\",\"transaction_date\",\"transaction_view_link\",\"cancellation_reason\",\"website_name\"]', 1),
(12, 'item_comment_reply', 'Item Comment Reply', 'New reply to your comment on item \"{{item_name}}\"', '<h2>Hi, {{username}}</h2><p>You have a new reply to your comment on “<a href=\"{{item_link}}\">{{item_name}}</a>”</p><p>--</p><p><i>{{comment_reply}}</i></p><p>--</p><p><span style=\"background-color:rgb(255,255,255);color:rgb(34,34,34);\">You can reply by following this link</span><strong>:</strong> <a href=\"{{comment_link}}\">{{comment_link}}</a></p><p>Regards,&nbsp;<br><strong>{{website_name}}</strong></p>', '[\"username\",\"comment_reply\",\"item_name\",\"item_link\",\"comment_link\",\"website_name\"]', 1),
(13, 'refund_request_new_reply', 'Refund Request New Reply', 'New reply on your refund request for \"{{refund_item_name}}\"', '<h2>Hi, {{username}}</h2><p>You have a new reply on your refund request for “<strong>{{refund_item_name}}</strong>”&nbsp;</p><p>--</p><p><i>{{refund_reply}}</i></p><p>--</p><p><span style=\"background-color:rgb(255,255,255);color:rgb(34,34,34);\">You can view and reply by following this link</span><strong>:</strong> <a href=\"{{refund_link}}\">{{refund_link}}</a></p><p>Regards,&nbsp;<br><strong>{{website_name}}</strong></p>', '[\"username\",\"refund_id\",\"refund_item_name\",\"refund_reply\",\"refund_link\",\"website_name\"]', 1),
(14, 'refund_request_accepted', 'Refund Request Accepted', 'Your refund request for \"{{refund_item_name}}\" has been accepted', '<h2>Hi, {{username}}</h2><p>Your refund request for “<strong>{{refund_item_name}}</strong>” has been accepted and the full amount of <strong>{{refund_amount}}</strong> has been refunded to your {{website_name}} account.</p><p><span style=\"background-color:rgb(255,255,255);color:rgb(34,34,34);\">You can view the refund request by following this link</span><strong>:</strong> <a href=\"{{refund_link}}\">{{refund_link}}</a></p><p>Regards,&nbsp;<br><strong>{{website_name}}</strong></p>', '[\"username\",\"refund_id\",\"refund_item_name\",\"refund_amount\",\"refund_link\",\"website_name\"]', 1),
(15, 'refund_request_declined', 'Refund Request Declined', 'Your refund request for \"{{refund_item_name}}\" has been declined', '<h2>Hi, {{username}}</h2><p>Your refund request for “<strong>{{refund_item_name}}</strong>” has been declined</p><p>--</p><p><i>{{refund_decline_reason}}</i></p><p>--</p><p><span style=\"background-color:rgb(255,255,255);color:rgb(34,34,34);\">You can view the refund request by following this link</span><strong>:</strong> <a href=\"{{refund_link}}\">{{refund_link}}</a></p><p>Regards,&nbsp;<br><strong>{{website_name}}</strong></p>', '[\"username\",\"refund_id\",\"refund_item_name\",\"refund_decline_reason\",\"refund_link\",\"website_name\"]', 1),
(16, 'subscription_about_to_expire', 'Subscription About To Expire', 'Your subscription is about to expire', '<h2>Hi {{username}},</h2><p>We hope you\'re enjoying your experience on {{website_name}}. We wanted to remind you that your subscription is set to expire on <strong>{{expiry_date}}</strong>.</p><p>Don\'t miss out on continued access to our extensive library of assets and exclusive resources. To renew or upgrade your subscription, simply click the link below:</p><p><a href=\"{{renewing_link}}\">{{renewing_link}}</a></p><p>We look forward to continuing to support you with the best resources and tools.</p><p>Best regards,<br><strong>{{website_name}}</strong></p>', '[\"username\",\"expiry_date\",\"renewing_link\",\"website_name\"]', 1),
(17, 'subscription_expired', 'Subscription Expired', 'Your subscription has been expired', '<h2>Hi {{username}},</h2><p>We wanted to inform you that your subscription expired on <strong>{{expiry_date}}</strong>. Unfortunately, you no longer have access to our exclusive library of assets.</p><p>But don\'t worry—you can easily renew or upgrade your subscription to regain access to all the resources you love! Just click the link below to renew:</p><p><a href=\"{{renewing_link}}\">{{renewing_link}}</a></p><p>We hope to see you back soon!</p><p>Best regards,<br><strong>{{website_name}}</strong></p>', '[\"username\",\"expiry_date\",\"renewing_link\",\"website_name\"]', 1),
(18, 'admin_kyc_pending', 'Admin KYC Pending', 'KYC Verification Request [#{{kyc_verification_id}}]', '<h2>Hello!</h2><p>You have a new KYC Verification Request submitted by <strong>{{username}} </strong>and the ID is #<strong>{{kyc_verification_id}}</strong></p><p><a href=\"{{review_link}}\">{{review_link}}</a></p><p>Best regards,<br><strong>{{website_name}}</strong></p>', '[\"username\",\"kyc_verification_id\",\"review_link\",\"website_name\"]', 1),
(19, 'admin_transaction_pending', 'Admin Transaction Pending', 'New Pending Transaction [#{{transaction_id}}]', '<h2>Hello!</h2><p>You have a new pending transaction made by <strong>{{username}}</strong>.&nbsp;</p><p><strong><u>Here are the details:</u></strong></p><p><strong>Transaction ID:</strong> #{{transaction_id}}</p><p><strong>Payment Method:</strong> {{payment_method}}</p><p><strong>SubTotal:</strong> {{transaction_subtotal}}</p><p><strong>Fees:</strong> {{transaction_fees}}</p><p><strong>Total:</strong> {{transaction_total}}</p><p><strong>Date: </strong>{{transaction_date}}</p><p><strong>Review Link: </strong><a href=\"{{review_link}}\">{{review_link}}</a></p><p>Best regards,<br><strong>{{website_name}}</strong></p>', '[\"username\",\"transaction_id\",\"transaction_subtotal\",\"transaction_fees\",\"transaction_total\",\"payment_method\",\"transaction_date\",\"review_link\",\"website_name\"]', 1),
(20, 'admin_new_ticket', 'Admin New Ticket', 'New Ticket [#{{ticket_id}}]', '<h2>Hello!</h2><p>A new ticket has been created by <strong>{{username}}</strong>. Here are the details:</p><p><strong>Ticket ID:</strong> #{{ticket_id}}</p><p><strong>Category: </strong>{{category}}</p><p><strong>Date Created:</strong> {{date}}</p><p><strong>Brief Description of the Issue:</strong> {{subject}}<strong>.</strong></p><p>You can view the entire conversation and reply by following this link:<a href=\"{{link}}\"> {{link}}</a></p><p>The department agents and the admins have been informed, action will be taken and assistance will be provided.</p><p>Regards,<br><strong>{{website_name}}</strong></p>', '[\"username\",\"ticket_id\",\"subject\",\"category\",\"link\",\"date\",\"website_name\"]', 1),
(21, 'admin_new_ticket_reply', 'Admin New Ticket Reply', 'New Ticket Reply [#{{ticket_id}}]', '<h2>Hello!</h2><p>A new reply by<strong> {{username}}</strong> has been added to the ticket #<strong>{{ticket_id}}</strong>.</p><p><strong>Reply message:</strong></p><p>{{reply_message}}</p><p><strong>Reply date: </strong>{{date}}</p><p>You can view the entire conversation and reply by following this link:<a href=\"{{link}}\"> {{link}}</a></p><p>The department agents and the admins have been informed, action will be taken and assistance will be provided</p><p>Regards,&nbsp;<br><strong>{{website_name}}</strong></p>', '[\"username\",\"ticket_id\",\"reply_message\",\"link\",\"date\",\"website_name\"]', 1),
(22, 'admin_item_comment', 'Admin Item Comment ', 'New comment on your item \"{{item_name}}\" from {{username}}', '<h2>Hello!</h2><p>You have a new comment on your item “<a href=\"{{item_link}}\">{{item_name}}</a>” from {{username}}</p><p>--</p><p><i>{{comment}}</i></p><p>--</p><p><span style=\"background-color:rgb(255,255,255);color:rgb(34,34,34);\">You can reply by following this link</span><strong>:</strong> <a href=\"{{comment_link}}\">{{comment_link}}</a></p><p>Regards,&nbsp;<br><strong>{{website_name}}</strong></p>', '[\"username\",\"comment\",\"item_name\",\"item_link\",\"comment_link\",\"website_name\"]', 1),
(23, 'admin_item_comment_reply', 'Admin Item Comment Reply', 'New comment reply on your item \"{{item_name}}\" from {{username}}', '<h2>Hello!</h2><p>You have a new comment reply on your item “<a href=\"{{item_link}}\">{{item_name}}</a>” from {{username}}</p><p>--</p><p><i>{{comment_reply}}</i></p><p>--</p><p><span style=\"background-color:rgb(255,255,255);color:rgb(34,34,34);\">You can reply by following this link</span><strong>:</strong> <a href=\"{{comment_link}}\">{{comment_link}}</a></p><p>Regards,&nbsp;<br><strong>{{website_name}}</strong></p>', '[\"username\",\"comment_reply\",\"item_name\",\"item_link\",\"comment_link\",\"website_name\"]', 1),
(24, 'admin_item_review', 'Admin Item Review ', 'New review on your item \"{{item_name}}\" from {{username}}', '<h2>Hello!</h2><p>You have a new review on your item “<a href=\"{{item_link}}\">{{item_name}}</a>” from {{username}}</p><p><strong>Stars:</strong> {{stars}}</p><p>--</p><p><i>{{review}}</i></p><p>--</p><p>Review link: <a href=\"{{review_link}}\">{{review_link}}</a></p><p>Regards,&nbsp;<br><strong>{{website_name}}</strong></p>', '[\"username\",\"stars\",\"review\",\"item_name\",\"item_link\",\"review_link\",\"website_name\"]', 1),
(25, 'admin_refund_request', 'Admin Refund Request', 'Refund Request for \"{{refund_item_name}}\" from {{username}}', '<h2>Hello!</h2><p>You have a new refund request for “<strong>{{refund_item_name}}</strong>” from <strong>{{username}}</strong></p><p>--</p><p><i>{{refund_reason}}</i></p><p>--</p><p><span style=\"background-color:rgb(255,255,255);color:rgb(34,34,34);\">You can view and take action by following this link</span><strong>:</strong> <a href=\"{{refund_link}}\">{{refund_link}}</a></p><p>Regards,&nbsp;<br><strong>{{website_name}}</strong></p>', '[\"username\",\"refund_id\",\"refund_item_name\",\"refund_reason\",\"refund_link\",\"website_name\"]', 1),
(26, 'admin_refund_request_reply', 'Admin Refund Request Reply', 'New Reply On Refund request [#{{refund_id}}]', '<h2>Hello!</h2><p>You have a new reply on refund request for “<strong>{{refund_item_name}}</strong>” from <strong>{{username}}&nbsp;</strong></p><p>--</p><p><i>{{refund_reply}}</i></p><p>--</p><p><span style=\"background-color:rgb(255,255,255);color:rgb(34,34,34);\">You can view and take action by following this link</span><strong>:</strong> <a href=\"{{refund_link}}\">{{refund_link}}</a></p><p>Regards,&nbsp;<br><strong>{{website_name}}</strong></p>', '[\"username\",\"refund_id\",\"refund_item_name\",\"refund_reply\",\"refund_link\",\"website_name\"]', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2014_10_12_100000_create_password_resets_table', 5),
(11, '2021_10_04_213420_create_pages_table', 11),
(15, '2021_10_07_221832_create_settings_table', 15),
(17, '2022_02_23_213634_create_extensions_table', 17),
(18, '2022_04_03_220038_create_mail_templates_table', 18),
(19, '2023_07_30_152852_create_oauth_providers_table', 19),
(20, '2023_09_17_154715_create_payment_gateways_table', 20),
(21, '2023_09_26_125948_create_themes_table', 21),
(22, '2023_10_01_131610_create_addons_table', 22),
(45, '2019_12_14_000001_create_personal_access_tokens_table', 45),
(47, '2021_10_06_201713_create_blog_categories_table', 46),
(48, '2021_10_06_201752_create_blog_articles_table', 46),
(55, '2021_10_28_191044_create_storage_providers_table', 49),
(57, '2023_11_22_173153_create_faqs_table', 51),
(58, '2023_11_22_182033_create_testimonials_table', 52),
(64, '2023_12_15_151129_create_home_categories_table', 54),
(95, '2024_03_13_165718_create_home_sections_table', 60),
(126, '2024_04_16_191052_create_ads_table', 68),
(148, '2024_05_03_174916_create_jobs_table', 77),
(149, '2024_05_03_183505_create_failed_jobs_table', 78),
(160, '2024_05_15_205642_create_translates_table', 84),
(172, '2024_06_29_151017_create_captcha_providers_table', 88),
(174, '2024_07_09_110258_create_support_periods_table', 89),
(184, '2024_09_03_111407_create_plans_table', 94),
(190, '2014_10_12_000000_create_users_table', 95),
(191, '2014_10_12_300000_create_user_login_logs_table', 95),
(192, '2021_10_06_202153_create_blog_comments_table', 95),
(193, '2023_12_10_172652_create_navbar_links_table', 95),
(194, '2023_12_10_172728_create_footer_links_table', 95),
(195, '2023_12_13_172603_create_categories_table', 95),
(196, '2023_12_13_173552_create_sub_categories_table', 95),
(197, '2023_12_21_135143_create_category_options_table', 95),
(199, '2024_01_03_003738_create_items_table', 96),
(200, '2024_03_09_193935_create_item_discounts_table', 96),
(201, '2024_03_19_171106_create_cart_items_table', 96),
(202, '2024_03_21_025080_create_sales_table', 97),
(203, '2024_03_21_025090_create_purchases_table', 97),
(204, '2024_03_21_025100_create_transactions_table', 97),
(205, '2024_03_21_050420_create_transaction_items_table', 97),
(210, '2024_04_04_223335_create_item_views_table', 97),
(211, '2024_04_20_185430_create_statements_table', 97),
(212, '2024_04_23_173759_create_favorites_table', 97),
(215, '2024_05_04_210907_create_ticket_categories_table', 97),
(216, '2024_05_06_170025_create_tickets_table', 97),
(219, '2024_05_30_163150_create_taxes_table', 97),
(220, '2024_06_21_191033_create_item_change_logs_table', 97),
(221, '2024_07_10_105956_create_support_earnings_table', 97),
(223, '2024_09_09_152943_create_subscriptions_table', 97),
(224, '2024_09_12_002743_create_premium_earnings_table', 97),
(225, '2024_02_24_162334_create_kyc_verifications_table', 98),
(226, '2023_12_29_155557_create_uploaded_files_table', 99),
(227, '2024_09_23_213245_create_newsletter_subscribers_table', 100),
(228, '2024_04_01_235823_create_item_reviews_table', 101),
(230, '2024_04_04_223313_create_item_comments_table', 101),
(231, '2024_04_04_223335_create_item_comment_replies_table', 101),
(232, '2024_04_24_192449_create_refunds_table', 101),
(233, '2024_04_24_192550_create_refund_replies_table', 101),
(234, '2024_05_07_171258_create_ticket_replies_table', 101),
(235, '2024_05_07_171419_create_ticket_reply_attachments_table', 101),
(236, '2024_08_24_114518_create_item_comment_reports_table', 101),
(237, '2014_10_11_1000000_create_admin_notifications_table', 102),
(238, '2024_04_01_235824_create_item_review_replies_table', 103);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `navbar_links`
--

CREATE TABLE `navbar_links` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `link_type` tinyint NOT NULL DEFAULT '1',
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `order` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `navbar_links`
--

INSERT INTO `navbar_links` (`id`, `name`, `link`, `link_type`, `parent_id`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Anasayfa', '/', 1, NULL, 1, '2024-05-25 18:29:21', '2025-01-09 07:56:45'),
(2, 'E-Ticaret Yazılımları', '/kategori/yazilimlar/e-ticaret-yazilimlari', 1, 17, 1, '2024-05-25 18:30:14', '2025-01-15 02:20:10'),
(14, 'Dijital Çözümler', '/categories/mobile', 1, NULL, 3, '2024-05-25 18:37:47', '2025-01-10 00:41:11'),
(15, 'E-Ticaret Çözümleri', '/eticaret-cozumleri', 1, 14, 1, '2024-05-25 18:37:56', '2025-01-15 02:05:08'),
(16, 'Entegrasyon Çözümleri', '/entegrasyon-cozumleri', 1, 14, 2, '2024-05-25 18:38:09', '2025-01-15 02:05:47'),
(17, 'Yazılımlar', '/categories/php', 1, NULL, 2, '2024-05-25 18:38:45', '2025-01-13 00:40:20'),
(18, 'Kurumsal Firma Yazılımları', '/kategori/yazilimlar/kurumsal-firma-yazilimlari', 1, 17, 2, '2024-05-25 18:39:04', '2025-01-15 02:21:21'),
(19, 'Tüm Yazılımlarımız', '/kategori/yazilimlar', 1, 17, 3, '2024-05-25 18:39:35', '2025-01-15 02:22:05'),
(30, 'Seo Hizmetleri', '/seo-hizmetleri', 1, 14, 3, '2025-01-09 07:58:27', '2025-01-15 02:06:13'),
(31, 'Kurumsal', 'u', 1, NULL, 6, '2025-01-09 07:59:20', '2025-01-10 00:43:29'),
(32, 'Hakkımızda', '/hakkimizda', 1, 31, 1, '2025-01-09 07:59:38', '2025-01-15 03:21:15'),
(33, 'Bize Ulaşın', '/bize-ulasin', 1, 31, 2, '2025-01-09 08:00:07', '2025-01-15 03:22:27'),
(34, 'Extra Paketler', 'd', 1, NULL, 5, '2025-01-09 08:01:23', '2025-01-10 00:44:16'),
(35, 'E-Ticaret Paketleri', '/paket/ihtiyaciniza-en-uygun-e-ticaret-paketleri', 1, 34, 1, '2025-01-09 08:01:57', '2025-04-20 14:14:14'),
(36, 'Seo Paketleri', '/paket/seo-paketleri', 1, 34, 2, '2025-01-09 08:02:08', '2025-04-20 14:14:12'),
(37, 'Özel Teklif Al', '/form/teklif-al', 1, 31, 3, '2025-01-09 08:03:43', '2025-04-20 14:04:07'),
(38, 'E-Ticaret', 'd', 1, NULL, 4, '2025-01-10 00:41:42', '2025-01-13 00:40:39'),
(39, 'Kargo Enetgrasyonu', 'test-sayfa', 1, 38, 1, '2025-01-10 00:42:17', '2025-04-20 14:12:21'),
(40, 'Pazaryeri Entegrasyonu', 'test-sayfa', 1, 38, 2, '2025-01-10 00:42:27', '2025-04-20 14:12:34'),
(41, 'Muhasebe Entegrasyonu', 'test-sayfa', 1, 38, 3, '2025-01-10 00:42:44', '2025-04-20 14:12:32'),
(42, 'Vizyon & Misyonumuz', '/vizyon-misyonumuz', 1, 31, 4, '2025-01-15 03:21:38', '2025-01-15 03:21:43');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `newsletter_subscribers`
--

CREATE TABLE `newsletter_subscribers` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `newsletter_subscribers`
--

INSERT INTO `newsletter_subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'demo@demo.com', '2025-01-10 01:07:14', '2025-01-10 01:07:14'),
(2, 'demod@demo.com', '2025-01-15 02:32:50', '2025-01-15 02:32:50'),
(3, 'deneme123@deneme123.com', '2025-03-26 05:32:59', '2025-03-26 05:32:59'),
(4, 'kaanilbey805@gmail.com', '2025-04-19 08:53:50', '2025-04-19 08:53:50'),
(5, 'demouser@iyovex.com', '2025-04-20 02:33:35', '2025-04-20 02:33:35'),
(6, 'test16222@gmail.com', '2025-04-21 06:37:43', '2025-04-21 06:37:43'),
(7, 'aslan@hotmail.com', '2025-04-25 06:54:55', '2025-04-25 06:54:55'),
(8, 'toprak1340.1@gmail.com', '2025-04-30 02:01:32', '2025-04-30 02:01:32'),
(9, 'gghhh@hhh.con', '2025-04-30 16:03:29', '2025-04-30 16:03:29');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oauth_providers`
--

CREATE TABLE `oauth_providers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `credentials` longtext NOT NULL,
  `instructions` text,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `oauth_providers`
--

INSERT INTO `oauth_providers` (`id`, `name`, `alias`, `logo`, `credentials`, `instructions`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Facebook', 'facebook', 'images/oauth/facebook.png', '{\"client_id\":null,\"client_secret\":null}', '<ul class=\"mb-0\"><li><strong>Redirect URL :</strong> [URL]/oauth/facebook/callback</li> \n</ul>', 0, '2022-02-23 18:40:12', '2024-09-30 17:27:11'),
(2, 'Google', 'google', 'images/oauth/google.png', '{\"client_id\":null,\"client_secret\":null}', '<ul class=\"mb-0\">  <li><strong>Redirect URL :</strong> [URL]/oauth/google/callback</li>  </ul>', 0, '2022-02-23 18:40:12', '2024-09-30 17:27:06'),
(3, 'Microsoft', 'microsoft', 'images/oauth/microsoft.png', '{\"client_id\":null,\"client_secret\":null}', '<ul class=\"mb-0\">  <li><strong>Redirect URL :</strong> [URL]/oauth/microsoft/callback</li>  </ul>', 0, '2022-02-23 18:40:12', '2024-09-30 17:27:01'),
(4, 'Vkontakte', 'vkontakte', 'images/oauth/vkontakte.png', '{\"client_id\":null,\"client_secret\":null}', '<ul class=\"mb-0\">  <li><strong>Redirect URL :</strong> [URL]/oauth/vkontakte/callback</li>  </ul>', 0, '2022-02-23 18:40:12', '2024-09-30 17:26:55'),
(5, 'Envato', 'envato', 'images/oauth/envato.png', '{\"client_id\":null,\"client_secret\":null}', '<ul class=\"mb-0\">  <li><strong>Redirect URL :</strong> [URL]/oauth/envato/callback</li>  </ul>', 0, '2022-02-23 18:40:12', '2024-09-30 17:26:49'),
(6, 'Github', 'github', 'images/oauth/github.png', '{\"client_id\":null,\"client_secret\":null}', '<ul class=\"mb-0\">  <li><strong>Redirect URL :</strong> [URL]/oauth/github/callback</li>  </ul>', 0, '2022-02-23 18:40:12', '2024-09-30 17:26:44');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `offers`
--

CREATE TABLE `offers` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `seo_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `seo_title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `seo_description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `form_fields` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Tablo döküm verisi `offers`
--

INSERT INTO `offers` (`id`, `title`, `description`, `seo_url`, `seo_title`, `seo_description`, `status`, `form_fields`, `created_at`, `updated_at`) VALUES
(1, 'werwer', 'werwer', 'werwer', 'wer', 'werwer', 1, NULL, '2025-03-17 07:25:12', '2025-03-17 07:25:12'),
(2, 'sdfgsdf', 'gsdfg', 'sdfgsdfg', 'sdfgsdf', 'sdfgsdfg', 1, '\"[]\"', '2025-03-17 07:45:32', '2025-03-17 18:35:03'),
(3, 'test', 'etst', 'sdfsdf', 'sdf', 'sdfsdf', 1, '\"[{\\\"label\\\":\\\"sdfsd\\\",\\\"type\\\":\\\"text\\\",\\\"name\\\":\\\"sdfsdf\\\"},{\\\"label\\\":\\\"vzxcv\\\",\\\"type\\\":\\\"text\\\",\\\"name\\\":\\\"zxcvzx\\\"}]\"', '2025-03-17 08:18:21', '2025-03-17 08:30:15'),
(4, 'Özel Teklif Al', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n</p>\r\n<h3>Hemen Yazın Bize Katılın</h3>\r\n<p>Dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'teklif-al', 'Özel Teklif Al', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, '\"[{\\\"label\\\":\\\"Ad\\\",\\\"type\\\":\\\"text\\\",\\\"name\\\":\\\"ad\\\"},{\\\"label\\\":\\\"Soyad\\\",\\\"type\\\":\\\"text\\\",\\\"name\\\":\\\"soyad\\\"},{\\\"label\\\":\\\"Telefon\\\",\\\"type\\\":\\\"text\\\",\\\"name\\\":\\\"telefon\\\"},{\\\"label\\\":\\\"Email\\\",\\\"type\\\":\\\"email\\\",\\\"name\\\":\\\"mail\\\"},{\\\"label\\\":\\\"Projenizi Tan\\u0131t\\u0131n\\\",\\\"type\\\":\\\"textarea\\\",\\\"name\\\":\\\"projenizi_tan_t_n\\\"},{\\\"label\\\":\\\"B\\u00fct\\u00e7eniz\\\",\\\"type\\\":\\\"text\\\",\\\"name\\\":\\\"b_t_eniz\\\"}]\"', '2025-03-17 17:26:10', '2025-04-20 14:03:45');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `offer_submissions`
--

CREATE TABLE `offer_submissions` (
  `id` bigint UNSIGNED NOT NULL,
  `offer_slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `form_data` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Tablo döküm verisi `offer_submissions`
--

INSERT INTO `offer_submissions` (`id`, `offer_slug`, `form_data`, `created_at`, `updated_at`) VALUES
(1, 'sdfsdf', '\"{\\\"sdfsdf\\\":\\\"sdfsdf\\\",\\\"zxcvzx\\\":\\\"zxcvzxcvxzcv\\\"}\"', '2025-03-17 14:29:56', '2025-03-17 14:29:56'),
(2, 'is-basvurusu', '\"{\\\"ad\\\":\\\"Ahmet\\\",\\\"soyad\\\":\\\"Toprak\\\",\\\"telefon\\\":\\\"05417642780\\\",\\\"mail\\\":\\\"toprak1340.1@gmail.com\\\",\\\"aciklama\\\":\\\"Merhaba ben Ahmet\\\"}\"', '2025-03-17 17:27:45', '2025-03-17 17:27:45'),
(3, 'is-basvurusu', '\"{\\\"ad\\\":\\\"asdfas\\\",\\\"soyad\\\":\\\"zxcvzxcv\\\",\\\"telefon\\\":\\\"zxcvzx\\\",\\\"mail\\\":\\\"sadfasdf@gmail.com\\\",\\\"aciklama\\\":\\\"test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test\\\"}\"', '2025-03-17 17:59:20', '2025-03-17 17:59:20');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `packages`
--

CREATE TABLE `packages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `products` json DEFAULT NULL,
  `seo_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `seo_title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `seo_description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `button1_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `button1_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `button2_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `button2_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `home` bit(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Tablo döküm verisi `packages`
--

INSERT INTO `packages` (`id`, `name`, `description`, `products`, `seo_url`, `seo_title`, `seo_description`, `button1_name`, `button1_url`, `button2_name`, `button2_url`, `status`, `home`, `created_at`, `updated_at`) VALUES
(2, 'Seo Paketleri', 'Uçuran Seo Paketleri ile sitenizi uçuşa geçirin.\r\nSEO Hizmeti satın almadan önce lütfen profesyonel SEO uzmanı ekip arkadaşlarımızdan web sitenizin analizlerini talep edin.', '\"{\\\"refunds2\\\":[],\\\"packages\\\":[{\\\"name\\\":\\\"Gümüş Seo\\\",\\\"old_price\\\":\\\"20.000 TL\\\",\\\"new_price\\\":\\\"10.000 TL\\\",\\\"discount\\\":\\\"%50\\\",\\\"installment\\\":\\\"1000 TL  x 10 Taksit\\\",\\\"features\\\":[\\\"Rekabet Oranı Düşük Siteler İçin\\\",\\\"Hata Ayıklama ve Düzeltme\\\",\\\"Site Hızı Çalışmaları\\\",\\\"Genel Seo Stratejileri\\\",\\\"Tüm Anahtar Kelimelere Çalışma\\\",\\\"Rakip Analizi\\\",\\\"İçerik Analizi\\\",\\\"İç Seo Ayarları\\\",\\\"15 Günlük Hizmet\\\"]},{\\\"name\\\":\\\"Altın Seo\\\",\\\"old_price\\\":\\\"25.000 TL\\\",\\\"new_price\\\":\\\"15.000 TL\\\",\\\"discount\\\":\\\"22%\\\",\\\"installment\\\":\\\"7.500 TL x 2 Taksit \\\",\\\"features\\\":[\\\"Rekabet Oranı Düşük Siteler İçin\\\",\\\"Hata Ayıklama ve Düzeltme\\\",\\\"Site Hızı Çalışmaları\\\",\\\"Genel Seo Stratejileri\\\",\\\"Tüm Anahtar Kelimelere Çalışma\\\",\\\"Rakip Analizi\\\",\\\"İçerik Analizi\\\",\\\"İç Seo Ayarları\\\",\\\"1 Aylık Hizmet\\\"]},{\\\"name\\\":\\\"Vip Seo\\\",\\\"old_price\\\":\\\"40.000 TL\\\",\\\"new_price\\\":\\\"20.000 TL\\\",\\\"discount\\\":\\\"%50\\\",\\\"installment\\\":\\\"10.000 TL x 2 Taksit \\\",\\\"features\\\":[\\\"Rekabet Oranı Yüksek Siteler İçin\\\",\\\"Hata Ayıklama ve Düzeltme\\\",\\\"Site Hızı Çalışmaları\\\",\\\"Genel Seo Stratejileri\\\",\\\"Tüm Anahtar Kelimelere Çalışma\\\",\\\"Rakip Analizi\\\",\\\"İçerik Analizi\\\",\\\"İç Seo Ayarları\\\",\\\"2 Aylık Hizmet\\\"]},{\\\"name\\\":\\\"Pro Seo\\\",\\\"old_price\\\":\\\"50.000 TL\\\",\\\"new_price\\\":\\\"25.000 TL\\\",\\\"discount\\\":\\\"%50\\\",\\\"installment\\\":\\\"12.500 TL x 2 Taksit \\\",\\\"features\\\":[\\\"Rekabet Oranı Yüksek Siteler İçin\\\",\\\"Hata Ayıklama ve Düzeltme\\\",\\\"Site Hızı Çalışmaları\\\",\\\"Genel Seo Stratejileri\\\",\\\"Tüm Anahtar Kelimelere Çalışma\\\",\\\"Rakip Analizi\\\",\\\"İçerik Analizi\\\",\\\"İç Seo Ayarları\\\",\\\"3 Aylık Hizmet\\\"]}]}\"', 'seo-paketleri', 'SEO Paketleri', 'deneme', 'Satın Al', '/iletisim', 'Detaylar', '/iletisim', 1, b'0', '2025-03-16 01:35:11', '2025-03-27 15:48:10'),
(6, 'E-Ticaret Paketleri', 'İhtiyacınıza en uygun e-ticaret paketleri, işinizin gereksinimlerine özel çözümler sunar. Kullanıcı dostu arayüzler, gelişmiş ödeme sistemleri ve özelleştirilebilir özelliklerle online mağazanızı hızlıca kurup yönetebilirsiniz.', '\"{\\\"packages\\\":[{\\\"name\\\":\\\"STARTER\\\",\\\"old_price\\\":\\\"40.000 TL\\\",\\\"new_price\\\":\\\"25.000 TL\\\",\\\"discount\\\":\\\"%38\\\",\\\"installment\\\":\\\"2.083 TL x 12 Taksit*\\\",\\\"features\\\":[\\\"Ürün ve Kategori Yönetimi\\\",\\\"Sipariş ve Teslimat Takibi\\\",\\\"Entegre Ödeme Sistemleri\\\",\\\"5 GB Web Alanı\\\",\\\"Mobil Uyumlu Tema\\\",\\\"Temel SEO Araçları\\\",\\\"Ücretsiz SSL Sertifikası\\\",\\\"E-posta ve SMS Bildirimleri\\\",\\\"Detaylı Raporlama\\\",\\\"7/24 Teknik Destek\\\"]},{\\\"name\\\":\\\"PRO\\\",\\\"old_price\\\":\\\"55.000 TL\\\",\\\"new_price\\\":\\\"35.000 TL\\\",\\\"discount\\\":\\\"%36\\\",\\\"installment\\\":\\\"2.916 TL x 12 Taksit*\\\",\\\"features\\\":[\\\"Çoklu Satıcı Modülü\\\",\\\"Kampanya ve İndirim Yönetimi\\\",\\\"Gelişmiş Ödeme Entegrasyonları\\\",\\\"10 GB Web Alanı\\\",\\\"Tema Özelleştirme\\\",\\\"Gelişmiş SEO Araçları\\\",\\\"Kullanıcı Analitikleri\\\",\\\"Çoklu Dil ve Para Birimi Desteği\\\",\\\"Müşteri Sadakat Sistemi\\\",\\\"7/24 Teknik Destek\\\"]},{\\\"name\\\":\\\"ADVANCED\\\",\\\"old_price\\\":\\\"75.000 TL\\\",\\\"new_price\\\":\\\"50.000 TL\\\",\\\"discount\\\":\\\"%33\\\",\\\"installment\\\":\\\"4.166 TL x 12 Taksit*\\\",\\\"features\\\":[\\\"B2B ve B2C Entegrasyonu\\\",\\\"Mağaza Yönetim Paneli\\\",\\\"20 GB Web Alanı\\\",\\\"Gelişmiş Ürün Öneri Sistemi\\\",\\\"Entegre Lojistik Çözümleri\\\",\\\"Özelleştirilebilir Tema Seçenekleri\\\",\\\"Dinamik Raporlama ve Analiz\\\",\\\"Çoklu Para Birimi Yönetimi\\\",\\\"Puan ve Ödül Sistemi\\\",\\\"7/24 Teknik Destek\\\"]},{\\\"name\\\":\\\"PREMIUM\\\",\\\"old_price\\\":\\\"100.000 TL\\\",\\\"new_price\\\":\\\"70.000 TL\\\",\\\"discount\\\":\\\"%30\\\",\\\"installment\\\":\\\"5.833 TL x 12 Taksit*\\\",\\\"features\\\":[\\\"Özel Müşteri Yönetim Modülü\\\",\\\"Gelişmiş API Desteği\\\",\\\"50 GB Web Alanı\\\",\\\"Entegre Pazaryeri Çözümleri\\\",\\\"Dinamik Kampanya ve İndirim Modülleri\\\",\\\"Detaylı Satış ve Performans Analizi\\\",\\\"Çoklu Dil ve Bölgesel Özellikler\\\",\\\"Özel Tasarım Hizmetleri\\\",\\\"Entegre CRM Sistemi\\\",\\\"7/24 VIP Destek\\\"]}]}\"', 'ihtiyaciniza-en-uygun-e-ticaret-paketleri', 'İhtiyacınıza En Uygun E-Ticaret Paketleri', 'İhtiyacınıza en uygun e-ticaret paketleri, işinizin gereksinimlerine özel çözümler sunar. Kullanıcı dostu arayüzler, gelişmiş ödeme sistemleri ve özelleştirilebilir özelliklerle online mağazanızı hızlıca kurup yönetebilirsiniz.', 'Satın Al', '/iletisim', 'Detaylar', '/iletisim', 1, b'1', '2025-03-24 08:11:06', '2025-04-20 14:14:35');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pages`
--

CREATE TABLE `pages` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `short_description` varchar(200) NOT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `body`, `short_description`, `views`, `created_at`, `updated_at`) VALUES
(5, 'Hakkımızda', 'hakkimizda', '<p><strong>XYazılım Nedir?</strong></p><p><strong>XYazılım</strong>&nbsp;teknoloji ve yazılım alanında yenilikçi çözümler sunan, müşteri odaklı bir teknoloji şirketidir. Kurulduğu günden bu yana işletmelerin dijital dönüşüm süreçlerinde yanında olan XYazılım, özelleştirilmiş yazılım çözümleriyle iş süreçlerini kolaylaştırmayı hedeflemektedir.</p><p><strong>Hedeflerimiz</strong></p><p>XYazılım, müşterilerinin işlerini daha verimli ve kârlı hale getirmek için en son teknolojileri kullanmayı misyon edinmiştir. Sürekli gelişen yazılım dünyasında, güvenilir ve kaliteli hizmet anlayışımızla sektörde fark yaratıyoruz.</p><p><strong>Hizmetlerimiz</strong></p><p>XYazılım olarak, e-ticaret çözümleri, özel yazılım geliştirme, mobil uygulama geliştirme, entegrasyon çözümleri ve dijital pazarlama alanlarında uzmanlaşmış bir ekiple çalışıyoruz. Her bir projemiz, müşterilerimizin ihtiyaçlarına özel olarak tasarlanır ve hayata geçirilir.</p><p><strong>Değerlerimiz</strong></p><p>Müşteri memnuniyeti, yenilikçilik ve güvenilirlik, işimizin temel taşlarını oluşturmaktadır. XYazılım olarak, uzun vadeli ilişkiler kurmaya ve müşterilerimizin başarılarına katkıda bulunmaya inanıyoruz.</p><p><strong>Neden Bizi Seçmelisiniz?</strong></p><p>XYazılım, deneyimli ekibi ve sektör tecrübesi ile işletmenizin ihtiyaçlarına en uygun çözümleri sunar. Esneklik, kalite ve müşteri odaklı yaklaşımımızla projelerinizi güvenle bize teslim edebilirsiniz.</p>', 'XYazılım teknoloji ve yazılım alanında yenilikçi çözümler sunan, müşteri odaklı bir teknoloji şirketidir.', 80, '2024-03-05 20:20:33', '2025-05-01 03:26:26'),
(13, 'Vizyon & Misyonumuz', 'vizyon-misyonumuz', '<p><strong>Vizyonumuz</strong></p><p><strong>XYazılım</strong>&nbsp;olarak, teknoloji dünyasında öncü bir marka olmak, işletmelerin dijital dönüşüm süreçlerine yön vermek ve global ölçekte güvenilir bir yazılım çözüm sağlayıcısı olarak tanınmak istiyoruz. Teknolojiyi insan odaklı bir yaklaşımla kullanarak iş dünyasında fark yaratmayı hedefliyoruz.</p><p><strong>Misyonumuz</strong></p><p>Yenilikçi ve özelleştirilebilir yazılım çözümleri ile müşterilerimizin iş süreçlerini optimize etmek, verimliliklerini artırmak ve sürdürülebilir büyümelerine katkı sağlamak. Güvenilir, kaliteli ve müşteri odaklı hizmet anlayışımızla her sektöre özel çözümler üretiyoruz.</p><p>XYazılım, teknolojiyle iş dünyasını bir araya getirirken, müşterilerimize en iyi hizmeti sunmak için sürekli kendimizi geliştirmeyi ilke ediniyoruz.</p>', 'XYazılım, teknolojiyle iş dünyasını bir araya getirirken, müşterilerimize en iyi hizmeti sunmak için sürekli kendimizi geliştirmeyi ilke ediniyoruz.', 43, '2025-01-15 03:15:55', '2025-05-01 03:39:20'),
(14, 'Gizlilik Sözleşmesi', 'gizlilik-sozlesmesi', '<p><strong>Gizlilik Sözleşmesi</strong></p><p><strong>XYazılım</strong>&nbsp;olarak, müşterilerimizin gizliliğini koruma konusunda kararlıyız. Web sitemizi ziyaret eden, hizmetlerimizi kullanan ya da bizimle herhangi bir şekilde etkileşimde bulunan kullanıcılarımızın kişisel bilgilerini korumak temel önceliklerimizden biridir.</p><p><strong>Kişisel Bilgilerin Toplanması</strong></p><p>XYazılım, yalnızca kullanıcılarımızın bizimle paylaşmayı seçtiği bilgileri toplar. Bu bilgiler genellikle isim, e-posta adresi, telefon numarası, şirket bilgileri ve hizmetlerimizle ilgili detaylar gibi verilerden oluşur. Toplanan bilgiler, kullanıcılarımıza daha iyi hizmet sunmak ve deneyimlerini iyileştirmek için kullanılır.</p><p><strong>Bilgilerin Kullanımı</strong></p><p>Toplanan kişisel bilgiler şu amaçlarla kullanılabilir:</p><ul><li>Kullanıcılara daha iyi hizmet sunmak</li><li>Talep edilen ürün veya hizmetlerle ilgili bilgi sağlamak</li><li>Kampanyalar ve özel tekliflerle ilgili kullanıcıları bilgilendirmek</li><li>Sitemizin performansını artırmak ve kullanıcı deneyimini iyileştirmek</li></ul><p>&nbsp;</p><p><strong>Bilgilerin Paylaşımı</strong></p><p>Kullanıcı bilgileriniz, izniniz olmadan üçüncü taraflarla paylaşılmayacaktır. Ancak, yasal gereklilik durumlarında veya hizmetlerimizin sunulması için gerekli olduğunda iş ortaklarımızla paylaşım yapılabilir.</p><p><strong>Veri Güvenliği</strong></p><p>Kullanıcı bilgilerinin güvenliğini sağlamak için en güncel teknoloji ve güvenlik önlemlerini kullanıyoruz. Verilerinizi izinsiz erişime, kaybolmaya ya da kötüye kullanıma karşı korumak için gereken tüm tedbirleri alıyoruz.</p><p><strong>Kullanıcı Hakları</strong></p><p>Kullanıcılar, diledikleri zaman kişisel bilgilerinin düzeltilmesini, güncellenmesini veya silinmesini talep edebilir. Ayrıca, bilgilerinizin hangi amaçlarla kullanıldığını öğrenme hakkına sahipsiniz.</p><p><strong>Gizlilik Politikası Güncellemeleri</strong></p><p>XYazılım, gizlilik politikasını zaman zaman güncelleyebilir. Güncellemeler web sitemiz üzerinde yayınlanacak ve kullanıcılarımıza bildirilecektir.</p><p><strong>İletişim</strong></p><p>Gizlilik politikamızla ilgili herhangi bir sorunuz ya da endişeniz varsa, lütfen bizimle iletişime geçin:&nbsp;<br><strong>E-posta:</strong> info@xyazilim.com&nbsp;<br><strong>Telefon:</strong> +90 123 456 78 90</p>', 'XYazılım olarak, müşterilerimizin gizliliğini koruma konusunda kararlıyız.', 24, '2025-01-15 03:16:50', '2025-04-24 07:49:02'),
(15, 'Üyelik Sözleşmesi', 'uyelik-sozlesmesi', '<p><strong>Üyelik Sözleşmesi</strong></p><p><strong>1. Giriş</strong></p><p>Bu sözleşme, <strong>XYazılım</strong> platformuna üye olan kullanıcılar ile XYazılım arasında yapılan üyelik şartlarını ve kurallarını belirler. Platformumuzu kullanarak bu sözleşmenin tüm şartlarını kabul etmiş sayılırsınız.</p><p><strong>2. Üyelik Koşulları</strong></p><p>- Üyelik başvurusu sırasında verilen bilgilerin doğru ve eksiksiz olması gereklidir.<br>- Üyelik sadece bireysel kullanıcılar için değil, tüzel kişiler için de geçerlidir.<br>- Üye, kullanıcı adı ve şifresinin gizliliğinden sorumludur. Şifrenin başkalarıyla paylaşılması durumunda doğacak zararlardan XYazılım sorumlu değildir.</p><p><strong>3. Kullanıcı Yükümlülükleri</strong></p><p>- Üye, platform üzerinden gerçekleştirdiği tüm işlemlerden ve yaptığı paylaşımlardan sorumludur.<br>- Üye, platformu hukuka aykırı, yanıltıcı, rahatsız edici veya zarar verici şekilde kullanamaz.<br>- Üye, platformun işleyişine zarar verecek herhangi bir faaliyette bulunamaz.</p><p><strong>4. XYazılım Hak ve Sorumlulukları</strong></p><p>- XYazılım, üyenin sisteme giriş yaparken kullandığı bilgileri güvenli bir şekilde saklamayı taahhüt eder.<br>- XYazılım, kullanıcı sözleşmesine aykırı davranışlarda bulunan üyelerin üyeliğini askıya alabilir veya tamamen sonlandırabilir.<br>- XYazılım, gerekli gördüğü durumlarda platformun işleyişini değiştirme veya platformu geçici olarak durdurma hakkını saklı tutar.</p><p><strong>5. Üyelik İptali</strong></p><p>- Üye, dilediği zaman üyeliğini iptal edebilir. Bunun için kullanıcı panelinden ilgili işlemi gerçekleştirebilir veya bizimle iletişime geçebilir.<br>- Üyelik iptali sonrası üyenin platformda gerçekleştirdiği işlemler, kayıtlar ve bilgiler XYazılım\'ın yasal yükümlülükleri kapsamında saklanabilir.</p><p><strong>6. Gizlilik</strong></p><p>XYazılım, kullanıcıların kişisel bilgilerini <a href=\"/gizlilik-sozlesmesi\">Gizlilik Sözleşmesi</a> doğrultusunda korur ve kullanır.</p><p><strong>7. Yasal Sorumluluk</strong></p><p>- Üyeler, Türk yasalarına ve diğer yürürlükte olan uluslararası hukuk kurallarına uymakla yükümlüdür.<br>- Bu sözleşmeden kaynaklanan ihtilaflarda İstanbul Mahkemeleri ve İcra Daireleri yetkilidir.</p><p><strong>8. Değişiklik Hakkı</strong></p><p>XYazılım, üyelik sözleşmesinde zaman zaman değişiklik yapma hakkını saklı tutar. Yapılan değişiklikler web sitemizde yayınlandığı andan itibaren geçerli olacaktır.</p><p><strong>9. İletişim</strong></p><p>Üyelik sözleşmesi ile ilgili herhangi bir soru veya sorun yaşamanız durumunda bizimle iletişime geçebilirsiniz:&nbsp;<br><strong>E-posta:</strong> info@xyazilim.com&nbsp;<br><strong>Telefon:</strong> +90 123 456 78 90</p>', 'Bu sözleşme, XYazılım platformuna üye olan kullanıcılar ile XYazılım arasında yapılan üyelik şartlarını ve kurallarını belirler.', 22, '2025-01-15 03:17:58', '2025-04-26 06:06:16'),
(16, 'Mesafeli Satış Sözleşmesi', 'mesafeli-satis-sozlesmesi', '<p><strong>Mesafeli Satış Sözleşmesi</strong></p><p><strong>1. Taraflar</strong></p><p>İşbu Mesafeli Satış Sözleşmesi (\"Sözleşme\"), aşağıdaki taraflar arasında düzenlenmiştir:&nbsp;<br><strong>Satıcı:</strong> XYazılım A.Ş.&nbsp;<br><strong>Adres:</strong> Örnek Mahallesi, Örnek Sokak No:1, İstanbul, Türkiye&nbsp;<br><strong>Telefon:</strong> +90 123 456 78 90&nbsp;<br><strong>E-posta:</strong> info@xyazilim.com&nbsp;<br><br><strong>Alıcı:</strong> Web sitesi üzerinden sipariş veren müşteri (\"Alıcı\").</p><p><strong>2. Konu</strong></p><p>İşbu Sözleşme, Alıcı\'nın Satıcı\'ya ait <strong>XYazılım</strong> web sitesi üzerinden sipariş ettiği ürün ya da hizmetin satışı ve teslimine ilişkin tarafların hak ve yükümlülüklerini düzenler.</p><p><strong>3. Sözleşme Tarihi</strong></p><p>İşbu sözleşme, Alıcı\'nın siparişi onayladığı tarih itibariyle yürürlüğe girer.</p><p><strong>4. Ürün ve Hizmet Bilgileri</strong></p><p>Alıcı\'nın satın aldığı ürün ya da hizmetin adı, miktarı, fiyatı ve diğer tüm detaylar, siparişin onaylandığı esnada görüntülenmektedir. Bu bilgiler, Alıcı\'nın siparişine ilişkin e-posta ile de kendisine iletilecektir.</p><p><strong>5. Ödeme Koşulları</strong></p><p>Alıcı, seçtiği ödeme yöntemine göre satın alma bedelini eksiksiz ve doğru bir şekilde ödemekle yükümlüdür. Ödeme tamamlanmadıkça sipariş işleme alınmayacaktır.</p><p><strong>6. Teslimat</strong></p><p>- Ürün ya da hizmetin teslimatı, Alıcı\'nın belirttiği e-posta adresine ya da fiziksel adresine yapılır.<br>- Dijital ürünler, ödeme onaylandıktan sonra e-posta yoluyla iletilir.<br>- Teslimat süresi, aksi belirtilmedikçe, siparişin onaylandığı tarihten itibaren en geç 7 iş günü içerisinde gerçekleştirilir.</p><p><strong>7. Cayma Hakkı</strong></p><p>Alıcı, ürünü teslim aldıktan sonra 14 gün içinde herhangi bir gerekçe göstermeksizin cayma hakkını kullanabilir. Cayma hakkı kapsamında ürün iadesi aşağıdaki şartlara tabidir:</p><ul><li>Dijital ürünlerde cayma hakkı, ürünün indirildiği veya kullanıldığı durumlarda geçerli değildir.</li><li>Fiziksel ürünlerin iadesi için ürünün kullanılmamış, orijinal ambalajında ve eksiksiz olması gerekir.</li></ul><p>&nbsp;</p><p><strong>8. İade ve Değişim</strong></p><p>Alıcı\'nın cayma hakkını kullanması durumunda, iade edilen ürün Satıcı\'ya ulaştıktan sonra ödemenin geri iadesi 14 iş günü içerisinde yapılacaktır. Değişim talepleri, stok durumuna bağlıdır.</p><p><strong>9. Sorumluluk</strong></p><p>- Satıcı, ürün ya da hizmetin belirtilen şekilde teslim edilmesinden sorumludur.<br>- Alıcı, yanlış bilgi ya da eksik adres nedeniyle teslimatın gerçekleşmemesi durumunda sorumluluk üstlenir.</p><p><strong>10. Yasal Dayanak</strong></p><p>İşbu Sözleşme, 6502 sayılı Tüketicinin Korunması Hakkında Kanun ve Mesafeli Sözleşmelere Dair Yönetmelik hükümlerine uygun olarak hazırlanmıştır.</p><p><strong>11. Uyuşmazlık Çözümü</strong></p><p>Taraflar arasında doğabilecek ihtilaflarda, Tüketici Hakem Heyetleri ve Tüketici Mahkemeleri yetkilidir.</p><p><strong>12. İletişim</strong></p><p>Satıcı ile iletişime geçmek için aşağıdaki bilgileri kullanabilirsiniz:&nbsp;<br><strong>Telefon:</strong> +90 123 456 78 90&nbsp;<br><strong>E-posta:</strong> info@xyazilim.com</p><p>İşbu Mesafeli Satış Sözleşmesi, Alıcı tarafından sipariş onayı ile kabul edilmiş sayılır.</p>', 'İşbu Mesafeli Satış Sözleşmesi (\"Sözleşme\"), aşağıdaki taraflar arasında düzenlenmiştir.', 31, '2025-01-15 03:18:41', '2025-04-24 07:48:13'),
(17, 'Kullanım Koşulları', 'kullanim-kosullari', '<p><strong>Kullanım Koşulları</strong></p><p>İşbu kullanım koşulları, <strong>XYazılım</strong> tarafından sağlanan tüm hizmetlerin ve web sitesinin kullanımına ilişkin kuralları içermektedir. Web sitemizi kullanarak bu koşulları kabul etmiş sayılırsınız.</p><p><strong>1. Hizmetlerimizin Kullanımı</strong></p><p>- Web sitemiz ve hizmetlerimiz yalnızca yasal amaçlarla kullanılabilir.<br>- Kullanıcılar, web sitesini ve hizmetlerimizi herhangi bir yasadışı, zararlı, rahatsız edici veya yanıltıcı amaçla kullanamaz.<br>- Web sitemizde sunulan içerik, yazılım ve hizmetler yalnızca kişisel ve ticari olmayan amaçlar için kullanılabilir.</p><p><strong>2. Kullanıcı Sorumlulukları</strong></p><p>- Kullanıcılar, web sitesine erişim sağlarken doğru ve eksiksiz bilgi vermekle yükümlüdür.<br>- Kullanıcı adı ve şifre gibi kişisel bilgilerin korunması kullanıcıların sorumluluğundadır. Şifrelerin yetkisiz kişilerle paylaşılması sonucunda doğabilecek zararlardan XYazılım sorumlu tutulamaz.<br>- Kullanıcılar, web sitesinde diğer kullanıcıların haklarını ihlal edecek davranışlarda bulunamaz.</p><p><strong>3. Fikri Mülkiyet</strong></p><p>- Web sitesinde yer alan tüm içerik, tasarım, metin, görsel, logo ve yazılımlar XYazılım’a ait olup, ilgili fikri mülkiyet yasaları kapsamında korunmaktadır.<br>- Kullanıcılar, web sitesinde yer alan içerikleri izinsiz çoğaltamaz, dağıtamaz veya ticari amaçla kullanamaz.</p><p><strong>4. Gizlilik</strong></p><p>Kullanıcı bilgileri, <a href=\"/gizlilik-sozlesmesi\">Gizlilik Sözleşmesi</a> doğrultusunda korunmakta ve kullanılmaktadır. Web sitemizi kullanarak bu gizlilik politikasını kabul etmiş olursunuz.</p><p><strong>5. Sorumluluğun Sınırlandırılması</strong></p><p>- XYazılım, web sitesindeki hizmetlerin kesintisiz veya hatasız olacağını garanti etmez.<br>- Web sitesinin kullanımı sırasında oluşabilecek doğrudan ya da dolaylı zararlardan XYazılım sorumlu tutulamaz.</p><p><strong>6. Değişiklik Hakkı</strong></p><p>XYazılım, kullanım koşullarında önceden bildirimde bulunmaksızın değişiklik yapma hakkını saklı tutar. Yapılan değişiklikler, web sitesinde yayınlandığı andan itibaren geçerli olacaktır.</p><p><strong>7. Uyuşmazlık Çözümü</strong></p><p>İşbu kullanım koşullarından kaynaklanabilecek tüm ihtilaflar, Türk Hukuku’na tabidir ve İstanbul Mahkemeleri yetkilidir.</p><p><strong>8. İletişim</strong></p><p>Kullanım koşulları ile ilgili sorularınız veya önerileriniz için bizimle iletişime geçebilirsiniz:&nbsp;<br><strong>Telefon:</strong> +90 123 456 78 90&nbsp;<br><strong>E-posta:</strong> info@xyazilim.com</p><p>Web sitemizi kullanarak bu koşulları okuduğunuzu ve kabul ettiğinizi beyan etmiş olursunuz.</p>', 'İşbu kullanım koşulları, XYazılım tarafından sağlanan tüm hizmetlerin ve web sitesinin kullanımına ilişkin kuralları içermektedir.', 27, '2025-01-15 03:19:39', '2025-04-26 05:43:55'),
(18, 'Çerez Politikası', 'cerez-politikasi', '<p><strong>Çerez Politikası</strong></p><p>Bu çerez politikası, <strong>XYazılım</strong> web sitesi tarafından kullanılan çerez türlerini, bu çerezlerin kullanım amaçlarını ve çerez ayarlarının nasıl yönetileceğini açıklamaktadır.</p><p><strong>1. Çerez Nedir?</strong></p><p>Çerezler, bir web sitesini ziyaret ettiğinizde cihazınıza depolanan küçük metin dosyalarıdır. Bu dosyalar, web sitesinin daha iyi çalışmasını sağlamak, kullanıcı deneyimini geliştirmek ve ziyaretçi davranışlarını analiz etmek amacıyla kullanılır.</p><p><strong>2. Çerez Türleri</strong></p><p>Web sitemizde aşağıdaki çerez türleri kullanılmaktadır:</p><ul><li><strong>Gerekli Çerezler:</strong> Web sitesinin temel işlevlerini yerine getirebilmesi için gereklidir. Bu çerezler olmadan web sitesi düzgün çalışamaz.</li><li><strong>Performans Çerezleri:</strong> Web sitesinin kullanımını analiz etmek ve performansını iyileştirmek için kullanılır.</li><li><strong>Fonksiyonel Çerezler:</strong> Kullanıcı tercihlerini hatırlamak ve daha kişiselleştirilmiş bir deneyim sunmak için kullanılır.</li><li><strong>Hedefleme/İzleme Çerezleri:</strong> Kullanıcıların ilgi alanlarına uygun içerikler ve reklamlar sunmak için kullanılır.</li></ul><p>&nbsp;</p><p><strong>3. Çerezlerin Kullanım Amaçları</strong></p><p>Çerezler, aşağıdaki amaçlarla kullanılmaktadır:</p><ul><li>Web sitesinin düzgün çalışmasını sağlamak.</li><li>Kullanıcı tercihlerini hatırlamak ve deneyimi kişiselleştirmek.</li><li>Web sitesinin performansını analiz etmek ve iyileştirmek.</li><li>Reklam içeriklerini kullanıcı ilgi alanlarına göre optimize etmek.</li></ul><p>&nbsp;</p><p><strong>4. Çerez Ayarlarının Yönetimi</strong></p><p>Çerezlerinizi kontrol etmek veya devre dışı bırakmak için tarayıcı ayarlarınızı kullanabilirsiniz. Çerezleri devre dışı bırakmanız durumunda, web sitemizin bazı özellikleri düzgün çalışmayabilir. Tarayıcınızın ayarlarını aşağıdaki yöntemlerle değiştirebilirsiniz:</p><ul><li><strong>Google Chrome:</strong> Ayarlar &gt; Gizlilik ve Güvenlik &gt; Çerezler ve diğer site verileri</li><li><strong>Mozilla Firefox:</strong> Ayarlar &gt; Gizlilik ve Güvenlik &gt; Çerezler ve Site Verileri</li><li><strong>Safari:</strong> Tercihler &gt; Gizlilik &gt; Çerezler ve web sitesi verileri</li><li><strong>Microsoft Edge:</strong> Ayarlar &gt; Gizlilik, arama ve hizmetler &gt; Çerezler ve site izinleri</li></ul><p>&nbsp;</p><p><strong>5. Üçüncü Taraf Çerezleri</strong></p><p>Web sitemizde, üçüncü taraf hizmet sağlayıcılar tarafından yerleştirilen çerezler kullanılabilir. Bu çerezler, ilgili üçüncü tarafların gizlilik politikalarına tabidir. Üçüncü taraf çerezleri genellikle reklamcılık ve analiz amaçlı kullanılır.</p><p><strong>6. Çerez Politikasında Değişiklikler</strong></p><p><strong>XYazılım</strong>, çerez politikasını zaman zaman güncelleyebilir. Güncellemeler, web sitemiz üzerinden kullanıcılara duyurulacaktır. Çerez politikasında yapılan değişiklikler, yayınlandığı tarihten itibaren geçerli olacaktır.</p><p><strong>7. İletişim</strong></p><p>Çerez politikası ile ilgili sorularınız için bizimle iletişime geçebilirsiniz:&nbsp;<br><strong>Telefon:</strong> +90 123 456 78 90&nbsp;<br><strong>E-posta:</strong> info@xyazilim.com</p><p>Web sitemizi kullanarak çerez politikasını okuduğunuzu ve kabul ettiğinizi beyan etmiş olursunuz.</p>', 'Bu çerez politikası, XYazılım web sitesi tarafından kullanılan çerez türlerini, bu çerezlerin kullanım amaçlarını ve çerez ayarlarının nasıl yönetileceğini açıklamaktadır.', 16, '2025-01-15 03:20:24', '2025-04-24 07:48:39'),
(19, 'Bize Ulaşın', 'bize-ulasin', '<p><strong>XYazılım Nedir?</strong></p><p><strong>XYazılım</strong>&nbsp;teknoloji ve yazılım alanında yenilikçi çözümler sunan, müşteri odaklı bir teknoloji şirketidir. Kurulduğu günden bu yana işletmelerin dijital dönüşüm süreçlerinde yanında olan XYazılım, özelleştirilmiş yazılım çözümleriyle iş süreçlerini kolaylaştırmayı hedeflemektedir.</p><p><strong>Hedeflerimiz</strong></p><p>XYazılım, müşterilerinin işlerini daha verimli ve kârlı hale getirmek için en son teknolojileri kullanmayı misyon edinmiştir. Sürekli gelişen yazılım dünyasında, güvenilir ve kaliteli hizmet anlayışımızla sektörde fark yaratıyoruz.</p><p><strong>Hizmetlerimiz</strong></p><p>XYazılım olarak, e-ticaret çözümleri, özel yazılım geliştirme, mobil uygulama geliştirme, entegrasyon çözümleri ve dijital pazarlama alanlarında uzmanlaşmış bir ekiple çalışıyoruz. Her bir projemiz, müşterilerimizin ihtiyaçlarına özel olarak tasarlanır ve hayata geçirilir.</p><p><strong>Değerlerimiz</strong></p><p>Müşteri memnuniyeti, yenilikçilik ve güvenilirlik, işimizin temel taşlarını oluşturmaktadır. XYazılım olarak, uzun vadeli ilişkiler kurmaya ve müşterilerimizin başarılarına katkıda bulunmaya inanıyoruz.</p><p><strong>Neden Bizi Seçmelisiniz?</strong></p><p>XYazılım, deneyimli ekibi ve sektör tecrübesi ile işletmenizin ihtiyaçlarına en uygun çözümleri sunar. Esneklik, kalite ve müşteri odaklı yaklaşımımızla projelerinizi güvenle bize teslim edebilirsiniz.</p><p><a href=\"https://demo.wisiva.com\">Demo Paneli Gör </a><a href=\"mailto:destek@wisiva.com\">Bize Ulaşın </a><a href=\"https://wisiva.com/satin-al\">Hemen Satın Al&nbsp;</a></p>', 'Kısa açıklama.', 35, '2025-04-20 14:10:45', '2025-05-01 03:39:14'),
(20, 'Test Sayfa', 'test-sayfa', '<p>Test Sayfa Açıklama Alanı.</p>', 'Test Sayfa', 51, '2025-04-20 14:12:14', '2025-05-01 03:36:01');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` bigint UNSIGNED NOT NULL,
  `sort_id` bigint NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `fees` int NOT NULL DEFAULT '0',
  `credentials` longtext,
  `parameters` longtext,
  `is_manual` tinyint(1) NOT NULL DEFAULT '0',
  `instructions` longtext,
  `mode` enum('sandbox','live') DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `sort_id`, `name`, `alias`, `logo`, `fees`, `credentials`, `parameters`, `is_manual`, `instructions`, `mode`, `status`) VALUES
(1, 1, 'Cüzdan', 'wallet', 'images/payment-gateways/wallet.png', 0, NULL, NULL, 1, NULL, NULL, 1),
(3, 3, 'Stripe', 'stripe', 'images/payment-gateways/stripe.png', 0, '{\"publishable_key\":\"33\",\"secret_key\":\"33\",\"webhook_secret\":\"33\"}', '[{\"type\": \"event\", \"label\": \"Webhook Event\", \"content\": \"checkout.session.completed\"},\n{\"type\": \"route\", \"label\": \"Webhook Endpoint\", \"content\": \"payments/webhooks/stripe\" }]', 0, NULL, NULL, 1),
(7, 7, 'Coinbase', 'coinbase', 'images/payment-gateways/coinbase.png', 0, '{\"api_key\":\"33\",\"webhook_shared_secret\":\"33\"}', '[{ \"type\": \"route\", \"label\": \"Webhook Endpoint\", \"content\": \"payments/webhooks/coinbase\" }]', 0, NULL, NULL, 1),
(10, 13, 'Banka Transferi', 'bankwire', 'images/payment-gateways/bankwire.png', 0, NULL, NULL, 1, '<p>Değerli müşterimiz, banka transferi ile ödeme işleminizi tamamlamak için aşağıdaki bilgileri kullanabilirsiniz. Lütfen ödemenizi gerçekleştirirken <strong>açıklama kısmına sipariş numaranızı</strong> eklemeyi unutmayınız. Bu, ödemenizi hızlı bir şekilde eşleştirebilmemiz için gereklidir.</p><h4>Hesap Bilgileri</h4><ul><li><strong>Hesap Sahibi:</strong> XYazılım A.Ş.</li><li><strong>IBAN:</strong> TR00 0000 0000 0000 0000 0000 00</li><li><strong>Banka Adı:</strong> Örnek Bankası</li><li><strong>Şube Kodu:</strong> 1234</li></ul><p><strong>Not:</strong> Ödemenizi yaptıktan sonra, işlem dekontunu bizimle paylaşınız.</p>', NULL, 1),
(13, 12, 'Iyzico', 'iyzico', 'images/payment-gateways/iyzipay.png', 0, '{\"api_key\":\"33\",\"secret_key\":\"33\"}', '[{\"type\": \"route\", \"label\": \"Webhook Endpoint\", \"content\": \"payments/webhooks/iyzipay\" }]', 0, NULL, 'sandbox', 1),
(14, 12, 'Paytr', 'paytr', 'images/payment-gateways/paytr.png', 0, '{\"merchant_id\":\"280811\",\"merchant_key\":\"y4XAJkpTanGxW9zk\",\"merchant_salt\":\"ws8W42ZtEDobu1tC\"}', '[{\"type\": \"route\", \"label\": \"Webhook Endpoint\", \"content\": \"payments/webhooks/paytr\" }]', 0, NULL, 'sandbox', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `plans`
--

CREATE TABLE `plans` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `interval` enum('week','month','year','lifetime') NOT NULL,
  `price` double(18,2) DEFAULT NULL,
  `author_earning_percentage` varchar(10) NOT NULL DEFAULT '0',
  `downloads` bigint UNSIGNED DEFAULT NULL,
  `custom_features` longtext,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `sort_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `premium_earnings`
--

CREATE TABLE `premium_earnings` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double(18,2) NOT NULL,
  `tax` text,
  `total` double(18,2) NOT NULL,
  `subscription_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `sale_id` bigint UNSIGNED NOT NULL,
  `item_id` bigint UNSIGNED NOT NULL,
  `license_type` tinyint NOT NULL COMMENT '1:Regular 2:Extended',
  `code` varchar(255) NOT NULL,
  `support_expiry_at` datetime DEFAULT NULL,
  `is_downloaded` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1:Active 2:Refunded 3:Cancelled',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `purchases`
--

INSERT INTO `purchases` (`id`, `user_id`, `sale_id`, `item_id`, `license_type`, `code`, `support_expiry_at`, `is_downloaded`, `status`, `created_at`, `updated_at`) VALUES
(1004, 11, 1004, 1018, 1, '6572db27-da7b-4562-8518-efa6dcbb04f8', '2025-10-29 10:53:27', 0, 1, '2025-04-30 07:53:27', '2025-04-30 07:53:27'),
(1005, 11, 1005, 1005, 1, 'eb53d21a-f60c-4891-9160-7ba84d831408', '2025-10-29 10:54:14', 0, 1, '2025-04-30 07:54:14', '2025-04-30 07:54:14'),
(1006, 11, 1006, 1006, 1, '4282a0bf-4ddd-4460-976b-25db7154863b', '2025-10-29 10:54:14', 0, 1, '2025-04-30 07:54:14', '2025-04-30 07:54:14'),
(1007, 11, 1007, 1023, 1, '4147d80b-fb0d-40a0-9cdd-1ee2dd92166b', '2025-10-29 16:15:55', 0, 1, '2025-04-30 13:15:55', '2025-04-30 13:15:55'),
(1008, 11, 1008, 1022, 1, 'c47b9b5a-08f5-4771-83df-f302d9b23c93', '2025-10-29 16:57:02', 0, 1, '2025-04-30 13:57:02', '2025-04-30 13:57:02');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `refunds`
--

CREATE TABLE `refunds` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `purchase_id` bigint UNSIGNED NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1:Pending 2:Accepted 3:Declined',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `refund_replies`
--

CREATE TABLE `refund_replies` (
  `id` bigint UNSIGNED NOT NULL,
  `refund_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `body` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sales`
--

CREATE TABLE `sales` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `item_id` bigint UNSIGNED NOT NULL,
  `license_type` tinyint NOT NULL COMMENT '1:Regular 2:Extended',
  `price` double(18,2) NOT NULL,
  `tax` text,
  `total` double(18,2) NOT NULL,
  `country` varchar(10) DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1:Active 2:Refunded 3:Cancelled',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `item_id`, `license_type`, `price`, `tax`, `total`, `country`, `status`, `created_at`, `updated_at`) VALUES
(1004, 11, 1018, 1, 1350.00, NULL, 1350.00, 'TR', 1, '2025-04-30 07:53:27', '2025-04-30 07:53:27'),
(1005, 11, 1005, 1, 1350.00, NULL, 1350.00, 'TR', 1, '2025-04-30 07:54:14', '2025-04-30 07:54:14'),
(1006, 11, 1006, 1, 1350.00, NULL, 1350.00, 'TR', 1, '2025-04-30 07:54:14', '2025-04-30 07:54:14'),
(1007, 11, 1023, 1, 1500.00, NULL, 1500.00, 'TR', 1, '2025-04-30 13:15:55', '2025-04-30 13:15:55'),
(1008, 11, 1022, 1, 1500.00, NULL, 1500.00, 'TR', 1, '2025-04-30 13:57:02', '2025-04-30 13:57:02');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(1, 'general', '{\"site_name\":\"Wisiva\",\"site_url\":\"https:\\/\\/wisiva.demopaneli.com\",\"date_format\":\"4\",\"timezone\":\"Europe\\/Istanbul\",\"contact_email\":null}'),
(2, 'smtp', '{\"status\":1,\"mailer\":\"smtp\",\"host\":\"https:\\/\\/sc.demopaneli.com\\/\",\"port\":\"587\",\"username\":\"adminsc@iyovex.com\",\"password\":\"adminsc@iyovex.com\",\"encryption\":\"tls\",\"from_email\":\"adminsc@iyovex.com\",\"from_name\":\"dddd\"}'),
(3, 'actions', '{\"registration\":1,\"email_verification\":0,\"gdpr_cookie\":0,\"force_ssl\":0,\"blog\":1,\"tickets\":1,\"refunds\":1,\"contact_page\":0}'),
(4, 'currency', '{\"code\":\"TRY\",\"symbol\":\"₺\",\"position\":\"2\"}'),
(5, 'deposit', '{\"status\":1,\"minimum\":\"10\",\"maximum\":\"1000\"}'),
(6, 'seo', '{\"title\":\"Wisiva\",\"description\":\"Wisiva\",\"keywords\":\"Wisiva\"}'),
(7, 'system_admin', '{\"colors\":{\"primary_color\":\"#ff6900\",\"secondary_color\":\"#1d2734\",\"background_color\":\"#f9fafb\",\"sidebar_background_color\":\"#182949\",\"navbar_background_color\":\"#ffffff\"}}'),
(9, 'kyc', '{\"status\":0,\"selfie_verification\":0,\"required\":0,\"id_front_image\":\"images\\/kyc\\/F6uxReOavrBbRnr_1708719956.svg\",\"id_back_image\":\"images\\/kyc\\/lDNgqlaFCClbRaA_1708720002.svg\",\"passport_image\":\"images\\/kyc\\/QLEDc8sXn6h2e7E_1708729601.svg\",\"selfie_image\":\"images\\/kyc\\/5CwgvmI9gcd067i_1708720379.svg\"}'),
(10, 'item', '{\"buy_now_button\":1,\"item_total_sales\":0,\"free_item_total_downloads\":0,\"reviews_status\":0,\"comments_status\":0,\"support_status\":1,\"changelogs_status\":1,\"free_items_require_login\":0,\"trending_number\":\"20\",\"best_selling_number\":\"20\",\"convert_images_webp\":\"1\",\"file_duration\":\"24\"}'),
(13, 'language', '{\"code\":\"tr\",\"direction\":\"ltr\"}'),
(14, 'links', '{\"terms_of_use_link\":\"\\/mesafeli-satis-sozlesmesi\",\"licenses_terms_link\":\"\\/mesafeli-satis-sozlesmesi\",\"free_items_policy\":\"\\/mesafeli-satis-sozlesmesi\"}'),
(15, 'announcement', '{\"body\":\"Tüm Yazılımlarda Net %50 İndirim.\",\"button_title\":\"Detayları İncele   >\",\"button_link\":\"\\/\",\"background_color\":\"#00c753\",\"button_background_color\":\"#ffffff\",\"button_text_color\":\"#00C753\",\"status\":1}'),
(17, 'cronjob', '{\"key\":\"JxboAWPpRNeg\",\"last_execution\":\"2025-04-15T17:07:01.568690Z\"}'),
(18, 'ticket', '{\"file_types\":\"jpeg,jpg,png,pdf\",\"max_files\":\"5\",\"max_file_size\":\"10\"}'),
(19, 'maintenance', '{\"status\":0,\"title\":\"Bakımdayız!\",\"body\":\"Bakımdayız Metni\",\"password\":\"$2y$10$QjJ.VUruL7nlKJ9GARx46u63ScJbWlfOLTR.dVBUm5wOJpj\\/Q64ni\",\"image\":\"images\\/maintenance\\/rrKIohOTdb7fyo5_1727390834.jpg\"}'),
(21, 'social_links', '{\"facebook\":\"\\/\",\"x\":\"\\/\",\"youtube\":\"\\/\",\"linkedin\":\"\\/\",\"instagram\":\"\\/\",\"pinterest\":\"\\/\"}'),
(24, 'premium', '{\"status\":0,\"terms_link\":\"\\/premium-terms\"}'),
(25, 'newsletter', '{\"status\":1,\"popup_status\":0,\"footer_status\":1,\"register_new_users\":1,\"popup_image\":\"images\\/newsletter\\/lezCcElE6YTIcaZ_1727215505.jpg\",\"popup_reminder_time\":\"24\"}'),
(26, 'api', '{\"status\":0,\"key\":null}');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `statements`
--

CREATE TABLE `statements` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `amount` double(18,2) NOT NULL,
  `type` tinyint NOT NULL COMMENT '1:credit 2:debit',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `statements`
--

INSERT INTO `statements` (`id`, `user_id`, `title`, `amount`, `type`, `created_at`, `updated_at`) VALUES
(1007, 11, 'Yeni Sipariş #1004 (Test Örnek Yazılım 16)', 1350.00, 2, '2025-04-30 07:53:27', '2025-04-30 07:53:27'),
(1008, 11, 'Yeni Sipariş #1005 (Test Örnek Yazılım 3)', 1350.00, 2, '2025-04-30 07:54:14', '2025-04-30 07:54:14'),
(1009, 11, 'Yeni Sipariş #1006 (Test Örnek Yazılım 4)', 1350.00, 2, '2025-04-30 07:54:14', '2025-04-30 07:54:14'),
(1010, 11, 'Yeni Sipariş #1007 (Test Örnek Yazılım 22)', 1500.00, 2, '2025-04-30 13:15:55', '2025-04-30 13:15:55'),
(1011, 11, 'Yeni Sipariş #1008 (Test Örnek Yazılım 21)', 1500.00, 2, '2025-04-30 13:57:02', '2025-04-30 13:57:02');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `storage_providers`
--

CREATE TABLE `storage_providers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `processor` varchar(255) NOT NULL,
  `credentials` longtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `storage_providers`
--

INSERT INTO `storage_providers` (`id`, `name`, `alias`, `processor`, `credentials`, `created_at`, `updated_at`) VALUES
(1, 'Local', 'local', 'App\\Http\\Controllers\\Storage\\LocalController', NULL, '2024-03-06 00:23:02', '2024-03-06 00:23:02');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `plan_id` bigint UNSIGNED NOT NULL,
  `total_downloads` bigint UNSIGNED NOT NULL DEFAULT '0',
  `expiry_at` datetime DEFAULT NULL,
  `last_notification_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `sort_id` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `slug`, `title`, `description`, `category_id`, `views`, `sort_id`, `created_at`, `updated_at`) VALUES
(18, 'Restoran Yazılımları', 'restoran-yazilimlari', NULL, NULL, 2, 12, 5, '2024-09-27 18:07:32', '2025-04-25 23:46:56'),
(19, 'E-Ticaret Yazılımları', 'e-ticaret-yazilimlari', NULL, NULL, 2, 135, 0, '2025-01-10 04:02:42', '2025-05-01 03:27:02'),
(20, 'Avukat & Hukuk Yazılımları', 'avukat-hukuk-yazilimlari', NULL, NULL, 2, 13, 0, '2025-01-10 04:02:50', '2025-05-01 03:29:43'),
(21, 'Eğitim - Okul Yazılımları', 'egitim-okul-yazilimlari', NULL, NULL, 2, 8, 0, '2025-01-10 04:03:02', '2025-04-25 23:46:52'),
(22, 'Emlak Yazılımları', 'emlak-yazilimlari', NULL, NULL, 2, 8, 0, '2025-01-10 04:03:09', '2025-04-23 14:15:57'),
(23, 'İnşaat & Mimarlık Yazılımları', 'insaat-mimarlik-yazilimlari', NULL, NULL, 2, 13, 0, '2025-01-10 04:03:16', '2025-04-30 12:47:15'),
(24, 'Kurumsal Firma Yazılımları', 'kurumsal-firma-yazilimlari', NULL, NULL, 2, 51, 0, '2025-01-10 04:03:25', '2025-05-01 03:27:27'),
(25, 'Otel Yazılımları', 'otel-yazilimlari', NULL, NULL, 2, 9, 0, '2025-01-10 04:03:32', '2025-04-25 09:38:10'),
(26, 'Pazaryeri Yazılımları', 'pazaryeri-yazilimlari', NULL, NULL, 2, 12, 0, '2025-01-10 04:03:38', '2025-04-25 02:41:50'),
(27, 'Rent a Car & Oto Galeri & Yat', 'rent-a-car-oto-galeri-yat', NULL, NULL, 2, 33, 0, '2025-01-10 04:03:46', '2025-05-01 03:29:45'),
(28, 'Restaurant / Cafe Yazılımları', 'restaurant-cafe-yazilimlari', NULL, NULL, 2, 29, 0, '2025-01-10 04:03:54', '2025-04-30 11:39:36'),
(29, 'Tamir & Servis Yazılımları', 'tamir-servis-yazilimlari', NULL, NULL, 2, 13, 0, '2025-01-10 04:04:03', '2025-04-26 08:09:24');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `support_earnings`
--

CREATE TABLE `support_earnings` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `days` bigint UNSIGNED NOT NULL,
  `price` double(18,2) NOT NULL,
  `tax` text,
  `total` double(18,2) NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1:Active 2:Refunded 3:Cancelled',
  `support_expiry_at` datetime NOT NULL,
  `purchase_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `support_periods`
--

CREATE TABLE `support_periods` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `days` bigint UNSIGNED NOT NULL,
  `percentage` int UNSIGNED NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `sort_id` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `support_periods`
--

INSERT INTO `support_periods` (`id`, `name`, `title`, `days`, `percentage`, `is_default`, `sort_id`, `created_at`, `updated_at`) VALUES
(1, '6 Ay', '6 Ay Destek', 182, 0, 1, 0, '2024-07-09 13:46:39', '2025-01-14 08:13:10'),
(2, '12 Ay', '12 Ay Destek', 365, 11, 0, 0, '2024-07-09 13:47:00', '2025-01-14 08:13:22');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `rate` int UNSIGNED NOT NULL,
  `countries` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `stars` int UNSIGNED NOT NULL DEFAULT '5',
  `sort_id` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `themes`
--

CREATE TABLE `themes` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `preview_image` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `themes`
--

INSERT INTO `themes` (`id`, `name`, `alias`, `version`, `preview_image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Basic', 'basic', '1.0', 'themes/basic/images/preview.jpg', 'Basic theme offers a sleek and modern design, prioritizing user-friendly navigation and aesthetics. ', '2023-09-29 22:14:13', '2023-09-29 22:14:17');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `ticket_category_id` bigint UNSIGNED NOT NULL,
  `subject` varchar(255) NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1:Opened 2:Closed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ticket_categories`
--

CREATE TABLE `ticket_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `sort_id` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `ticket_categories`
--

INSERT INTO `ticket_categories` (`id`, `name`, `status`, `sort_id`, `created_at`, `updated_at`) VALUES
(1, 'Teknik Destek', 1, 0, '2025-01-15 02:36:19', '2025-01-15 02:36:19'),
(2, 'Satış Öncesi', 1, 0, '2025-01-15 02:36:29', '2025-01-15 02:36:29');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ticket_replies`
--

CREATE TABLE `ticket_replies` (
  `id` bigint UNSIGNED NOT NULL,
  `body` longtext NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `ticket_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ticket_reply_attachments`
--

CREATE TABLE `ticket_reply_attachments` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `ticket_reply_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `amount` double(18,2) NOT NULL,
  `fees` double(18,2) NOT NULL DEFAULT '0.00',
  `tax` text,
  `total` double(18,2) NOT NULL,
  `payment_gateway_id` bigint UNSIGNED DEFAULT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `payer_id` varchar(255) DEFAULT NULL,
  `payer_email` varchar(255) DEFAULT NULL,
  `payment_proof` varchar(255) DEFAULT NULL,
  `type` enum('purchase','support_purchase','support_extend','deposit','subscription') NOT NULL,
  `support` longtext,
  `purchase_id` bigint UNSIGNED DEFAULT NULL,
  `plan_id` bigint UNSIGNED DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0:Unpaid 1:Pending 2:Paid 3:Cancelled',
  `cancellation_reason` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `amount`, `fees`, `tax`, `total`, `payment_gateway_id`, `payment_id`, `payer_id`, `payer_email`, `payment_proof`, `type`, `support`, `purchase_id`, `plan_id`, `status`, `cancellation_reason`, `created_at`, `updated_at`) VALUES
(1028, 6, 1350.00, 0.00, NULL, 1350.00, NULL, NULL, NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-20 08:38:46', '2025-04-20 08:38:46'),
(1029, 6, 1350.00, 0.00, NULL, 1350.00, NULL, NULL, NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-20 14:35:59', '2025-04-20 14:35:59'),
(1030, 6, 4050.00, 0.00, NULL, 4050.00, NULL, NULL, NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-20 15:12:55', '2025-04-20 15:12:55'),
(1031, 6, 4050.00, 0.00, NULL, 4050.00, NULL, NULL, NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-20 23:15:12', '2025-04-20 23:15:12'),
(1032, 6, 4050.00, 0.00, NULL, 4050.00, NULL, NULL, NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-21 03:38:16', '2025-04-21 03:38:16'),
(1033, 6, 5400.00, 0.00, NULL, 5400.00, NULL, NULL, NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-21 04:18:30', '2025-04-21 04:18:30'),
(1034, 6, 5400.00, 0.00, NULL, 5400.00, NULL, NULL, NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-21 06:00:25', '2025-04-21 06:00:25'),
(1035, 8, 1350.00, 0.00, NULL, 1350.00, NULL, NULL, NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-21 06:38:14', '2025-04-21 06:38:14'),
(1036, 6, 2850.00, 0.00, NULL, 2850.00, NULL, NULL, NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-22 02:15:12', '2025-04-22 02:15:12'),
(1037, 6, 4200.00, 0.00, NULL, 4200.00, NULL, NULL, NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-22 02:55:11', '2025-04-22 02:55:11'),
(1038, 6, 4200.00, 0.00, NULL, 4200.00, NULL, NULL, NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-22 11:17:20', '2025-04-22 11:17:20'),
(1039, 6, 1350.00, 0.00, NULL, 1350.00, NULL, NULL, NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-22 12:50:22', '2025-04-22 12:50:22'),
(1040, 6, 1350.00, 0.00, NULL, 1350.00, NULL, NULL, NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-23 01:56:15', '2025-04-23 01:56:15'),
(1041, 6, 1350.00, 0.00, NULL, 1350.00, NULL, NULL, NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-23 01:57:15', '2025-04-23 01:57:15'),
(1042, 6, 1350.00, 0.00, NULL, 1350.00, NULL, NULL, NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-23 15:06:58', '2025-04-23 15:06:58'),
(1043, 6, 1498.50, 0.00, NULL, 1498.50, NULL, NULL, NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-23 15:13:43', '2025-04-23 15:13:43'),
(1044, 6, 1498.50, 0.00, NULL, 1498.50, NULL, NULL, NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-24 03:20:04', '2025-04-24 03:20:04'),
(1045, 6, 2848.50, 0.00, NULL, 2848.50, NULL, NULL, NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-24 05:38:43', '2025-04-24 05:38:43'),
(1046, 6, 2848.50, 0.00, NULL, 2848.50, NULL, NULL, NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-24 12:54:59', '2025-04-24 12:54:59'),
(1047, 6, 1498.50, 0.00, NULL, 1498.50, NULL, NULL, NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-24 14:41:20', '2025-04-24 14:41:20'),
(1048, 6, 2998.50, 0.00, NULL, 2998.50, NULL, NULL, NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-25 01:02:52', '2025-04-25 01:02:52'),
(1049, 6, 2998.50, 0.00, NULL, 2998.50, NULL, NULL, NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-25 01:34:02', '2025-04-25 01:34:02'),
(1050, 6, 2998.50, 0.00, NULL, 2998.50, NULL, NULL, NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-25 02:04:05', '2025-04-25 02:04:05'),
(1051, 6, 2998.50, 0.00, NULL, 2998.50, NULL, NULL, NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-25 02:04:40', '2025-04-25 02:04:40'),
(1052, 6, 2998.50, 0.00, NULL, 2998.50, NULL, NULL, NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-25 05:19:38', '2025-04-25 05:19:38'),
(1053, 6, 1500.00, 0.00, NULL, 1500.00, NULL, NULL, NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-25 05:22:17', '2025-04-25 05:22:17'),
(1054, 6, 1500.00, 0.00, NULL, 1500.00, NULL, NULL, NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-25 11:22:32', '2025-04-25 11:22:32'),
(1055, 6, 1498.50, 0.00, NULL, 1498.50, NULL, NULL, NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-25 21:33:15', '2025-04-25 21:33:15'),
(1056, 6, 1498.50, 0.00, NULL, 1498.50, NULL, NULL, NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-26 00:51:27', '2025-04-26 00:51:27'),
(1057, 6, 1498.50, 0.00, NULL, 1498.50, NULL, NULL, NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-26 07:33:46', '2025-04-26 07:33:46'),
(1058, 6, 1498.50, 0.00, NULL, 1498.50, NULL, NULL, NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-26 07:34:13', '2025-04-26 07:34:13'),
(1059, 11, 1350.00, 0.00, NULL, 1350.00, NULL, NULL, NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-30 02:02:23', '2025-04-30 02:02:23'),
(1060, 11, 1350.00, 0.00, NULL, 1350.00, 14, '1060_1746012152', NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-30 02:11:30', '2025-04-30 04:22:32'),
(1061, 11, 1350.00, 0.00, NULL, 1350.00, 14, '10611746015962', NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-30 03:33:44', '2025-04-30 05:26:02'),
(1062, 11, 1350.00, 0.00, NULL, 1350.00, 14, '10621746017465', NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-30 05:50:58', '2025-04-30 05:51:05'),
(1063, 11, 1350.00, 0.00, NULL, 1350.00, 14, '10631746017509', NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-30 05:51:43', '2025-04-30 05:51:49'),
(1064, 11, 1350.00, 0.00, NULL, 1350.00, 14, '10641746018581', NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-30 05:53:16', '2025-04-30 06:09:41'),
(1065, 11, 1350.00, 0.00, NULL, 1350.00, 14, '10651746018876', NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-30 06:12:11', '2025-04-30 06:14:36'),
(1066, 11, 1350.00, 0.00, NULL, 1350.00, 14, '10661746018896', NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-30 06:14:49', '2025-04-30 06:14:56'),
(1067, 11, 1350.00, 0.00, NULL, 1350.00, 14, '10671746021385', NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-30 06:56:19', '2025-04-30 06:56:25'),
(1068, 11, 1350.00, 0.00, NULL, 1350.00, 14, NULL, '10681746024807', 'toprak1340.1@gmail.com', NULL, 'purchase', NULL, NULL, NULL, 2, NULL, '2025-04-30 07:49:55', '2025-04-30 07:53:27'),
(1069, 11, 2700.00, 0.00, NULL, 2700.00, 14, NULL, '10691746024854', 'toprak1340.1@gmail.com', NULL, 'purchase', NULL, NULL, NULL, 2, NULL, '2025-04-30 07:54:08', '2025-04-30 07:54:14'),
(1070, 11, 1500.00, 0.00, NULL, 1500.00, 14, '10701746029884', NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-30 07:56:01', '2025-04-30 09:18:04'),
(1071, 11, 1500.00, 0.00, NULL, 1500.00, 14, '10711746040594', NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-30 12:16:23', '2025-04-30 12:16:34'),
(1072, 11, 1500.00, 0.00, NULL, 1500.00, 14, '10721746043167', NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-30 12:30:50', '2025-04-30 12:59:27'),
(1073, 11, 1500.00, 0.00, NULL, 1500.00, 14, NULL, '10731746044155', 'toprak1340.1@gmail.com', NULL, 'purchase', NULL, NULL, NULL, 2, NULL, '2025-04-30 13:14:12', '2025-04-30 13:15:55'),
(1074, 11, 1500.00, 0.00, NULL, 1500.00, 14, '10741746046405', NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-30 13:51:22', '2025-04-30 13:53:25'),
(1075, 11, 1500.00, 0.00, NULL, 1500.00, 14, NULL, '10751746046622', 'toprak1340.1@gmail.com', NULL, 'purchase', NULL, NULL, NULL, 2, NULL, '2025-04-30 13:56:57', '2025-04-30 13:57:02'),
(1076, 13, 2700.00, 0.00, NULL, 2700.00, 10, NULL, NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-30 16:03:42', '2025-04-30 16:04:27'),
(1077, 13, 2700.00, 0.00, NULL, 2700.00, 14, '10771746059745', NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-04-30 17:35:26', '2025-04-30 17:35:45'),
(1078, 6, 1498.50, 0.00, NULL, 1498.50, 14, '10781746097258', NULL, NULL, NULL, 'purchase', NULL, NULL, NULL, 0, NULL, '2025-05-01 04:00:36', '2025-05-01 04:00:58');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `transaction_items`
--

CREATE TABLE `transaction_items` (
  `id` bigint UNSIGNED NOT NULL,
  `transaction_id` bigint UNSIGNED NOT NULL,
  `item_id` bigint UNSIGNED DEFAULT NULL,
  `license_type` tinyint NOT NULL DEFAULT '1' COMMENT '1:Regular 2:Extended',
  `price` double(18,2) NOT NULL,
  `quantity` int UNSIGNED NOT NULL DEFAULT '1',
  `total` double(8,2) NOT NULL,
  `support` longtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `transaction_items`
--

INSERT INTO `transaction_items` (`id`, `transaction_id`, `item_id`, `license_type`, `price`, `quantity`, `total`, `support`, `created_at`, `updated_at`) VALUES
(66, 1028, 1004, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-20 08:38:46', '2025-04-20 08:38:46'),
(67, 1029, 1016, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-20 14:35:59', '2025-04-20 14:35:59'),
(68, 1030, 1004, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-20 15:12:55', '2025-04-20 15:12:55'),
(69, 1030, 1018, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-20 15:12:55', '2025-04-20 15:12:55'),
(70, 1030, 1005, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-20 15:12:55', '2025-04-20 15:12:55'),
(71, 1031, 1004, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-20 23:15:12', '2025-04-20 23:15:12'),
(72, 1031, 1018, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-20 23:15:12', '2025-04-20 23:15:12'),
(73, 1031, 1005, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-20 23:15:12', '2025-04-20 23:15:12'),
(74, 1032, 1004, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-21 03:38:16', '2025-04-21 03:38:16'),
(75, 1032, 1018, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-21 03:38:16', '2025-04-21 03:38:16'),
(76, 1032, 1005, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-21 03:38:16', '2025-04-21 03:38:16'),
(77, 1033, 1004, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-21 04:18:30', '2025-04-21 04:18:30'),
(78, 1033, 1018, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-21 04:18:30', '2025-04-21 04:18:30'),
(79, 1033, 1005, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-21 04:18:30', '2025-04-21 04:18:30'),
(80, 1033, 1012, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-21 04:18:30', '2025-04-21 04:18:30'),
(81, 1034, 1004, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-21 06:00:25', '2025-04-21 06:00:25'),
(82, 1034, 1018, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-21 06:00:25', '2025-04-21 06:00:25'),
(83, 1034, 1005, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-21 06:00:25', '2025-04-21 06:00:25'),
(84, 1034, 1012, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-21 06:00:25', '2025-04-21 06:00:25'),
(85, 1035, 1011, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-21 06:38:14', '2025-04-21 06:38:14'),
(86, 1036, 1023, 1, 1500.00, 1, 1500.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-22 02:15:12', '2025-04-22 02:15:12'),
(87, 1036, 1021, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-22 02:15:12', '2025-04-22 02:15:12'),
(88, 1037, 1023, 1, 1500.00, 1, 1500.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-22 02:55:11', '2025-04-22 02:55:11'),
(89, 1037, 1021, 1, 1350.00, 2, 2700.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":2,\"total\":0}', '2025-04-22 02:55:11', '2025-04-22 02:55:11'),
(90, 1038, 1023, 1, 1500.00, 1, 1500.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-22 11:17:20', '2025-04-22 11:17:20'),
(91, 1038, 1021, 1, 1350.00, 2, 2700.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":2,\"total\":0}', '2025-04-22 11:17:20', '2025-04-22 11:17:20'),
(92, 1039, 1007, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-22 12:50:22', '2025-04-22 12:50:22'),
(93, 1040, 1007, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-23 01:56:15', '2025-04-23 01:56:15'),
(94, 1041, 1007, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-23 01:57:15', '2025-04-23 01:57:15'),
(95, 1042, 1012, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-23 15:06:58', '2025-04-23 15:06:58'),
(96, 1043, 1021, 1, 1350.00, 1, 1350.00, '{\"name\":\"12 Ay\",\"title\":\"12 Ay Destek\",\"days\":365,\"percentage\":11,\"price\":148.5,\"quantity\":1,\"total\":148.5}', '2025-04-23 15:13:43', '2025-04-23 15:13:43'),
(97, 1044, 1021, 1, 1350.00, 1, 1350.00, '{\"name\":\"12 Ay\",\"title\":\"12 Ay Destek\",\"days\":365,\"percentage\":11,\"price\":148.5,\"quantity\":1,\"total\":148.5}', '2025-04-24 03:20:04', '2025-04-24 03:20:04'),
(98, 1045, 1021, 1, 1350.00, 1, 1350.00, '{\"name\":\"12 Ay\",\"title\":\"12 Ay Destek\",\"days\":365,\"percentage\":11,\"price\":148.5,\"quantity\":1,\"total\":148.5}', '2025-04-24 05:38:43', '2025-04-24 05:38:43'),
(99, 1045, 1012, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-24 05:38:43', '2025-04-24 05:38:43'),
(100, 1046, 1021, 1, 1350.00, 1, 1350.00, '{\"name\":\"12 Ay\",\"title\":\"12 Ay Destek\",\"days\":365,\"percentage\":11,\"price\":148.5,\"quantity\":1,\"total\":148.5}', '2025-04-24 12:55:00', '2025-04-24 12:55:00'),
(101, 1046, 1012, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-24 12:55:00', '2025-04-24 12:55:00'),
(102, 1047, 1021, 1, 1350.00, 1, 1350.00, '{\"name\":\"12 Ay\",\"title\":\"12 Ay Destek\",\"days\":365,\"percentage\":11,\"price\":148.5,\"quantity\":1,\"total\":148.5}', '2025-04-24 14:41:20', '2025-04-24 14:41:20'),
(103, 1048, 1021, 1, 1350.00, 1, 1350.00, '{\"name\":\"12 Ay\",\"title\":\"12 Ay Destek\",\"days\":365,\"percentage\":11,\"price\":148.5,\"quantity\":1,\"total\":148.5}', '2025-04-25 01:02:52', '2025-04-25 01:02:52'),
(104, 1048, 1022, 1, 1500.00, 1, 1500.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-25 01:02:52', '2025-04-25 01:02:52'),
(105, 1049, 1021, 1, 1350.00, 1, 1350.00, '{\"name\":\"12 Ay\",\"title\":\"12 Ay Destek\",\"days\":365,\"percentage\":11,\"price\":148.5,\"quantity\":1,\"total\":148.5}', '2025-04-25 01:34:02', '2025-04-25 01:34:02'),
(106, 1049, 1022, 1, 1500.00, 1, 1500.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-25 01:34:02', '2025-04-25 01:34:02'),
(107, 1050, 1021, 1, 1350.00, 1, 1350.00, '{\"name\":\"12 Ay\",\"title\":\"12 Ay Destek\",\"days\":365,\"percentage\":11,\"price\":148.5,\"quantity\":1,\"total\":148.5}', '2025-04-25 02:04:05', '2025-04-25 02:04:05'),
(108, 1050, 1022, 1, 1500.00, 1, 1500.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-25 02:04:05', '2025-04-25 02:04:05'),
(109, 1051, 1021, 1, 1350.00, 1, 1350.00, '{\"name\":\"12 Ay\",\"title\":\"12 Ay Destek\",\"days\":365,\"percentage\":11,\"price\":148.5,\"quantity\":1,\"total\":148.5}', '2025-04-25 02:04:40', '2025-04-25 02:04:40'),
(110, 1051, 1022, 1, 1500.00, 1, 1500.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-25 02:04:40', '2025-04-25 02:04:40'),
(111, 1052, 1021, 1, 1350.00, 1, 1350.00, '{\"name\":\"12 Ay\",\"title\":\"12 Ay Destek\",\"days\":365,\"percentage\":11,\"price\":148.5,\"quantity\":1,\"total\":148.5}', '2025-04-25 05:19:38', '2025-04-25 05:19:38'),
(112, 1052, 1022, 1, 1500.00, 1, 1500.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-25 05:19:38', '2025-04-25 05:19:38'),
(113, 1053, 1023, 1, 1500.00, 1, 1500.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-25 05:22:17', '2025-04-25 05:22:17'),
(114, 1054, 1023, 1, 1500.00, 1, 1500.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-25 11:22:32', '2025-04-25 11:22:32'),
(115, 1055, 1021, 1, 1350.00, 1, 1350.00, '{\"name\":\"12 Ay\",\"title\":\"12 Ay Destek\",\"days\":365,\"percentage\":11,\"price\":148.5,\"quantity\":1,\"total\":148.5}', '2025-04-25 21:33:15', '2025-04-25 21:33:15'),
(116, 1056, 1021, 1, 1350.00, 1, 1350.00, '{\"name\":\"12 Ay\",\"title\":\"12 Ay Destek\",\"days\":365,\"percentage\":11,\"price\":148.5,\"quantity\":1,\"total\":148.5}', '2025-04-26 00:51:27', '2025-04-26 00:51:27'),
(117, 1057, 1021, 1, 1350.00, 1, 1350.00, '{\"name\":\"12 Ay\",\"title\":\"12 Ay Destek\",\"days\":365,\"percentage\":11,\"price\":148.5,\"quantity\":1,\"total\":148.5}', '2025-04-26 07:33:46', '2025-04-26 07:33:46'),
(118, 1058, 1021, 1, 1350.00, 1, 1350.00, '{\"name\":\"12 Ay\",\"title\":\"12 Ay Destek\",\"days\":365,\"percentage\":11,\"price\":148.5,\"quantity\":1,\"total\":148.5}', '2025-04-26 07:34:13', '2025-04-26 07:34:13'),
(119, 1059, 1018, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-30 02:02:23', '2025-04-30 02:02:23'),
(120, 1060, 1018, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-30 02:11:30', '2025-04-30 02:11:30'),
(121, 1061, 1018, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-30 03:33:44', '2025-04-30 03:33:44'),
(122, 1062, 1018, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-30 05:50:58', '2025-04-30 05:50:58'),
(123, 1063, 1018, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-30 05:51:43', '2025-04-30 05:51:43'),
(124, 1064, 1018, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-30 05:53:16', '2025-04-30 05:53:16'),
(125, 1065, 1018, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-30 06:12:11', '2025-04-30 06:12:11'),
(126, 1066, 1018, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-30 06:14:49', '2025-04-30 06:14:49'),
(127, 1067, 1018, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-30 06:56:19', '2025-04-30 06:56:19'),
(128, 1068, 1018, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-30 07:49:55', '2025-04-30 07:49:55'),
(129, 1069, 1005, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-30 07:54:09', '2025-04-30 07:54:09'),
(130, 1069, 1006, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-30 07:54:09', '2025-04-30 07:54:09'),
(131, 1070, 1023, 1, 1500.00, 1, 1500.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-30 07:56:02', '2025-04-30 07:56:02'),
(132, 1071, 1023, 1, 1500.00, 1, 1500.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-30 12:16:24', '2025-04-30 12:16:24'),
(133, 1072, 1023, 1, 1500.00, 1, 1500.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-30 12:30:50', '2025-04-30 12:30:50'),
(134, 1073, 1023, 1, 1500.00, 1, 1500.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-30 13:14:12', '2025-04-30 13:14:12'),
(135, 1074, 1022, 1, 1500.00, 1, 1500.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-30 13:51:22', '2025-04-30 13:51:22'),
(136, 1075, 1022, 1, 1500.00, 1, 1500.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-30 13:56:57', '2025-04-30 13:56:57'),
(137, 1076, 1019, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-30 16:03:42', '2025-04-30 16:03:42'),
(138, 1076, 1017, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-30 16:03:42', '2025-04-30 16:03:42'),
(139, 1077, 1019, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-30 17:35:26', '2025-04-30 17:35:26'),
(140, 1077, 1017, 1, 1350.00, 1, 1350.00, '{\"name\":\"6 Ay\",\"title\":\"6 Ay Destek\",\"days\":182,\"percentage\":0,\"price\":0,\"quantity\":1,\"total\":0}', '2025-04-30 17:35:26', '2025-04-30 17:35:26'),
(141, 1078, 1021, 1, 1350.00, 1, 1350.00, '{\"name\":\"12 Ay\",\"title\":\"12 Ay Destek\",\"days\":365,\"percentage\":11,\"price\":148.5,\"quantity\":1,\"total\":148.5}', '2025-05-01 04:00:36', '2025-05-01 04:00:36');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `translates`
--

CREATE TABLE `translates` (
  `id` bigint UNSIGNED NOT NULL,
  `key` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Tablo döküm verisi `translates`
--

INSERT INTO `translates` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'The :attribute field must be accepted.', 'The :attribute alanı kabul edilmelidir.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(2, 'The :attribute field must be accepted when :other is :value.', ':attribute alanı, :other :value olduğunda kabul edilmelidir.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(3, 'The :attribute field must be a valid URL.', ':attribute alanı geçerli bir URL olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(4, 'The :attribute field must be a date after :date.', ':attribute alanı, :date tarihinden sonra bir tarih olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(5, 'The :attribute field must be a date after or equal to :date.', ':attribute alanı, :date tarihinden sonra veya eşit bir tarih olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(6, 'The :attribute field must only contain letters.', ':attribute alanı yalnızca harfler içermelidir.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(7, 'The :attribute field must only contain letters, numbers, dashes, and underscores.', ':attribute alanı yalnızca harfler, sayılar, tireler ve alt çizgiler içermelidir.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(8, 'The :attribute field must only contain letters and numbers.', ':attribute alanı yalnızca harfler ve sayılar içermelidir.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(9, 'The :attribute field must be an array.', ':attribute alanı bir dizi olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(10, 'The :attribute field must only contain single-byte alphanumeric characters and symbols.', ':attribute alanı yalnızca tek baytlık alfasayısal karakterler ve semboller içermelidir.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(11, 'The :attribute field must be a date before :date.', ':attribute alanı, :date tarihinden önce bir tarih olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(12, 'The :attribute field must be a date before or equal to :date.', ':attribute alanı, :date tarihinden önce veya eşit bir tarih olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(13, 'The :attribute field must have between :min and :max items.', ':attribute alanı, :min ile :max arasında öğe içermelidir.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(14, 'The :attribute field must be between :min and :max kilobytes.', ':attribute alanı, :min ile :max kilobayt arasında olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(15, 'The :attribute field must be between :min and :max.', ':attribute alanı, :min ile :max arasında olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(16, 'The :attribute field must be between :min and :max characters.', ':attribute alanı, :min ile :max karakter arasında olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(17, 'The :attribute field must be true or false.', ':attribute alanı doğru veya yanlış olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(18, 'The :attribute field contains an unauthorized value.', ':attribute alanı yetkisiz bir değer içeriyor.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(19, 'The :attribute field confirmation does not match.', ':attribute alanı onayı eşleşmiyor.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(20, 'The :attribute field must be a valid date.', ':attribute alanı geçerli bir tarih olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(21, 'The :attribute field must be a date equal to :date.', ':attribute alanı, :date tarihine eşit bir tarih olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(22, 'The :attribute field must match the format :format.', ':attribute alanı :format formatına uymalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(23, 'The password is incorrect.', 'Şifre yanlış.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(24, 'The :attribute field must have :decimal decimal places.', ':attribute alanı, :decimal ondalık basamağa sahip olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(25, 'The :attribute field must be declined.', ':attribute alanı reddedilmelidir.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(26, 'The :attribute field must be declined when :other is :value.', ':attribute alanı, :other :value olduğunda reddedilmelidir.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(27, 'The :attribute field and :other must be different.', ':attribute alanı ve :other farklı olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(28, 'The :attribute field must be :digits digits.', ':attribute alanı :digits haneli olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(29, 'The :attribute field must be between :min and :max digits.', ':attribute alanı, :min ile :max haneler arasında olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(30, 'The :attribute field has invalid image dimensions.', ':attribute alanı geçersiz resim boyutlarına sahiptir.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(31, 'The :attribute field has a duplicate value.', ':attribute alanı, tekrarlanan bir değere sahiptir.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(32, 'The :attribute field must not end with one of the following: :values.', ':attribute alanı, aşağıdaki değerlerden biriyle bitmemelidir: :values.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(33, 'The :attribute field must not start with one of the following: :values.', ':attribute alanı, aşağıdaki değerlerden biriyle başlamamalıdır: :values.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(34, 'The :attribute field must be a valid email address.', ':attribute alanı geçerli bir e-posta adresi olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(35, 'The :attribute field must be a valid username.', ':attribute alanı geçerli bir kullanıcı adı olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(36, 'The :attribute field must end with one of the following: :values.', ':attribute alanı, aşağıdaki değerlerden biriyle bitmelidir: :values.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(37, 'The selected :attribute is invalid.', 'Seçilen :attribute geçersiz.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(38, 'The :attribute field must be a file.', ':attribute alanı bir dosya olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(39, 'The :attribute field must have a value.', ':attribute alanı bir değere sahip olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(40, 'The :attribute field must have more than :value items.', ':attribute alanı, :value öğeden fazla olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(41, 'The :attribute field must be greater than :value kilobytes.', ':attribute alanı, :value kilobayttan büyük olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(42, 'The :attribute field must be greater than :value.', ':attribute alanı, :value değerinden büyük olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(43, 'The :attribute field must be greater than :value characters.', ':attribute alanı, :value karakterden büyük olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(44, 'The :attribute field must have :value items or more.', ':attribute alanı, :value öğe veya daha fazla olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(45, 'The :attribute field must be greater than or equal to :value kilobytes.', ':attribute alanı, :value kilobayttan büyük veya ona eşit olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(46, 'The :attribute field must be greater than or equal to :value.', ':attribute alanı, :value değerinden büyük veya ona eşit olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(47, 'The :attribute field must be greater than or equal to :value characters.', ':attribute alanı, :value karakterden büyük veya ona eşit olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(48, 'The :attribute field must be an image.', ':attribute alanı bir resim olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(49, 'The :attribute field must exist in :other.', ':attribute alanı, :other içinde var olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(50, 'The :attribute field must be an integer.', ':attribute alanı bir tam sayı olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(51, 'The :attribute field must be a valid IP address.', ':attribute alanı geçerli bir IP adresi olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(52, 'The :attribute field must be a valid IPv4 address.', ':attribute alanı geçerli bir IPv4 adresi olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(53, 'The :attribute field must be a valid IPv6 address.', ':attribute alanı geçerli bir IPv6 adresi olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(54, 'The :attribute field must be a valid JSON string.', ':attribute alanı geçerli bir JSON dizgesi olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(55, 'The :attribute field must be lowercase.', ':attribute alanı küçük harf olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(56, 'The :attribute field must have less than :value items.', ':attribute alanı, :value öğeden az olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(57, 'The :attribute field must be less than :value kilobytes.', ':attribute alanı, :value kilobayttan küçük olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(58, 'The :attribute field must be less than :value.', ':attribute alanı :value değerinden küçük olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(59, 'The :attribute field must be less than :value characters.', ':attribute alanı :value karakterden küçük olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(60, 'The :attribute field must not have more than :value items.', ':attribute alanı :value öğeden fazla olmamalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(61, 'The :attribute field must be less than or equal to :value kilobytes.', ':attribute alanı :value kilobayttan küçük veya eşit olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(62, 'The :attribute field must be less than or equal to :value.', ':attribute alanı :value değerinden küçük veya eşit olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(63, 'The :attribute field must be less than or equal to :value characters.', ':attribute alanı :value karakterden küçük veya eşit olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(64, 'The :attribute field must be a valid MAC address.', ':attribute alanı geçerli bir MAC adresi olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(65, 'The :attribute field must not have more than :max items.', ':attribute alanı :max öğeden fazla olmamalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(66, 'The :attribute field must not be greater than :max kilobytes.', ':attribute alanı :max kilobayttan büyük olmamalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(67, 'The :attribute field must not be greater than :max.', ':attribute alanı :max değerinden büyük olmamalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(68, 'The :attribute field must not be greater than :max characters.', ':attribute alanı :max karakterden büyük olmamalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(69, 'The :attribute field must not have more than :max digits.', ':attribute alanı :max rakamdan fazla olmamalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(70, 'The :attribute field must be a file of type: :values.', ':attribute alanı :values türünde bir dosya olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(71, 'The :attribute field must have at least :min items.', ':attribute alanı en az :min öğe içermelidir.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(72, 'The :attribute field must be at least :min kilobytes.', ':attribute alanı en az :min kilobyte olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(73, 'The :attribute field must be at least :min.', ':attribute alanı en az :min olmalıdır.', '2024-05-15 16:57:40', '2024-05-15 16:57:40'),
(74, 'The :attribute field must be at least :min characters.', ':attribute alanı en az :min karakter olmalıdır.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(75, 'The :attribute field must have at least :min digits.', ':attribute alanı en az :min rakam içermelidir.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(76, 'The :attribute field must be missing.', ':attribute alanı eksik olmalıdır.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(77, 'The :attribute field must be missing when :other is :value.', ':attribute alanı :other :value olduğunda eksik olmalıdır.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(78, 'The :attribute field must be missing unless :other is :value.', ':attribute alanı :other :value olmadığı sürece eksik olmalıdır.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(79, 'The :attribute field must be missing when :values is present.', ':attribute alanı :values mevcut olduğunda eksik olmalıdır.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(80, 'The :attribute field must be missing when :values are present.', ':attribute alanı :values mevcut olduğunda eksik olmalıdır.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(81, 'The :attribute field must be a multiple of :value.', ':attribute alanı :value katları olmalıdır.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(82, 'The :attribute field format is invalid.', ':attribute alanı formatı geçersizdir.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(83, 'The :attribute field must be a number.', ':attribute alanı bir sayı olmalıdır.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(84, 'The :attribute field must contain at least one letter.', ':attribute alanı en az bir harf içermelidir.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(85, 'The :attribute field must contain at least one uppercase and one lowercase letter.', ':attribute alanı en az bir büyük ve bir küçük harf içermelidir.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(86, 'The :attribute field must contain at least one number.', ':attribute alanı en az bir sayı içermelidir.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(87, 'The :attribute field must contain at least one symbol.', ':attribute alanı en az bir sembol içermelidir.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(88, 'The given :attribute has appeared in a data leak. Please choose a different :attribute.', 'Verilen :attribute bir veri sızıntısında ortaya çıktı. Lütfen farklı bir :attribute seçin.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(89, 'The :attribute field must be present.', ':attribute alanı mevcut olmalıdır.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(90, 'The :attribute field is prohibited.', ':attribute alanı yasaktır.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(91, 'The :attribute field is prohibited when :other is :value.', ':attribute alanı :other :value olduğunda yasaktır.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(92, 'The :attribute field is prohibited unless :other is in :values.', ':attribute alanı, :other :values içinde olmadıkça yasaktır.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(93, 'The :attribute field prohibits :other from being present.', ':attribute alanı, :other\'ın mevcut olmasına engel olur.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(94, 'The :attribute field is required.', ':attribute alanı gereklidir.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(95, 'The :attribute field must contain entries for: :values.', ':attribute alanı :values için girişler içermelidir.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(96, 'The :attribute field is required when :other is :value.', ':attribute alanı :other :value olduğunda gereklidir.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(97, 'The :attribute field is required when :other is accepted.', ':attribute alanı, :other kabul edildiğinde gereklidir.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(98, 'The :attribute field is required unless :other is in :values.', ':attribute alanı, :other :values içinde olmadığı sürece gereklidir.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(99, 'The :attribute field is required when :values is present.', ':attribute alanı, :values mevcut olduğunda gereklidir.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(100, 'The :attribute field is required when :values are present.', ':attribute alanı, :values mevcut olduğunda gereklidir.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(101, 'The :attribute field is required when :values is not present.', ':attribute alanı, :values mevcut olmadığında gereklidir.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(102, 'The :attribute field is required when none of :values are present.', ':attribute alanı, :values öğelerinin hiçbiri mevcut olmadığında gereklidir.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(103, 'The :attribute field must match :other.', ':attribute alanı, :other ile eşleşmelidir.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(104, 'The :attribute field must contain :size items.', ':attribute alanı, :size öğe içermelidir.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(105, 'The :attribute field must be :size kilobytes.', ':attribute alanı, :size kilobayt olmalıdır.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(106, 'The :attribute field must be :size.', ':attribute alanı, :size olmalıdır.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(107, 'The :attribute field must be :size characters.', ':attribute alanı, :size karakter olmalıdır.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(108, 'The :attribute field must start with one of the following: :values.', ':attribute alanı, aşağıdakilerden biri ile başlamalıdır: :values.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(109, 'The :attribute field must be a string.', ':attribute alanı bir dize olmalıdır.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(110, 'The :attribute field must be a valid timezone.', ':attribute alanı geçerli bir zaman dilimi olmalıdır.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(111, 'The :attribute has already been taken.', ':attribute zaten alınmış.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(112, 'The :attribute failed to upload.', ':attribute yüklenemedi.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(113, 'The :attribute field must be uppercase.', ':attribute alanı büyük harf olmalıdır.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(114, 'The :attribute field must be a valid ULID.', ':attribute alanı geçerli bir ULID olmalıdır.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(115, 'The :attribute field must be a valid UUID.', ':attribute alanı geçerli bir UUID olmalıdır.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(116, 'captcha', 'captcha', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(117, 'terms of service', 'hizmet şartlarını kabul ediyorum.', '2024-05-15 16:57:41', '2025-01-09 22:04:46'),
(118, 'Phone number must be a valid 10-digit phone number.', 'Telefon numarası geçerli bir 10 haneli telefon numarası olmalıdır.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(119, 'The :attribute contains blocked patterns.', ':attribute engellenmiş desenler içeriyor.', '2024-05-15 16:57:41', '2024-05-15 16:57:41'),
(120, 'These credentials do not match our records.', 'Bu kimlik bilgileri kayıtlarımızla eşleşmiyor.', '2024-05-15 16:58:09', '2024-05-16 06:16:16'),
(121, 'The provided password is incorrect.', 'Sağlanan şifre hatalıdır.', '2024-05-15 16:58:09', '2024-05-15 16:58:09'),
(122, 'Too many login attempts. Please try again in :seconds seconds.', 'Çok fazla giriş denemesi yapıldı. Lütfen :seconds saniye içinde tekrar deneyin.', '2024-05-15 16:58:09', '2024-05-15 16:58:09'),
(123, 'Your password has been reset!', 'Şifreniz sıfırlandı!', '2024-05-15 16:58:20', '2024-05-15 16:58:20'),
(124, 'We have emailed your password reset link!', 'Şifre sıfırlama bağlantınızı e-posta ile gönderdik!', '2024-05-15 16:58:20', '2024-05-15 16:58:20'),
(125, 'Please wait before retrying.', 'Lütfen yeniden denemeden önce bekleyin.', '2024-05-15 16:58:20', '2024-05-15 16:58:20'),
(126, 'This password reset token is invalid.', 'Bu şifre sıfırlama bağlantısı geçersiz.', '2024-05-15 16:58:20', '2024-05-15 16:58:20'),
(127, 'We can\'t find a user with that email address.', 'Bu e-posta adresiyle bir kullanıcı bulamıyoruz.', '2024-05-15 16:58:20', '2024-05-15 16:58:20'),
(128, 'Previous', 'Önceki', '2024-05-15 16:58:30', '2024-05-15 16:58:30'),
(129, 'Next', 'Sonraki', '2024-05-15 16:58:30', '2024-05-15 16:58:30'),
(130, 'Afghanistan', 'Afganistan', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(131, 'Albania', 'Arnavutluk', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(132, 'Algeria', 'Cezayir', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(133, 'American Samoa', 'Amerikan Samoası', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(134, 'Andorra', 'Andorra', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(135, 'Angola', 'Angola', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(136, 'Anguilla', 'Anguilla', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(137, 'Antarctica', 'Antarktika', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(138, 'Antigua and Barbuda', 'Antigua ve Barbuda', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(139, 'Argentina', 'Arjantin', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(140, 'Armenia', 'Ermenistan', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(141, 'Aruba', 'Aruba', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(142, 'Australia', 'Avustralya', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(143, 'Austria', 'Avusturya', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(144, 'Azerbaijan', 'Azerbaycan', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(145, 'Bahamas', 'Bahamalar', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(146, 'Bahrain', 'Bahreyn', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(147, 'Bangladesh', 'Bangladeş', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(148, 'Barbados', 'Barbados', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(149, 'Belarus', 'Beyaz Rusya', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(150, 'Belgium', 'Belçika', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(151, 'Belize', 'Belize', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(152, 'Benin', 'Benin', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(153, 'Bermuda', 'Bermuda', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(154, 'Bhutan', 'Butan', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(155, 'Bolivia', 'Bolivya', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(156, 'Bosnia and Herzegovina', 'Bosna-Hersek', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(157, 'Botswana', 'Botsvana', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(158, 'Bouvet Island', 'Bouvet Adası', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(159, 'Brazil', 'Brezilya', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(160, 'British Antarctic Territory', 'Britanya Antarktik Toprağı', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(161, 'British Indian Ocean Territory', 'Britanya Hint Okyanusu Toprağı', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(162, 'British Virgin Islands', 'Britanya Virgin Adaları', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(163, 'Brunei', 'Brunei', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(164, 'Bulgaria', 'Bulgaristan', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(165, 'Burkina Faso', 'Burkina Faso', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(166, 'Burundi', 'Burundi', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(167, 'Cambodia', 'Kamboçya', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(168, 'Cameroon', 'Kamerun', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(169, 'Canada', 'Kanada', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(170, 'Canton and Enderbury Islands', 'Canton ve Enderbury Adaları', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(171, 'Cape Verde', 'Yeşil Burun Adaları', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(172, 'Cayman Islands', 'Cayman Adaları', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(173, 'Central African Republic', 'Orta Afrika Cumhuriyeti', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(174, 'Chad', 'Çad', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(175, 'Chile', 'Şili', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(176, 'China', 'Çin', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(177, 'Christmas Island', 'Noel Adası', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(178, 'Cocos [Keeling] Islands', 'Cocos [Keeling] Adaları', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(179, 'Colombia', 'Kolombiya', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(180, 'Comoros', 'Komorlar', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(181, 'Congo - Brazzaville', 'Kongo - Brazzaville', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(182, 'Congo - Kinshasa', 'Kongo - Kinshasa', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(183, 'Cook Islands', 'Cook Adaları', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(184, 'Costa Rica', 'Kosta Rika', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(185, 'Croatia', 'Hırvatistan', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(186, 'Cuba', 'Küba', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(187, 'Cyprus', 'Kıbrıs', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(188, 'Czech Republic', 'Çek Cumhuriyeti', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(189, 'Côte d’Ivoire', 'Fildişi Sahili', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(190, 'Denmark', 'Danimarka', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(191, 'Djibouti', 'Cibuti', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(192, 'Dominica', 'Dominika', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(193, 'Dominican Republic', 'Dominik Cumhuriyeti', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(194, 'Dronning Maud Land', 'Dronning Maud Toprağı', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(195, 'East Germany', 'Doğu Almanya', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(196, 'Ecuador', 'Ekvador', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(197, 'Egypt', 'Mısır', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(198, 'El Salvador', 'El Salvador', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(199, 'Equatorial Guinea', 'Ekvator Ginesi', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(200, 'Eritrea', 'Eritre', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(201, 'Estonia', 'Estonya', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(202, 'Ethiopia', 'Etiyopya', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(203, 'Falkland Islands', 'Falkland Adaları', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(204, 'Faroe Islands', 'Faroe Adaları', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(205, 'Fiji', 'Fiji', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(206, 'Finland', 'Finlandiya', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(207, 'France', 'Fransa', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(208, 'French Guiana', 'Fransız Guyanası', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(209, 'French Polynesia', 'Fransız Polinezyası', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(210, 'French Southern Territories', 'Fransız Güney Toprakları', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(211, 'French Southern and Antarctic Territories', 'Fransız Güney ve Antarktik Toprakları', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(212, 'Gabon', 'Gabon', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(213, 'Gambia', 'Gambiya', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(214, 'Georgia', 'Gürcistan', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(215, 'Germany', 'Almanya', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(216, 'Ghana', 'Gana', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(217, 'Gibraltar', 'Cebelitarık', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(218, 'Greece', 'Yunanistan', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(219, 'Greenland', 'Grönland', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(220, 'Grenada', 'Grenada', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(221, 'Guadeloupe', 'Guadeloupe', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(222, 'Guam', 'Guam', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(223, 'Guatemala', 'Guatemala', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(224, 'Guernsey', 'Guernsey', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(225, 'Guinea', 'Gine', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(226, 'Guinea-Bissau', 'Gine-Bisau', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(227, 'Guyana', 'Guyana', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(228, 'Haiti', 'Haiti', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(229, 'Heard Island and McDonald Islands', 'Heard Adası ve McDonald Adaları', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(230, 'Honduras', 'Honduras', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(231, 'Hong Kong SAR China', 'Hong Kong SAR Çin', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(232, 'Hungary', 'Macaristan', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(233, 'Iceland', 'İzlanda', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(234, 'India', 'Hindistan', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(235, 'Indonesia', 'Endonezya', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(236, 'Iran', 'İran', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(237, 'Iraq', 'Irak', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(238, 'Ireland', 'İrlanda', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(239, 'Isle of Man', 'Man Adası', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(240, 'Israel', 'İsrail', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(241, 'Italy', 'İtalya', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(242, 'Jamaica', 'Jamaika', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(243, 'Japan', 'Japonya', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(244, 'Jersey', 'Jersey', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(245, 'Johnston Island', 'Johnston Adası', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(246, 'Jordan', 'Ürdün', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(247, 'Kazakhstan', 'Kazakistan', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(248, 'Kenya', 'Kenya', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(249, 'Kiribati', 'Kiribati', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(250, 'Kuwait', 'Kuveyt', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(251, 'Kyrgyzstan', 'Kırgızistan', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(252, 'Laos', 'Laos', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(253, 'Latvia', 'Letonya', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(254, 'Lebanon', 'Lübnan', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(255, 'Lesotho', 'Lesotho', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(256, 'Liberia', 'Liberya', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(257, 'Libya', 'Libya', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(258, 'Liechtenstein', 'Lihtenştayn', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(259, 'Lithuania', 'Litvanya', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(260, 'Luxembourg', 'Lüksemburg', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(261, 'Macau SAR China', 'Makau SAR Çin', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(262, 'Macedonia', 'Kuzey Makedonya', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(263, 'Madagascar', 'Madagaskar', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(264, 'Malawi', 'Malavi', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(265, 'Malaysia', 'Malezya', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(266, 'Maldives', 'Maldivler', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(267, 'Mali', 'Mali', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(268, 'Malta', 'Malta', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(269, 'Marshall Islands', 'Marshall Adaları', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(270, 'Martinique', 'Martinik', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(271, 'Mauritania', 'Mauritus', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(272, 'Mauritius', 'Mauritius', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(273, 'Mayotte', 'Mayotte', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(274, 'Metropolitan France', 'Fransa Metropolü', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(275, 'Mexico', 'Meksika', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(276, 'Micronesia', 'Mikronezya', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(277, 'Midway Islands', 'Midway Adaları', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(278, 'Moldova', 'Moldova', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(279, 'Monaco', 'Monako', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(280, 'Mongolia', 'Moğolistan', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(281, 'Montenegro', 'Karadağ', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(282, 'Montserrat', 'Montserrat', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(283, 'Morocco', 'Fas', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(284, 'Mozambique', 'Mozambik', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(285, 'Myanmar [Burma]', 'Myanmar [Burma]', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(286, 'Namibia', 'Namibya', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(287, 'Nauru', 'Nauru', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(288, 'Nepal', 'Nepal', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(289, 'Netherlands', 'Hollanda', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(290, 'Netherlands Antilles', 'Hollanda Antilleri', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(291, 'Neutral Zone', 'Nötr Bölge', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(292, 'New Caledonia', 'Yeni Kaledonya', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(293, 'New Zealand', 'Yeni Zelanda', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(294, 'Nicaragua', 'Nikaragua', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(295, 'Niger', 'Nijer', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(296, 'Nigeria', 'Nijerya', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(297, 'Niue', 'Niue', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(298, 'Norfolk Island', 'Norfolk Adası', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(299, 'North Korea', 'Kuzey Kore', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(300, 'North Vietnam', 'Kuzey Vietnam', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(301, 'Northern Mariana Islands', 'Kuzey Mariana Adaları', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(302, 'Norway', 'Norveç', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(303, 'Oman', 'Umman', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(304, 'Pacific Islands Trust Territory', 'Pasifik Adaları Güven Bölgesi', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(305, 'Pakistan', 'Pakistan', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(306, 'Palau', 'Palau', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(307, 'Palestinian Territories', 'Filistin Toprakları', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(308, 'Panama', 'Panama', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(309, 'Panama Canal Zone', 'Panama Kanal Bölgesi', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(310, 'Papua New Guinea', 'Papua Yeni Gine', '2024-05-15 18:16:32', '2024-05-15 18:16:32'),
(311, 'Paraguay', 'Paraguay', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(312, 'People\'s Democratic Republic of Yemen', 'Yemen Halk Cumhuriyeti', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(313, 'Peru', 'Peru', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(314, 'Philippines', 'Filipinler', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(315, 'Pitcairn Islands', 'Pitcairn Adaları', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(316, 'Poland', 'Polonya', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(317, 'Portugal', 'Portekiz', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(318, 'Puerto Rico', 'Porto Riko', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(319, 'Qatar', 'Katar', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(320, 'Romania', 'Romanya', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(321, 'Russia', 'Rusya', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(322, 'Rwanda', 'Ruanda', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(323, 'Réunion', 'Réunion', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(324, 'Saint Barthélemy', 'Saint Barthélemy', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(325, 'Saint Helena', 'Saint Helena', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(326, 'Saint Kitts and Nevis', 'Saint Kitts ve Nevis', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(327, 'Saint Lucia', 'Saint Lucia', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(328, 'Saint Martin', 'Saint Martin', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(329, 'Saint Pierre and Miquelon', 'Saint Pierre ve Miquelon', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(330, 'Saint Vincent and the Grenadines', 'Saint Vincent ve Grenadinler', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(331, 'Samoa', 'Samoa', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(332, 'San Marino', 'San Marino', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(333, 'Saudi Arabia', 'Suudi Arabistan', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(334, 'Senegal', 'Senegal', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(335, 'Serbia', 'Sırbistan', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(336, 'Serbia and Montenegro', 'Sırbistan ve Karadağ', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(337, 'Seychelles', 'Seyşeller', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(338, 'Sierra Leone', 'Sierra Leone', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(339, 'Singapore', 'Singapur', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(340, 'Slovakia', 'Slovakya', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(341, 'Slovenia', 'Slovenya', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(342, 'Solomon Islands', 'Solomon Adaları', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(343, 'Somalia', 'Somali', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(344, 'South Africa', 'Güney Afrika', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(345, 'South Georgia and the South Sandwich Islands', 'Güney Georgiya ve Güney Sandwich Adaları', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(346, 'South Korea', 'Güney Kore', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(347, 'İspanya', 'İspanya', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(348, 'Sri Lanka', 'Sri Lanka', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(349, 'Sudan', 'Sudan', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(350, 'Surinam', 'Surinam', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(351, 'Svalbard ve Jan Mayen', 'Svalbard ve Jan Mayen', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(352, 'Svaziland', 'Svaziland', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(353, 'Sweden', 'İsveç', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(354, 'Switzerland', 'İsviçre', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(355, 'Syria', 'Suriye', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(356, 'São Tomé and Príncipe', 'São Tomé ve Príncipe', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(357, 'Taiwan', 'Tayvan', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(358, 'Tajikistan', 'Tacikistan', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(359, 'Tanzania', 'Tanzanya', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(360, 'Thailand', 'Tayland', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(361, 'East Timor', 'Timor-Leste', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(362, 'Togo', 'Togo', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(363, 'Tokelau', 'Tokelau', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(364, 'Tonga', 'Tonga', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(365, 'Trinidad and Tobago', 'Trinidad ve Tobago', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(366, 'Tunisia', 'Tunus', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(367, 'Turkey', 'Türkiye', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(368, 'Turkmenistan', 'Türkmenistan', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(369, 'Turks and Caicos Islands', 'Turks ve Caicos Adaları', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(370, 'Tuvalu', 'Tuvalu', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(371, 'United States Minor Outlying Islands', 'ABD Küçük Dış Adaları', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(372, 'United States Miscellaneous Pacific Islands', 'ABD Çeşitli Pasifik Adaları', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(373, 'United States Virgin Islands', 'ABD Virjin Adaları', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(374, 'Uganda', 'Uganda', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(375, 'Ukraine', 'Ukrayna', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(376, 'Soviet Union', 'Sovyet Sosyalist Cumhuriyetler Birliği', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(377, 'United Arab Emirates', 'Birleşik Arap Emirlikleri', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(378, 'United Kingdom', 'Birleşik Krallık', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(379, 'United States', 'Amerika Birleşik Devletleri', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(380, 'Unknown or Invalid Region', 'Bilinmeyen veya Geçersiz Bölge', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(381, 'Uruguay', 'Uruguay', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(382, 'Uzbekistan', 'Özbekistan', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(383, 'Vanuatu', 'Vanuatu', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(384, 'Vatican City', 'Vatikan Şehri', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(385, 'Venezuela', 'Venezuela', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(386, 'Vietnam', 'Vietnam', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(387, 'Wake Island', 'Wake Adası', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(388, 'Wallis and Futuna', 'Wallis ve Futuna', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(389, 'Western Sahara', 'Batı Sahra', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(390, 'Yemen', 'Yemen', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(391, 'Zambia', 'Zambiya', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(392, 'Zimbabwe', 'Zimbabve', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(393, 'Åland Islands', 'Åland Adaları', '2024-05-15 18:16:33', '2024-05-15 18:16:33'),
(394, 'Afar', 'Afar', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(395, 'Abkhazian', 'Abhazca', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(396, 'Avestan', 'Avestan', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(397, 'Afrikaans', 'Afrikanca', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(398, 'Akan', 'Akan', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(399, 'Amharic', 'Amharca', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(400, 'Aragonese', 'Aragonca', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(401, 'Arabic', 'Arapça', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(402, 'Assamese', 'Assamca', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(403, 'Avaric', 'Avarca', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(404, 'Aymara', 'Aymara', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(405, 'Azerbaijani', 'Azerice', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(406, 'Bashkir', 'Başkurtça', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(407, 'Belarusian', 'Beyaz Rusça', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(408, 'Bulgarian', 'Bulgarca', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(409, 'Bihari Languages', 'Bihari Dilleri', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(410, 'Bislama', 'Bislama', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(411, 'Bambara', 'Bambara', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(412, 'Bengali', 'Bengali', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(413, 'Tibetan', 'Tibetçe', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(414, 'Breton', 'Bretonca', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(415, 'Bosnian', 'Boşnakça', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(416, 'Catalan, Valencian', 'Katalanca, Valensiya Dili', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(417, 'Chechen', 'Çeçence', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(418, 'Chamorro', 'Chamorro Dili', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(419, 'Corsican', 'Korsikaca', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(420, 'Cree', 'Cree Dili', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(421, 'Czech', 'Çekçe', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(422, 'Church Slavonic, Old Bulgarian, Old Church Slavonic', 'Kilise Slavcası, Eski Bulgarca, Eski Kilise Slavcası', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(423, 'Chuvash', 'Çuvaşça', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(424, 'Welsh', 'Gallerce', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(425, 'Danish', 'Danca', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(426, 'German', 'Almanca', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(427, 'Divehi, Dhivehi, Maldivian', 'Divehi, Dhivehi, Maldiv Dili', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(428, 'Dzongkha', 'Dzongkha', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(429, 'Ewe', 'Ewe Dili', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(430, 'Greek (Modern)', 'Modern Yunanca', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(431, 'English', 'İngilizce', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(432, 'Esperanto', 'Esperanto', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(433, 'Spanish, Castilian', 'İspanyolca, Kastilyanca', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(434, 'Estonian', 'Estonca', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(435, 'Basque', 'Baskça', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(436, 'Persian', 'Farsça', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(437, 'Fulah', 'Fula Dili', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(438, 'Finnish', 'Fince', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(439, 'Fijian', 'Fiji Dili', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(440, 'Faroese', 'Faroe Adaları Dili', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(441, 'French', 'Fransızca', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(442, 'Western Frisian', 'Batı Friscesi', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(443, 'Irish', 'İrlandaca', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(444, 'Gaelic, Scottish Gaelic', 'Galce, İskoç Galcesi', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(445, 'Galician', 'Galisyence', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(446, 'Guarani', 'Guarani', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(447, 'Gujarati', 'Gujarati', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(448, 'Manx', 'Manx', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(449, 'Hausa', 'Hausa', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(450, 'Hebrew', 'İbranice', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(451, 'Hindi', 'Hintçe', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(452, 'Hiri Motu', 'Hiri Motu', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(453, 'Croatian', 'Hırvatça', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(454, 'Haitian, Haitian Creole', 'Haiti Creole, Haiti Dili', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(455, 'Hungarian', 'Macarca', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(456, 'Armenian', 'Ermenice', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(457, 'Herero', 'Herero', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(458, 'Interlingua (International Auxiliary Language Association)', 'Interlingua (Uluslararası Yardımcı Dil Derneği)', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(459, 'Indonesian', 'Endonezce', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(460, 'Interlingue', 'Interlingue', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(461, 'Igbo', 'İgbo', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(462, 'Nuosu, Sichuan Yi', 'Nuosu, Sıçuan Yi', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(463, 'Inupiaq', 'Inupiaq', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(464, 'Ido', 'Ido', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(465, 'Icelandic', 'İzlandaca', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(466, 'Italian', 'İtalyanca', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(467, 'Inuktitut', 'İnuktitut', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(468, 'Japanese', 'Japonca', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(469, 'Javanese', 'Cava Dili', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(470, 'Georgian', 'Gürcüce', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(471, 'Kongo', 'Kongo Dili', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(472, 'Gikuyu, Kikuyu', 'Gikuyu, Kikuyu', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(473, 'Kwanyama, Kuanyama', 'Kwanyama, Kuanyama', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(474, 'Kazakh', 'Kazakça', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(475, 'Greenlandic, Kalaallisut', 'Grönland Dili, Kalaallisut', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(476, 'Central Khmer', 'Merkezi Khmer', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(477, 'Kannada', 'Kannada', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(478, 'Korean', 'Korece', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(479, 'Kanuri', 'Kanuri', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(480, 'Kashmiri', 'Keşmirce', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(481, 'Kurdish', 'Kürtçe', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(482, 'Komi', 'Komi', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(483, 'Cornish', 'Cornish', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(484, 'Kyrgyz', 'Kırgızca', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(485, 'Latin', 'Latince', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(486, 'Letzeburgesch, Luxembourgish', 'Lüksemburgca', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(487, 'Ganda', 'Ganda', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(488, 'Limburgish, Limburgan, Limburger', 'Limburgca', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(489, 'Lingala', 'Lingala', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(490, 'Lao', 'Laoca', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(491, 'Lithuanian', 'Litvanca', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(492, 'Luba-Katanga', 'Luba-Katanga', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(493, 'Latvian', 'Letonca', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(494, 'Malagasy', 'Madagaskarca', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(495, 'Marshallese', 'Marshallca', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(496, 'Maori', 'Maori', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(497, 'Macedonian', 'Makedonca', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(498, 'Malayalam', 'Malayalam', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(499, 'Mongolian', 'Moğolca', '2024-05-15 18:26:45', '2024-05-15 18:26:45');
INSERT INTO `translates` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(500, 'Marathi', 'Maratice', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(501, 'Malay', 'Malayca', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(502, 'Maltese', 'Malta Dili', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(503, 'Burmese', 'Birmanca', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(504, 'Norwegian Bokmål', 'Norveççe Bokmål', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(505, 'Northern Ndebele', 'Kuzey Ndebele', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(506, 'Nepali', 'Nepalce', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(507, 'Ndonga', 'Ndonga', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(508, 'Dutch, Flemish', 'Felemenkçe, Flamanca', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(509, 'Norwegian Nynorsk', 'Norveççe Nynorsk', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(510, 'Norwegian', 'Norveççe', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(511, 'South Ndebele', 'Güney Ndebele', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(512, 'Navajo, Navaho', 'Navajo, Navaho', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(513, 'Chichewa, Chewa, Nyanja', 'Çiçewa, Çewa, Nyanja', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(514, 'Occitan (post 1500)', 'Okzitan (1500 sonrası)', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(515, 'Ojibwa', 'Ojibwa', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(516, 'Oromo', 'Oromo', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(517, 'Oriya', 'Oriya', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(518, 'Ossetian, Ossetic', 'Ossetçe, Ossetik', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(519, 'Panjabi, Punjabi', 'Pencabi, Panjabi', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(520, 'Pali', 'Pali', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(521, 'Polish', 'Lehçe', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(522, 'Pashto, Pushto', 'Peştuca, Pushtuca', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(523, 'Portuguese', 'Portekizce', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(524, 'Quechua', 'Keçuaca', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(525, 'Romansh', 'Romansh', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(526, 'Rundi', 'Rundi', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(527, 'Moldovan, Moldavian, Romanian', 'Moldavca, Moldovca, Romence', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(528, 'Russian', 'Rusça', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(529, 'Kinyarwanda', 'Kinyarwanda', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(530, 'Sanskrit', 'Sanskrit', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(531, 'Sardinian', 'Sardinya', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(532, 'Sindhi', 'Sindhi', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(533, 'Northern Sami', 'Kuzey Sami', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(534, 'Sango', 'Sango', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(535, 'Sinhala, Sinhalese', 'Sinhala, Sinhalese', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(536, 'Slovak', 'Slovakça', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(537, 'Slovenian', 'Slovence', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(538, 'Samoan', 'Samoa Dili', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(539, 'Shona', 'Shona', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(540, 'Somali', 'Somalice', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(541, 'Albanian', 'Arnavutça', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(542, 'Serbian', 'Sırpça', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(543, 'Swati', 'Swati', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(544, 'Sotho, Southern', 'Güney Sotho', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(545, 'Sundanese', 'Sundaca', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(546, 'Swedish', 'İsveççe', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(547, 'Swahili', 'Svahili', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(548, 'Tamil', 'Tamilce', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(549, 'Telugu', 'Telugu', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(550, 'Tajik', 'Tacikçe', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(551, 'Thai', 'Tayca', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(552, 'Tigrinya', 'Tigrinya', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(553, 'Turkmen', 'Türkmençe', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(554, 'Tagalog', 'Tagalogca', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(555, 'Tswana', 'Tswana', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(556, 'Tonga (Tonga Islands)', 'Tonga (Tonga Adaları)', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(557, 'Turkish', 'Türkçe', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(558, 'Tsonga', 'Tsonga', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(559, 'Tatar', 'Tatarca', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(560, 'Twi', 'Twi', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(561, 'Tahitian', 'Tahitice', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(562, 'Uighur, Uyghur', 'Uygurca', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(563, 'Ukrainian', 'Ukraynaca', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(564, 'Urdu', 'Urduca', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(565, 'Uzbek', 'Özbekçe', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(566, 'Venda', 'Venda', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(567, 'Vietnamese', 'Vietnamca', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(568, 'Volap_k', 'Volap_k', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(569, 'Walloon', 'Walloon', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(570, 'Wolof', 'Wolof', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(571, 'Xhosa', 'Xhosa', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(572, 'Yiddish', 'Yidiş', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(573, 'Yoruba', 'Yoruba', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(574, 'Zhuang, Chuang', 'Zhuang, Chuang', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(575, 'Chinese', 'Çince', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(576, 'Zulu', 'Zulu', '2024-05-15 18:26:45', '2024-05-15 18:26:45'),
(577, 'WordPress Templates, Plugins, PHP Scripts And Graphics Digital Marketplace', 'Akıllı, Yenilikçi ve İşinize Değer Katan Yazılım Çözümleri xYazılım’da Sizi Bekliyor!', '2024-09-29 11:46:04', '2025-01-09 04:00:58'),
(578, 'JavaScript, PHP Scripts, CSS, HTML5, Site Templates, WordPress Themes, Plugins, Mobile Apps, Graphics, Prints, Brochures, Flyers, Resumes, and More...', 'xYazılım, iş süreçlerinizi hızlandırmak ve verimliliğinizi artırmak için size özel yazılım çözümleri sunar. Dijital dönüşümden web uygulamalarına, e-ticaret altyapılarından mobil çözümlere kadar geniş bir hizmet yelpazesiyle işinizi geleceğe taşıyoruz.', '2024-09-29 11:46:04', '2025-01-09 04:01:31'),
(579, 'Search...', 'Arama yapın...', '2024-09-29 11:46:04', '2025-01-09 23:54:16'),
(580, 'Search', 'Arama Yap', '2024-09-29 11:46:04', '2025-01-09 05:13:49'),
(581, 'View All', 'Tümünü Görüntüle', '2024-09-29 11:46:04', '2025-01-09 05:12:49'),
(582, 'Free', 'Ücretsiz', '2024-09-29 11:46:04', '2024-09-29 11:46:04'),
(583, ':count Downloads', ':count İndirilenler', '2024-09-29 11:46:04', '2024-09-29 11:46:04'),
(584, 'On Sale', 'İndirimde', '2024-09-29 11:46:04', '2025-01-10 02:02:52'),
(585, ':count Sale', ':count İndirim', '2024-09-29 11:46:04', '2024-09-29 11:46:04'),
(586, ':count Sales', ':count Satış', '2024-09-29 11:46:04', '2024-09-29 11:46:04'),
(587, 'Trending', 'Trend Olan', '2024-09-29 11:46:04', '2024-09-29 11:46:04'),
(588, 'All Categories', 'Tüm Kategoriler', '2024-09-29 11:46:04', '2025-01-09 23:53:30'),
(589, 'View More', 'Daha Fazla Görüntüle', '2024-09-29 11:46:04', '2025-01-10 01:12:59'),
(590, 'No Items Found', 'Hiçbir Ürün Bulunamadı', '2024-09-29 11:46:04', '2024-09-29 11:46:04'),
(591, 'View All Featured Items', 'Tüm Öne Çıkan Ürünleri Görüntüle', '2024-09-29 11:46:04', '2024-09-29 11:46:04'),
(592, 'Read More...', 'Daha Fazla Oku...', '2024-09-29 11:46:04', '2024-09-29 11:46:04'),
(593, 'Sign In', 'Giriş Yap', '2024-09-29 11:46:04', '2025-01-09 21:59:55'),
(594, 'Sign Up', 'Kayıt Ol', '2024-09-29 11:46:04', '2025-01-09 22:02:09'),
(595, 'Subscribe to Our Newsletter', 'Bültenimize Abone Olun', '2024-09-29 11:46:04', '2025-01-09 20:56:23'),
(596, 'Stay tuned for the latest and greatest items and offers, delivered right to your inbox!', 'En son ve en iyi ürünler ve teklifler için bizi takip etmeye devam edin, doğrudan e-posta bildirimi alın!', '2024-09-29 11:46:04', '2025-01-09 20:56:58'),
(597, 'Subscribe', 'Abone Ol', '2024-09-29 11:46:04', '2025-01-09 20:57:17'),
(598, 'Items Sold', 'Satılan Ürünler', '2024-09-29 11:46:04', '2024-09-29 11:46:04'),
(599, 'Sales Amount', 'Satış Tutarı', '2024-09-29 11:46:04', '2024-09-29 11:46:04'),
(600, 'All rights reserved', 'Tüm Hakları Saklıdır', '2024-09-29 11:46:04', '2024-09-29 11:46:04'),
(601, 'Copied to clipboard', 'Panoya Kopyalandı', '2024-09-29 11:46:04', '2024-09-29 11:46:04'),
(602, 'Are you sure?', 'Emin misiniz?', '2024-09-29 11:46:04', '2024-09-29 11:46:04'),
(603, 'Nothing selected', 'Hiçbir Şey Seçilmedi', '2024-09-29 11:46:04', '2024-09-29 11:46:04'),
(604, 'No results match', 'Hiçbir Sonuç Eşleşmiyor', '2024-09-29 11:46:04', '2024-09-29 11:46:04'),
(605, '{0} of {1} selected', '{0} {1} den seçildi', '2024-09-29 11:46:04', '2024-09-29 11:46:04'),
(606, 'Home', 'Anasayfa', '2024-09-29 11:46:17', '2025-01-09 23:53:43'),
(607, 'Categories', 'Kategoriler', '2024-09-29 11:46:17', '2025-01-09 23:53:30'),
(608, 'All results for the \":name\" category', '\":name\" Kategorisine ait sonuçlar', '2024-09-29 11:46:17', '2025-01-09 23:53:10'),
(609, 'Options', 'Seçenekler', '2024-09-29 11:46:17', '2024-09-29 11:46:17'),
(610, 'Best Selling', 'En Çok Satanlar', '2024-09-29 11:46:17', '2024-09-29 11:46:17'),
(611, 'Featured', 'Öne Çıkan', '2024-09-29 11:46:17', '2024-09-29 11:46:17'),
(612, 'Price', 'Fiyat', '2024-09-29 11:46:17', '2024-09-29 11:46:17'),
(613, 'min', 'min', '2024-09-29 11:46:17', '2024-09-29 11:46:17'),
(614, 'max', 'max', '2024-09-29 11:46:17', '2024-09-29 11:46:17'),
(615, 'Rating', 'Değerlendirme', '2024-09-29 11:46:17', '2024-09-29 11:46:17'),
(616, 'Show All', 'Tümünü Göster', '2024-09-29 11:46:17', '2024-09-29 11:46:17'),
(617, '5 stars', '5 Yıldız', '2024-09-29 11:46:17', '2024-09-29 11:46:17'),
(618, '4 stars', '4 Yıldız', '2024-09-29 11:46:17', '2024-09-29 11:46:17'),
(619, '3 stars', '3 Yıldız', '2024-09-29 11:46:17', '2024-09-29 11:46:17'),
(620, '2 stars', '2 Yıldız', '2024-09-29 11:46:17', '2024-09-29 11:46:17'),
(621, '1 star', '1 Yıldız', '2024-09-29 11:46:17', '2024-09-29 11:46:17'),
(622, 'Date Added', 'Ekleme Tarihi', '2024-09-29 11:46:17', '2024-09-29 11:46:17'),
(623, 'Any time', 'Herhangi bir Zaman', '2024-09-29 11:46:17', '2024-09-29 11:46:17'),
(624, 'This month', 'Bu Ay', '2024-09-29 11:46:17', '2024-09-29 11:46:17'),
(625, 'Last month', 'Geçen Ay', '2024-09-29 11:46:17', '2024-09-29 11:46:17'),
(626, 'This year', 'Bu Yıl', '2024-09-29 11:46:17', '2024-09-29 11:46:17'),
(627, 'Last year', 'Geçen Yıl', '2024-09-29 11:46:17', '2024-09-29 11:46:17'),
(628, 'Your search results for the \":name\" category', '\":name\" kategorisindeki arama sonuçlarınız', '2024-09-29 11:46:20', '2024-09-29 11:46:20'),
(629, 'Clear All', 'Tümünü Temizle', '2024-09-29 11:46:20', '2024-09-29 11:46:20'),
(630, 'Items', 'Ürünler', '2024-09-29 11:46:21', '2024-09-29 11:46:21'),
(631, 'Live Preview', 'Canlı Önizleme', '2024-09-29 11:46:21', '2025-01-09 22:25:47'),
(632, 'Recently Updated', 'Son Güncellenmiş', '2024-09-29 11:46:21', '2024-09-29 11:46:21'),
(633, 'Description', 'Açıklama', '2024-09-29 11:46:21', '2024-09-29 11:46:21'),
(634, 'Comments (:count)', 'Yorumlar (:count)', '2024-09-29 11:46:21', '2024-09-29 11:46:21'),
(635, 'Free Item', 'Ücretsiz Ürün', '2024-09-29 11:46:21', '2024-09-29 11:46:21'),
(636, 'Free items policy', 'Ücretsiz ürün politikası', '2024-09-29 11:46:21', '2024-09-29 11:46:21'),
(637, 'This item is available for free download. You may download and use it according to the free item policy.', 'Bu ürün ücretsiz indirilebilir. Ücretsiz ürün politikası doğrultusunda indirip kullanabilirsiniz.', '2024-09-29 11:46:21', '2024-09-29 11:46:21'),
(638, 'Download', 'İndir', '2024-09-29 11:46:21', '2024-09-29 11:46:21'),
(639, 'License certificate', 'Lisans Sertifikası', '2024-09-29 11:46:21', '2024-09-29 11:46:21'),
(640, 'Last Update', 'Son Güncelleme', '2024-09-29 11:46:21', '2024-09-29 11:46:21'),
(641, 'Published', 'Yayınlanma Tarihi', '2024-09-29 11:46:21', '2025-01-09 22:26:57'),
(642, 'Version', 'Sürüm', '2024-09-29 11:46:21', '2025-01-09 22:27:16'),
(643, 'v:version', 'v:sürüm', '2024-09-29 11:46:21', '2024-09-29 11:46:21'),
(644, 'Category', 'Kategori', '2024-09-29 11:46:21', '2025-01-09 22:27:26'),
(645, 'Tags', 'Etiketler', '2024-09-29 11:46:21', '2025-01-09 22:28:27'),
(646, 'Share', 'Paylaş', '2024-09-29 11:46:21', '2025-01-09 22:33:30'),
(647, 'Similar items', 'Benzer Ürünler', '2024-09-29 11:46:21', '2025-01-10 01:12:25'),
(648, 'Comments', 'Yorumlar', '2024-09-29 11:46:23', '2024-09-29 11:46:23'),
(649, 'This item has no comments', 'Bu ürünün yorumu yok', '2024-09-29 11:46:23', '2024-09-29 11:46:23'),
(650, ':sign_in to comment', 'Yorum yapmak için :sign_in', '2024-09-29 11:46:23', '2024-09-29 11:46:23'),
(651, 'Screenshots', 'Ekran Görüntüleri', '2024-09-29 11:46:28', '2025-01-09 22:54:39'),
(652, '(:count Review)', '(:count Yorum)', '2024-09-29 11:46:28', '2024-09-29 11:46:28'),
(653, 'Changelogs', 'Değişiklik Kayıtları', '2024-09-29 11:46:28', '2024-09-29 11:46:28'),
(654, 'Reviews (:count)', 'Yorumlar (:count)', '2024-09-29 11:46:28', '2024-09-29 11:46:28'),
(655, 'Support', 'Destek', '2024-09-29 11:46:28', '2024-09-29 11:46:28'),
(656, 'License Option', 'Lisans Seçeneği', '2024-09-29 11:46:28', '2024-09-29 11:46:28'),
(657, 'Licenses terms', 'Lisans Şartları', '2024-09-29 11:46:28', '2024-09-29 11:46:28'),
(658, 'Regular', 'Standart', '2024-09-29 11:46:28', '2024-09-29 11:46:28'),
(659, 'For one project', 'Bir proje için', '2024-09-29 11:46:28', '2024-09-29 11:46:28'),
(660, 'Extended', 'Genişletilmiş', '2024-09-29 11:46:28', '2024-09-29 11:46:28'),
(661, 'For unlimited projects', 'Sonsuz proje için', '2024-09-29 11:46:28', '2024-09-29 11:46:28'),
(662, 'Add to Cart', 'Sepete Ekle', '2024-09-29 11:46:28', '2025-01-09 22:26:25'),
(663, 'Buy Now', 'Hemen Satın Al', '2024-09-29 11:46:28', '2025-01-09 22:26:40'),
(664, 'Quality checked by :website_name', 'Kalite Kontrolü :website_name tarafından yapıldı', '2024-09-29 11:46:28', '2025-01-09 22:32:48'),
(665, 'Full Documentation', 'Tam Dokümantasyon', '2024-09-29 11:46:28', '2025-01-09 22:33:04'),
(666, 'Future updates', 'Gelecek güncellemeler', '2024-09-29 11:46:28', '2025-01-09 22:31:32'),
(667, '24/7 Support', '7/24 Destek', '2024-09-29 11:46:28', '2025-01-09 22:31:43'),
(668, 'Version :version', 'Sürüm :version', '2024-09-29 11:46:37', '2024-09-29 11:46:37'),
(669, 'Reviews', 'Yorumlar', '2024-09-29 11:46:38', '2024-09-29 11:46:38'),
(670, ':count out of 5 stars', ':count üzerinden 5 yıldız', '2024-09-29 11:46:38', '2024-09-29 11:46:38'),
(671, 'By :username', ':username tarafından', '2024-09-29 11:46:38', '2024-09-29 11:46:38'),
(672, 'Admin', 'Yönetici', '2024-09-29 11:46:40', '2024-09-29 11:46:40'),
(673, 'Purchased', 'Satın Alındı', '2024-09-29 11:46:40', '2024-09-29 11:46:40'),
(674, 'This item is supported by :website_name', 'Bu ürün :website_name tarafından desteklenmektedir', '2024-09-29 11:46:40', '2024-09-29 11:46:40'),
(675, 'Read the support instructions below to know how you can get help.', 'Yardım almak için aşağıdaki destek talimatlarını okuyun.', '2024-09-29 11:46:40', '2024-09-29 11:46:40'),
(676, 'Supported', 'Destekleniyor', '2024-09-29 11:46:40', '2024-09-29 11:46:40'),
(677, 'Support instructions', 'Destek Talimatları', '2024-09-29 11:46:40', '2024-09-29 11:46:40'),
(678, 'Your search results', 'Arama Sonuçlarınız', '2024-09-29 11:46:44', '2024-09-29 11:46:44'),
(679, 'Enter your account details to sign in', 'Giriş yapmak için hesap bilgilerinizi girin.', '2024-09-29 11:46:51', '2025-01-09 22:02:43'),
(680, 'Email or Username', 'E-posta veya Kullanıcı Adı', '2024-09-29 11:46:51', '2025-01-09 22:00:16'),
(681, 'Password', 'Şifre', '2024-09-29 11:46:51', '2025-01-09 22:01:01'),
(682, 'Forgot Your Password?', 'Şifrenizi mi unuttunuz?', '2024-09-29 11:46:51', '2025-01-09 22:01:01'),
(683, 'Remember Me', 'Beni Hatırla', '2024-09-29 11:46:51', '2025-01-09 22:01:25'),
(684, 'Or With', 'Veya', '2024-09-29 11:46:51', '2024-09-29 11:46:51'),
(685, 'Facebook', 'Facebook', '2024-09-29 11:46:51', '2024-09-29 11:46:51'),
(686, 'Google', 'Google', '2024-09-29 11:46:51', '2024-09-29 11:46:51'),
(687, 'Microsoft', 'Microsoft', '2024-09-29 11:46:51', '2024-09-29 11:46:51'),
(688, 'Vkontakte', 'Vkontakte', '2024-09-29 11:46:51', '2024-09-29 11:46:51'),
(689, 'Envato', 'Envato', '2024-09-29 11:46:51', '2024-09-29 11:46:51'),
(690, 'Github', 'Github', '2024-09-29 11:46:51', '2024-09-29 11:46:51'),
(691, 'You don\'t have an account?', 'Hesabınız yok mu?', '2024-09-29 11:46:51', '2025-01-09 22:02:02'),
(692, 'Your Cart', 'Sepetiniz', '2024-09-29 11:46:52', '2024-09-29 11:46:52'),
(693, 'Cart', 'Sepet', '2024-09-29 11:46:52', '2024-09-29 11:46:52'),
(694, 'Your Cart is Empty', 'Sepetiniz Boş', '2024-09-29 11:46:52', '2025-01-09 22:05:41'),
(695, 'Your cart is currently empty. Start adding items to make your shopping experience complete!', 'Sepetiniz şu anda boş. Alışveriş deneyiminizi tamamlamak için ürünleri ekleyin!', '2024-09-29 11:46:52', '2025-01-09 22:06:11'),
(696, 'Browse Items', 'Ürünleri İncele', '2024-09-29 11:46:52', '2025-01-09 22:06:36'),
(697, 'The item added to cart', 'Ürün sepete eklendi', '2024-09-29 11:46:56', '2024-09-29 11:46:56'),
(698, 'Continue browsing', 'Alışverişe Devam Et', '2024-09-29 11:46:57', '2025-01-15 02:44:39'),
(699, 'Empty Cart', 'Sepeti Temizle', '2024-09-29 11:46:57', '2025-01-15 02:44:28'),
(700, 'License Type', 'Lisans Türü', '2024-09-29 11:46:57', '2024-09-29 11:46:57'),
(701, 'Quantity', 'Miktar', '2024-09-29 11:46:57', '2024-09-29 11:46:57'),
(702, 'Update', 'Güncelle', '2024-09-29 11:46:57', '2024-09-29 11:46:57'),
(703, 'Your Cart Total', 'Sepet Toplamınız', '2024-09-29 11:46:57', '2024-09-29 11:46:57'),
(704, 'Checkout', 'Ödeme Yap', '2024-09-29 11:46:57', '2025-01-15 02:44:56'),
(705, 'The cart item has been updated', 'Sepet ürünü güncellendi', '2024-09-29 11:47:01', '2024-09-29 11:47:01'),
(706, 'Reset Password', 'Şifreyi Sıfırla', '2024-09-29 11:47:05', '2024-09-29 11:47:05'),
(707, 'You will receive an email with a link to reset your password', 'Şifrenizi sıfırlamak için bir bağlantı içeren e-posta alacaksınız', '2024-09-29 11:47:05', '2024-09-29 11:47:05'),
(708, 'Email address', 'E-posta Adresi', '2024-09-29 11:47:05', '2025-01-09 22:03:50'),
(709, 'Reset', 'Sıfırla', '2024-09-29 11:47:05', '2024-09-29 11:47:05'),
(710, 'You remembered the password?', 'Şifreyi hatırladınız mı?', '2024-09-29 11:47:05', '2024-09-29 11:47:05'),
(711, 'Enter your details to create an account.', 'Hesap oluşturmak için bilgilerinizi girin.', '2024-09-29 11:47:09', '2025-01-09 22:02:26'),
(712, 'First Name', 'Ad', '2024-09-29 11:47:09', '2025-01-09 22:03:11'),
(713, 'Last Name', 'Soyad', '2024-09-29 11:47:09', '2025-01-09 22:03:19'),
(714, 'Username', 'Kullanıcı Adı', '2024-09-29 11:47:09', '2025-01-09 22:03:35'),
(715, 'Confirm password', 'Şifreyi Doğrula', '2024-09-29 11:47:09', '2025-01-09 22:04:06'),
(716, 'I agree to the', 'Hizmet şartlarını kabul ediyorum', '2024-09-29 11:47:09', '2025-01-09 22:04:28'),
(717, 'You an account already?', 'Zaten bir hesabınız var mı?', '2024-09-29 11:47:09', '2025-01-09 22:05:14'),
(718, 'My Wallet', 'Cüzdanım', '2024-09-29 11:47:18', '2025-01-10 05:23:53'),
(719, 'Purchases', 'Satın Alımlar', '2024-09-29 11:47:18', '2025-01-10 05:24:15'),
(720, 'Favorites', 'Favoriler', '2024-09-29 11:47:18', '2024-09-29 11:47:18'),
(721, 'Transactions', 'Siparişler', '2024-09-29 11:47:18', '2025-01-15 02:47:50'),
(722, 'Refunds', 'İade Talepleri', '2024-09-29 11:47:18', '2025-01-15 02:54:12'),
(723, 'Tickets', 'Destek Talepleri', '2024-09-29 11:47:18', '2025-01-15 02:34:02'),
(724, 'Settings', 'Ayarlar', '2024-09-29 11:47:18', '2025-01-10 05:26:05'),
(725, 'Logout', 'Çıkış Yap', '2024-09-29 11:47:18', '2024-09-29 11:47:18'),
(726, 'User', 'Kullanıcı', '2024-09-29 11:47:20', '2024-09-29 11:47:20'),
(727, 'ID', 'ID', '2024-09-29 11:47:20', '2024-09-29 11:47:20'),
(728, 'Details', 'Detaylar', '2024-09-29 11:47:20', '2024-09-29 11:47:20'),
(729, 'Support Expiry Date', 'Destek Bitiş Tarihi', '2024-09-29 11:47:20', '2024-09-29 11:47:20'),
(730, 'Purchase Date', 'Satın Alma Tarihi', '2024-09-29 11:47:20', '2024-09-29 11:47:20'),
(731, 'Action', 'Sipariş', '2024-09-29 11:47:20', '2025-01-15 02:47:50'),
(732, 'Write a review', 'Yorum yaz', '2024-09-29 11:47:20', '2024-09-29 11:47:20'),
(733, 'Purchase code', 'Satın alma kodu', '2024-09-29 11:47:20', '2024-09-29 11:47:20'),
(734, 'Request a refund', 'İade Talep Et', '2024-09-29 11:47:20', '2025-01-15 02:53:36'),
(735, 'Your Purchase Code', 'Satın Alma Kodunuz', '2024-09-29 11:47:20', '2024-09-29 11:47:20'),
(736, 'Buy Support', 'Destek satın al', '2024-09-29 11:47:20', '2024-09-29 11:47:20'),
(737, 'Continue', 'Devam et', '2024-09-29 11:47:20', '2024-09-29 11:47:20'),
(738, 'Extend Support', 'Desteği uzat', '2024-09-29 11:47:20', '2024-09-29 11:47:20'),
(739, 'Balance', 'Bakiye', '2024-09-29 11:47:20', '2024-09-29 11:47:20'),
(740, 'Account details', 'Hesap detayları', '2024-09-29 11:47:23', '2024-09-29 11:47:23'),
(741, 'Choose Avatar', 'Avatar Seç', '2024-09-29 11:47:23', '2024-09-29 11:47:23'),
(742, 'Address line 1', 'Adres satırı 1', '2024-09-29 11:47:23', '2024-09-29 11:47:23'),
(743, 'Address line 2', 'Adres satırı 2', '2024-09-29 11:47:23', '2024-09-29 11:47:23'),
(744, 'City', 'İl', '2024-09-29 11:47:23', '2025-01-15 02:43:47'),
(745, 'State', 'İlçe', '2024-09-29 11:47:23', '2025-01-15 02:43:55'),
(746, 'Postal code', 'Posta kodu', '2024-09-29 11:47:23', '2024-09-29 11:47:23'),
(747, 'Country', 'Ülke', '2024-09-29 11:47:23', '2024-09-29 11:47:23'),
(748, 'Save Changes', 'Değişiklikleri kaydet', '2024-09-29 11:47:24', '2024-09-29 11:47:24'),
(749, 'Change Password', 'Şifreyi değiştir', '2024-09-29 11:47:24', '2024-09-29 11:47:24'),
(750, 'New Password', 'Yeni şifre', '2024-09-29 11:47:24', '2024-09-29 11:47:24'),
(751, 'Confirm New Password', 'Yeni şifreyi onayla', '2024-09-29 11:47:24', '2024-09-29 11:47:24'),
(752, '2FA Authentication', '2FA Kimlik Doğrulaması', '2024-09-29 11:47:24', '2024-09-29 11:47:24'),
(753, 'Two-factor authentication (2FA) strengthens access security by requiring two methods (also referred to as factors) to verify your identity. Two-factor authentication protects against phishing, social engineering, and password brute force attacks and secures your logins from attackers exploiting weak or stolen credentials.', 'İki faktörlü kimlik doğrulama (2FA), kimliğinizi doğrulamak için iki yöntem (faktör olarak da adlandırılır) gerektiren erişim güvenliğini güçlendirir. İki faktörlü kimlik doğrulama, oltalama, sosyal mühendislik ve şifre brute force saldırılarına karşı koruma sağlar ve zayıf veya çalınan kimlik bilgileriyle giriş yapan saldırganlardan girişlerinizi güvence altına alır.', '2024-09-29 11:47:24', '2024-09-29 11:47:24'),
(754, 'Enable 2FA Authentication', '2FA Kimlik Doğrulamasını Etkinleştir', '2024-09-29 11:47:24', '2024-09-29 11:47:24'),
(755, 'To use the two factor authentication, you have to install a Google Authenticator compatible app. Here are some that are currently available:', 'İki faktörlü kimlik doğrulamasını kullanmak için, Google Authenticator uyumlu bir uygulama yüklemeniz gerekir. Şu anda mevcut olanlardan bazıları:', '2024-09-29 11:47:24', '2024-09-29 11:47:24'),
(756, 'Google Authenticator for iOS', 'Google Authenticator iOS için', '2024-09-29 11:47:24', '2024-09-29 11:47:24'),
(757, 'Google Authenticator for Android', 'Google Authenticator Android için', '2024-09-29 11:47:24', '2024-09-29 11:47:24'),
(758, 'Microsoft Authenticator for iOS', 'Microsoft Authenticator iOS için', '2024-09-29 11:47:24', '2024-09-29 11:47:24'),
(759, 'Microsoft Authenticator for Android', 'Microsoft Authenticator Android için', '2024-09-29 11:47:24', '2024-09-29 11:47:24'),
(760, 'OTP Code', 'OTP Kodu', '2024-09-29 11:47:24', '2024-09-29 11:47:24'),
(761, 'Close', 'Kapat', '2024-09-29 11:47:24', '2024-09-29 11:47:24'),
(762, 'Enable', 'Etkinleştir', '2024-09-29 11:47:24', '2024-09-29 11:47:24'),
(763, 'Opened Tickets', 'Açık Talepler', '2024-09-29 11:47:28', '2025-01-15 02:35:47'),
(764, 'Closed Tickets', 'Kapalı Talepler', '2024-09-29 11:47:28', '2025-01-15 02:35:47'),
(765, 'Status', 'Durum', '2024-09-29 11:47:28', '2024-09-29 11:47:28'),
(766, 'Opened', 'Açık', '2024-09-29 11:47:28', '2024-09-29 11:47:28'),
(767, 'Closed', 'Kapalı', '2024-09-29 11:47:28', '2024-09-29 11:47:28'),
(768, 'Ticket ID', 'Talep ID', '2024-09-29 11:47:28', '2025-01-15 02:35:47'),
(769, 'Subject', 'Konu', '2024-09-29 11:47:28', '2024-09-29 11:47:28'),
(770, 'Created Date', 'Oluşturulma Tarihi', '2024-09-29 11:47:28', '2024-09-29 11:47:28'),
(771, 'Ticket #:ticket_id', 'Talep #:ticket_id', '2024-09-29 11:47:29', '2025-01-15 02:35:47'),
(772, 'Reply', 'Yanıtla', '2024-09-29 11:47:29', '2024-09-29 11:47:29'),
(773, 'Attachments (:types)', 'Ek Belge (:types)', '2024-09-29 11:47:29', '2025-01-15 02:34:31'),
(774, 'Send', 'Gönder', '2024-09-29 11:47:29', '2024-09-29 11:47:29'),
(775, 'Last Activity', 'Son Aktivite', '2024-09-29 11:47:29', '2024-09-29 11:47:29'),
(776, 'Max :max files can be uploaded', 'Maksimum :max dosya yükleneebilir', '2024-09-29 11:47:29', '2024-09-29 11:47:29'),
(777, 'Back', 'Geri', '2024-09-29 11:47:29', '2024-09-29 11:47:29'),
(778, 'Pending', 'Beklemede', '2024-09-29 11:47:32', '2024-09-29 11:47:32'),
(779, 'Accepted', 'Kabul Edildi', '2024-09-29 11:47:32', '2024-09-29 11:47:32'),
(780, 'Declined', 'Reddedildi', '2024-09-29 11:47:32', '2024-09-29 11:47:32'),
(781, 'Purchased Item', 'Satın Alınan Ürün', '2024-09-29 11:47:32', '2024-09-29 11:47:32'),
(782, 'Date', 'Tarih', '2024-09-29 11:47:32', '2024-09-29 11:47:32'),
(783, 'Refund: :item_name', 'İade: :item_name', '2024-09-29 11:47:33', '2024-09-29 11:47:33'),
(784, 'Refund ID', 'İade ID', '2024-09-29 11:47:33', '2024-09-29 11:47:33'),
(785, 'Downloaded', 'İndirildi mi?', '2024-09-29 11:47:33', '2025-01-15 02:55:55'),
(786, 'Yes', 'Evet', '2024-09-29 11:47:33', '2024-09-29 11:47:33'),
(787, 'Type', 'Tür', '2024-09-29 11:47:34', '2024-09-29 11:47:34'),
(788, 'Purchase', 'Satın Al', '2024-09-29 11:47:34', '2024-09-29 11:47:34'),
(789, 'Support Purchase', 'Destek Satın Al', '2024-09-29 11:47:34', '2024-09-29 11:47:34'),
(790, 'Support Extend', 'Destek Uzat', '2024-09-29 11:47:34', '2024-09-29 11:47:34'),
(791, 'Deposit', 'Bakiye Yükle', '2024-09-29 11:47:34', '2025-01-15 02:56:56'),
(792, 'Subscription', 'Abonelik', '2024-09-29 11:47:34', '2024-09-29 11:47:34'),
(793, 'Paid', 'Ödendi', '2024-09-29 11:47:34', '2024-09-29 11:47:34'),
(794, 'Cancelled', 'İptal Edildi', '2024-09-29 11:47:34', '2024-09-29 11:47:34'),
(795, 'SubTotal', 'Ara Toplam', '2024-09-29 11:47:34', '2024-09-29 11:47:34'),
(796, 'Tax', 'Vergi', '2024-09-29 11:47:34', '2024-09-29 11:47:34'),
(797, 'Fees', 'Ücretler', '2024-09-29 11:47:34', '2024-09-29 11:47:34'),
(798, 'Total', 'Toplam', '2024-09-29 11:47:34', '2024-09-29 11:47:34'),
(799, 'Invoice #:number', 'Fatura #:number', '2024-09-29 11:47:37', '2024-09-29 11:47:37'),
(800, 'Transaction ID', 'Sipariş Numarası', '2024-09-29 11:47:37', '2025-01-15 02:47:26'),
(801, 'Transaction Date', 'Sipariş Tarihi', '2024-09-29 11:47:37', '2025-01-15 02:47:50'),
(802, 'Transaction Status', 'Sipariş Durumu', '2024-09-29 11:47:37', '2025-01-15 02:47:50'),
(803, 'Transaction Type', 'Sipariş Türü', '2024-09-29 11:47:37', '2025-01-15 02:47:50'),
(804, 'Payment Method', 'Ödeme Yöntemi', '2024-09-29 11:47:37', '2024-09-29 11:47:37'),
(805, 'Regular License', 'Normal Lisans', '2024-09-29 11:47:37', '2024-09-29 11:47:37'),
(806, ':tax_name (:tax_rate%)', ':tax_name (:tax_rate%)', '2024-09-29 11:47:37', '2024-09-29 11:47:37'),
(807, 'Invoice', 'Fatura', '2024-09-29 11:47:37', '2024-09-29 11:47:37'),
(808, 'Number', 'Numara', '2024-09-29 11:47:38', '2024-09-29 11:47:38'),
(809, 'Billed to', 'Faturalanan', '2024-09-29 11:47:38', '2024-09-29 11:47:38'),
(810, 'Item', 'Ürün', '2024-09-29 11:47:39', '2024-09-29 11:47:39'),
(811, '* This transaction was processed by :payment_method', '* Bu işlem :payment_method tarafından işlendi', '2024-09-29 11:47:39', '2024-09-29 11:47:39'),
(812, 'Print', 'Yazdır', '2024-09-29 11:47:39', '2024-09-29 11:47:39'),
(813, 'Available Balance', 'Mevcut Bakiye', '2024-09-29 11:47:47', '2024-09-29 11:47:47'),
(814, 'Statements', 'Bildiriler', '2024-09-29 11:47:47', '2024-09-29 11:47:47'),
(815, 'Contact US', 'Bize Ulaşın', '2024-09-29 11:48:02', '2024-09-29 11:48:02'),
(816, 'Name', 'Ad', '2024-09-29 11:48:02', '2024-09-29 11:48:02'),
(817, 'Email', 'E-posta', '2024-09-29 11:48:02', '2024-09-29 11:48:02'),
(818, 'Message', 'Mesaj', '2024-09-29 11:48:02', '2024-09-29 11:48:02'),
(819, 'Users', 'Kullanıcılar', '2024-09-29 11:48:11', '2024-09-29 11:48:11'),
(820, 'Sales', 'Satışlar', '2024-09-29 11:48:11', '2024-09-29 11:48:11'),
(821, 'Dashboard', 'Gösterge Paneli', '2024-09-29 11:48:11', '2024-09-29 11:48:11'),
(822, 'Total Sales (:count)', 'Toplam Satışlar (:count)', '2024-09-29 11:48:11', '2024-09-29 11:48:11'),
(823, 'Support Sales (:count)', 'Destek Satışları (:count)', '2024-09-29 11:48:11', '2024-09-29 11:48:11'),
(824, 'Total Items', 'Toplam Ürünler', '2024-09-29 11:48:11', '2024-09-29 11:48:11'),
(825, 'Total Sales', 'Toplam Satışlar', '2024-09-29 11:48:11', '2024-09-29 11:48:11'),
(826, 'Total Refunds', 'Toplam İade', '2024-09-29 11:48:11', '2024-09-29 11:48:11'),
(827, 'Total Users', 'Toplam Kullanıcılar', '2024-09-29 11:48:11', '2024-09-29 11:48:11'),
(828, 'Total Transactions', 'Toplam İşlemler', '2024-09-29 11:48:11', '2024-09-29 11:48:11'),
(829, 'Total Tickets', 'Toplam Talepler', '2024-09-29 11:48:11', '2025-01-15 02:35:47'),
(830, 'Users Statistics For This Month', 'Bu Ay İçin Kullanıcı İstatistikleri', '2024-09-29 11:48:11', '2024-09-29 11:48:11'),
(831, 'Recently registered', 'Son Kayıt Olanlar', '2024-09-29 11:48:11', '2024-09-29 11:48:11'),
(832, 'Top Selling Items', 'En Çok Satılan Ürünler', '2024-09-29 11:48:11', '2024-09-29 11:48:11'),
(833, 'Sales (:count)', 'Satışlar (:count)', '2024-09-29 11:48:11', '2024-09-29 11:48:11'),
(834, 'Sales Statistics For This Month', 'Bu Ay İçin Satış İstatistikleri', '2024-09-29 11:48:11', '2024-09-29 11:48:11'),
(835, 'Purchasing Countries', 'Satın Alma Ülkeleri', '2024-09-29 11:48:11', '2024-09-29 11:48:11'),
(836, 'Top Purchasing Countries', 'En Çok Satın Alma Yapan Ülkeler', '2024-09-29 11:48:11', '2024-09-29 11:48:11'),
(837, 'Members', 'Üyeler', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(838, 'Admins', 'Yöneticiler', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(839, 'Advertisements', 'Reklamlar', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(840, 'Records', 'Kayıtlar', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(841, 'Support Earnings', 'Destek Kazançları', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(842, 'KYC', 'KYC', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(843, 'Verifications', 'Doğrulamalar', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(844, 'Reports', 'Raporlar', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(845, 'Item Comments', 'Ürün Yorumları', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(846, 'Main Categories', 'Ana Kategoriler', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(847, 'Sub Categories', 'Alt Kategoriler', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(848, 'Category Options', 'Kategori Seçenekleri', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(849, 'Navigation', 'Navigasyon', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(850, 'Navbar Links', 'Navbar Bağlantıları', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(851, 'Footer Links', 'Altbilgi Bağlantıları', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(852, 'Blog', 'Blog', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(853, 'Articles', 'Makaleler', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(854, 'Newsletter', 'Bülten', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(855, 'Subscribers', 'Aboneler', '2024-09-29 11:48:12', '2025-01-09 20:57:17'),
(856, 'Appearance', 'Görünüm', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(857, 'Themes', 'Temalar', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(858, 'Financial', 'Finansal', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(859, 'Taxes', 'Vergiler', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(860, 'Payment Gateways', 'Ödeme Yöntemleri', '2024-09-29 11:48:12', '2025-01-15 02:59:39'),
(861, 'General', 'Genel', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(862, 'Item Settings', 'Ürün Ayarları', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(863, 'Ticket Settings', 'Talep Ayarları', '2024-09-29 11:48:12', '2025-01-15 02:35:47'),
(864, 'Support Periods', 'Destek Dönemleri', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(865, 'OAuth Providers', 'OAuth Sağlayıcıları', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(866, 'Captcha Providers', 'Captcha Sağlayıcıları', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(867, 'SMTP Settings', 'SMTP Ayarları', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(868, 'Manage Pages', 'Sayfaları Yönet', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(869, 'Extensions', 'Eklentiler', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(870, 'Language', 'Dil', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(871, 'Mail Templates', 'E-posta Şablonları', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(872, 'Sections', 'Bölümler', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(873, 'Announcement', 'Duyuru', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(874, 'Home Sections', 'Anasayfa Bölümleri', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(875, 'Home Categories', 'Anasayfa Kategorileri', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(876, 'Manage FAQs', 'SSS Yönet', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(877, 'Testimonials', 'Referanslar', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(878, 'System', 'Sistem', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(879, 'Information', 'Bilgiler', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(880, 'API', 'API', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(881, 'Maintenance', 'Bakım', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(882, 'Addons', 'Eklentiler', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(883, 'Admin Style', 'Yönetim Paneli', '2024-09-29 11:48:12', '2025-01-13 01:49:50'),
(884, 'Cron Job', 'Cron İşlemi', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(885, 'License Verification', 'Lisans Doğrulama', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(886, 'Clear Cache', 'Önbelleği Temizle', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(887, 'Preview', 'Önizleme', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(888, 'Notifications', 'Bildirimler', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(889, 'Mark All as Read', 'Tümünü Okundu Olarak İşaretle', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(890, 'Account', 'Hesap', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(891, 'Quick Access', 'Hızlı Erişim', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(892, 'General Settings', 'Genel Ayarlar', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(893, 'All rights reserved.', 'Tüm Hakları Saklıdır', '2024-09-29 11:48:12', '2025-01-09 21:12:07'),
(894, 'Powered by Vironeer', 'Vironeer Tarafından Güçlendirilmiştir', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(895, 'No data available in table', 'Tabloda Veri Mevcut Değil', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(896, 'Start typing to search...', 'Aramak için yazmaya başlayın...', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(897, 'Rows per page _MENU_', 'Sayfa başına satır _MENU_', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(898, 'Showing page _PAGE_ of _PAGES_', '_PAGES_ sayfasından _PAGE_ sayfası gösteriliyor', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(899, 'Showing 0 to 0 of 0 entries', '0 ile 0 arası 0 kayıt gösteriliyor', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(900, '(filtered from _MAX_ total entries)', '(_MAX_ toplam kayıttan filtrelendi)', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(901, 'No matching records found', 'Eşleşen kayıt bulunamadı', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(902, 'First', 'İlk', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(903, 'Last', 'Son', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(904, 'Active', 'Aktif', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(905, 'Disabled', 'Devre Dışı', '2024-09-29 11:48:12', '2024-09-29 11:48:12'),
(906, 'You can use this tool to verify license codes after receiving them from your buyers.', 'Bu aracı, lisans kodlarını alıp doğrulamak için kullanabilirsiniz.', '2024-09-29 11:48:27', '2024-09-29 11:48:27'),
(907, 'Enter purchase code', 'Satın alma kodunu girin', '2024-09-29 11:48:27', '2024-09-29 11:48:27'),
(908, 'Verify', 'Doğrula', '2024-09-29 11:48:27', '2024-09-29 11:48:27'),
(909, 'Not data found', 'Veri bulunamadı', '2024-09-29 11:48:27', '2024-09-29 11:48:27'),
(910, 'Make All as Read', 'Tümünü Okundu Olarak Yap', '2024-09-29 11:48:31', '2024-09-29 11:48:31'),
(911, 'Delete All Read', 'Tüm Okunanları Sil', '2024-09-29 11:48:31', '2024-09-29 11:48:31'),
(912, 'Account settings', 'Hesap ayarları', '2024-09-29 11:48:33', '2024-09-29 11:48:33'),
(913, 'Choose Image', 'Resim Seç', '2024-09-29 11:48:33', '2024-09-29 11:48:33'),
(914, '2Factor Authentication', '2 Faktörlü Kimlik Doğrulama', '2024-09-29 11:48:33', '2024-09-29 11:48:33'),
(915, 'From Date', 'Tarih Başlangıcı', '2024-09-29 11:48:35', '2024-09-29 11:48:35'),
(916, 'To Date', 'Tarih Bitişi', '2024-09-29 11:48:35', '2024-09-29 11:48:35'),
(917, 'Delete', 'Sil', '2024-09-29 11:48:35', '2024-09-29 11:48:35'),
(918, 'View Purchase', 'Satın Alımı Görüntüle', '2024-09-29 11:48:36', '2024-09-29 11:48:36'),
(919, 'Refund #:refund_id', 'İade #:refund_id', '2024-09-29 11:48:37', '2024-09-29 11:48:37'),
(920, 'System Information', 'Sistem Bilgisi', '2024-09-29 11:48:41', '2024-09-29 11:48:41'),
(921, 'Application', 'Uygulama', '2024-09-29 11:48:41', '2024-09-29 11:48:41'),
(922, 'Laravel Version', 'Laravel Sürümü', '2024-09-29 11:48:41', '2024-09-29 11:48:41'),
(923, 'Timezone', 'Zaman Dilimi', '2024-09-29 11:48:41', '2024-09-29 11:48:41'),
(924, 'Server Details', 'Sunucu Detayları', '2024-09-29 11:48:41', '2024-09-29 11:48:41'),
(925, 'Software', 'Yazılım', '2024-09-29 11:48:41', '2024-09-29 11:48:41'),
(926, 'PHP Version', 'PHP Sürümü', '2024-09-29 11:48:41', '2024-09-29 11:48:41'),
(927, 'IP Address', 'IP Adresi', '2024-09-29 11:48:41', '2024-09-29 11:48:41'),
(928, 'Protocol', 'Protokol', '2024-09-29 11:48:41', '2024-09-29 11:48:41'),
(929, 'HTTP Host', 'HTTP Sunucusu', '2024-09-29 11:48:41', '2024-09-29 11:48:41'),
(930, 'Port', 'Port', '2024-09-29 11:48:41', '2024-09-29 11:48:41'),
(931, 'System Cache', 'Sistem Önbelleği', '2024-09-29 11:48:41', '2024-09-29 11:48:41'),
(932, 'Compiled views will be cleared', 'Derlenmiş görünümler temizlenecek', '2024-09-29 11:48:41', '2024-09-29 11:48:41'),
(933, 'Application cache will be cleared', 'Uygulama önbelleği temizlenecek', '2024-09-29 11:48:41', '2024-09-29 11:48:41'),
(934, 'Route cache will be cleared', 'Yol önbelleği temizlenecek', '2024-09-29 11:48:41', '2024-09-29 11:48:41'),
(935, 'Configuration cache will be cleared', 'Yapılandırma önbelleği temizlenecek', '2024-09-29 11:48:41', '2024-09-29 11:48:41'),
(936, 'All Other Caches will be cleared', 'Diğer tüm önbellekler temizlenecek', '2024-09-29 11:48:41', '2024-09-29 11:48:41'),
(937, 'Error logs file will be cleared', 'Hata günlükleri dosyası temizlenecek', '2024-09-29 11:48:41', '2024-09-29 11:48:41'),
(938, 'Clear System Cache', 'Sistem Önbelleğini Temizle', '2024-09-29 11:48:41', '2024-09-29 11:48:41'),
(939, 'info', 'bilgi', '2024-09-29 11:48:41', '2024-09-29 11:48:41'),
(940, 'Get Help', 'Yardım Al', '2024-09-29 11:48:41', '2024-09-29 11:48:41'),
(941, 'API Key', 'API Anahtarı', '2024-09-29 11:48:43', '2024-09-29 11:48:43'),
(942, 'Generate', 'Oluştur', '2024-09-29 11:48:43', '2024-09-29 11:48:43'),
(943, 'Save', 'Kaydet', '2024-09-29 11:48:43', '2024-09-29 11:48:43'),
(944, 'Documentation', 'Belgeler', '2024-09-29 11:48:43', '2024-09-29 11:48:43'),
(945, 'Purchase Validation', 'Satın Alma Doğrulaması', '2024-09-29 11:48:43', '2024-09-29 11:48:43'),
(946, 'Endpoint', 'Uç Nokta', '2024-09-29 11:48:43', '2024-09-29 11:48:43'),
(947, 'Parameters', 'Parametreler', '2024-09-29 11:48:43', '2024-09-29 11:48:43'),
(948, 'Your API key', 'API anahtarınız', '2024-09-29 11:48:43', '2024-09-29 11:48:43'),
(949, 'required', 'gerekli', '2024-09-29 11:48:43', '2024-09-29 11:48:43'),
(950, 'The purchase code to validate', 'Doğrulamak için satın alma kodu', '2024-09-29 11:48:43', '2024-09-29 11:48:43'),
(951, 'Responses', 'Yanıtlar', '2024-09-29 11:48:43', '2024-09-29 11:48:43'),
(952, 'Success Response:', 'Başarı Yanıtı:', '2024-09-29 11:48:43', '2024-09-29 11:48:43'),
(953, 'This will be null when its not supported', 'Desteklenmediğinde bu null olacaktır', '2024-09-29 11:48:43', '2024-09-29 11:48:43'),
(954, 'This will be null when its not exists', 'Bu, mevcut olmadığında null olacaktır', '2024-09-29 11:48:43', '2024-09-29 11:48:43'),
(955, 'Item options here...', 'Öğenin seçenekleri burada...', '2024-09-29 11:48:43', '2024-09-29 11:48:43'),
(956, 'This is not included for audio items', 'Bu, sesli öğeler için dahil edilmez', '2024-09-29 11:48:43', '2024-09-29 11:48:43'),
(957, 'This is only included for video items', 'Bu, yalnızca video öğeleri için dahildir', '2024-09-29 11:48:43', '2024-09-29 11:48:43'),
(958, 'This is only included for audio items', 'Bu, yalnızca sesli öğeler için dahildir', '2024-09-29 11:48:43', '2024-09-29 11:48:43'),
(959, 'This will be null when the item is free', 'Bu, öğe ücretsiz olduğunda null olacaktır', '2024-09-29 11:48:43', '2024-09-29 11:48:43'),
(960, 'Error Response', 'Hata Yanıtı', '2024-09-29 11:48:43', '2024-09-29 11:48:43'),
(961, 'Invalid purchase code', 'Geçersiz satın alma kodu', '2024-09-29 11:48:43', '2024-09-29 11:48:43'),
(962, 'Load All Items', 'Tüm Öğeleri Yükle', '2024-09-29 11:48:43', '2024-09-29 11:48:43'),
(963, 'Success Response', 'Başarı Yanıtı', '2024-09-29 11:48:43', '2024-09-29 11:48:43'),
(964, 'Load Single Item', 'Tek Bir Öğeyi Yükle', '2024-09-29 11:48:43', '2024-09-29 11:48:43'),
(965, 'The ID of the item to retrieve', 'Alınacak öğenin ID\'si', '2024-09-29 11:48:43', '2024-09-29 11:48:43'),
(966, 'Item Not Found', 'Öğe Bulunamadı', '2024-09-29 11:48:43', '2024-09-29 11:48:43'),
(967, 'Maintenance Mode', 'Bakım Modu', '2024-09-29 11:48:45', '2024-09-29 11:48:45'),
(968, 'Note!', 'Not!', '2024-09-29 11:48:45', '2024-09-29 11:48:45'),
(969, 'As an admin, you can still view and control your website but the visitors will redirect to the maintenance page.', 'Yönetici olarak, web sitenizi görmeye ve kontrol etmeye devam edebilirsiniz ancak ziyaretçiler bakım sayfasına yönlendirilecektir.', '2024-09-29 11:48:45', '2024-09-29 11:48:45'),
(970, 'Icon', 'Simge', '2024-09-29 11:48:45', '2024-09-29 11:48:45'),
(971, 'Image', 'Görsel', '2024-09-29 11:48:45', '2024-09-29 11:48:45'),
(972, 'Supported (JPEG, JPG, PNG, SVG)', 'Desteklenen (JPEG, JPG, PNG, SVG)', '2024-09-29 11:48:45', '2024-09-29 11:48:45'),
(973, 'Title', 'Başlık', '2024-09-29 11:48:45', '2024-09-29 11:48:45'),
(974, 'Body', 'İçerik', '2024-09-29 11:48:45', '2024-09-29 11:48:45'),
(975, 'Pass Code', 'Şifre Kodu', '2024-09-29 11:48:45', '2024-09-29 11:48:45'),
(976, 'Upload', 'Yükle', '2024-09-29 11:48:47', '2024-09-29 11:48:47'),
(977, 'No Data Found', 'Veri Bulunamadı', '2024-09-29 11:48:47', '2024-09-29 11:48:47'),
(978, 'It appears that the section is empty or your', 'Bölüm boş görünüyor ya da', '2024-09-29 11:48:47', '2024-09-29 11:48:47'),
(979, 'search did not return any results', 'arama herhangi bir sonuç döndürmedi', '2024-09-29 11:48:47', '2024-09-29 11:48:47'),
(980, 'Upload an addon', 'Bir eklenti yükle', '2024-09-29 11:48:47', '2024-09-29 11:48:47'),
(981, 'Important!', 'Önemli!', '2024-09-29 11:48:47', '2024-09-29 11:48:47'),
(982, 'Make sure you are uploading the correct files.', 'Doğru dosyaları yüklediğinizden emin olun.', '2024-09-29 11:48:47', '2024-09-29 11:48:47'),
(983, 'Before uploading a new addon make sure to take a backup of your website files and database.', 'Yeni bir eklenti yüklemeden önce, web sitesi dosyalarınızı ve veritabanınızı yedeklediğinizden emin olun.', '2024-09-29 11:48:47', '2024-09-29 11:48:47'),
(984, 'Addon Purchase Code', 'Eklenti Satın Alma Kodu', '2024-09-29 11:48:47', '2024-09-29 11:48:47'),
(985, 'Addon Files (Zip)', 'Eklenti Dosyaları (Zip)', '2024-09-29 11:48:47', '2024-09-29 11:48:47'),
(986, 'Admin Panel Style', 'Yönetici Paneli Stili', '2024-09-29 11:48:48', '2024-09-29 11:48:48'),
(987, 'Colors', 'Renkler', '2024-09-29 11:48:48', '2024-09-29 11:48:48'),
(988, 'Primary color', 'Ana renk', '2024-09-29 11:48:48', '2024-09-29 11:48:48'),
(989, 'Secondary color', 'İkincil renk', '2024-09-29 11:48:48', '2024-09-29 11:48:48'),
(990, 'Background color', 'Arka plan rengi', '2024-09-29 11:48:48', '2024-09-29 11:48:48'),
(991, 'Sidebar background color', 'Yan panel arka plan rengi', '2024-09-29 11:48:48', '2024-09-29 11:48:48'),
(992, 'Navbar background color', 'Gezinme çubuğu arka plan rengi', '2024-09-29 11:48:48', '2024-09-29 11:48:48'),
(993, 'Custom CSS', 'Özel CSS', '2024-09-29 11:48:48', '2024-09-29 11:48:48'),
(994, 'Command', 'Komut', '2024-09-29 11:48:50', '2024-09-29 11:48:50'),
(995, 'The cron job command must be set to run every minute', 'Cron işi komutunun her dakika çalışacak şekilde ayarlanması gerekir', '2024-09-29 11:48:50', '2024-09-29 11:48:50'),
(996, 'Generate Key', 'Anahtar Oluştur', '2024-09-29 11:48:50', '2024-09-29 11:48:50'),
(997, 'Remove Key', 'Anahtarı Kaldır', '2024-09-29 11:48:50', '2024-09-29 11:48:50'),
(998, 'cronjob', 'cronjob', '2024-09-29 11:48:50', '2024-09-29 11:48:50'),
(999, 'Announcement Body', 'Duyuru İçeriği', '2024-09-29 11:48:52', '2024-09-29 11:48:52'),
(1000, 'Button Title', 'Buton Başlığı', '2024-09-29 11:48:52', '2024-09-29 11:48:52'),
(1001, 'Button Link', 'Düğme Bağlantısı', '2024-09-29 11:48:52', '2024-09-29 11:48:52'),
(1002, 'Announcement Background Color', 'Duyuru Arka Plan Rengi', '2024-09-29 11:48:52', '2024-09-29 11:48:52'),
(1003, 'Button Background Color', 'Düğme Arka Plan Rengi', '2024-09-29 11:48:52', '2024-09-29 11:48:52'),
(1004, 'Button Text Color', 'Düğme Yazı Rengi', '2024-09-29 11:48:52', '2024-09-29 11:48:52'),
(1005, 'Faqs', 'Sıkça Sorulan Sorular', '2024-09-29 11:48:56', '2024-09-29 11:48:56'),
(1006, 'General Details', 'Genel Detaylar', '2024-09-29 11:48:59', '2024-09-29 11:48:59'),
(1007, 'Site Name', 'Site Adı', '2024-09-29 11:48:59', '2024-09-29 11:48:59'),
(1008, 'Site URL', 'Site URL\'si', '2024-09-29 11:48:59', '2024-09-29 11:48:59'),
(1009, 'Contact Email', 'İletişim E-postası', '2024-09-29 11:48:59', '2024-09-29 11:48:59'),
(1010, 'This email is required to receive emails from contact page', 'Bu e-posta, iletişim sayfasından e-posta almak için gereklidir', '2024-09-29 11:48:59', '2024-09-29 11:48:59'),
(1011, 'Date format', 'Tarih Formatı', '2024-09-29 11:48:59', '2024-09-29 11:48:59'),
(1012, 'Social Media Links', 'Sosyal Medya Bağlantıları', '2024-09-29 11:48:59', '2024-09-29 11:48:59'),
(1013, 'X', 'X', '2024-09-29 11:48:59', '2024-09-29 11:48:59'),
(1014, 'Youtube', 'Youtube', '2024-09-29 11:48:59', '2024-09-29 11:48:59'),
(1015, 'Linkedin', 'Linkedin', '2024-09-29 11:48:59', '2024-09-29 11:48:59'),
(1016, 'Instagram', 'Instagram', '2024-09-29 11:48:59', '2024-09-29 11:48:59'),
(1017, 'Pinterest', 'Pinterest', '2024-09-29 11:48:59', '2024-09-29 11:48:59'),
(1018, 'Links', 'Bağlantılar', '2024-09-29 11:48:59', '2024-09-29 11:48:59'),
(1019, 'Terms of use link', 'Kullanım Şartları Bağlantısı', '2024-09-29 11:48:59', '2024-09-29 11:48:59'),
(1020, 'Licenses terms link', 'Lisans Şartları Bağlantısı', '2024-09-29 11:48:59', '2024-09-29 11:48:59'),
(1021, 'SEO', 'SEO', '2024-09-29 11:48:59', '2024-09-29 11:48:59'),
(1022, 'Home title', 'Ana Sayfa Başlığı', '2024-09-29 11:48:59', '2024-09-29 11:48:59'),
(1023, 'Title must be within 70 Characters', 'Başlık 70 Karakteri Geçmemelidir', '2024-09-29 11:48:59', '2024-09-29 11:48:59'),
(1024, 'Description must be within 150 Characters', 'Açıklama 150 Karakteri Geçmemelidir', '2024-09-29 11:48:59', '2024-09-29 11:48:59'),
(1025, 'Site keywords', 'Site Anahtar Kelimeleri', '2024-09-29 11:48:59', '2024-09-29 11:48:59'),
(1026, 'keyword1, keyword2, keyword3', 'anahtar1, anahtar2, anahtar3', '2024-09-29 11:48:59', '2024-09-29 11:48:59'),
(1027, 'Actions', 'İşlemler', '2024-09-29 11:48:59', '2024-09-29 11:48:59'),
(1028, 'Registration', 'Kayıt', '2024-09-29 11:48:59', '2024-09-29 11:48:59'),
(1029, 'Email verification', 'E-posta Doğrulaması', '2024-09-29 11:48:59', '2024-09-29 11:48:59'),
(1030, 'Gdpr cookie', 'GDPR Çerezi', '2024-09-29 11:48:59', '2024-09-29 11:48:59'),
(1031, 'Force ssl', 'SSL Zorunluluğu', '2024-09-29 11:48:59', '2024-09-29 11:48:59'),
(1032, 'Contact page', 'İletişim Sayfası', '2024-09-29 11:48:59', '2024-09-29 11:48:59'),
(1033, 'Edit', 'Düzenle', '2024-09-29 11:49:01', '2024-09-29 11:49:01'),
(1034, 'KYC Verification Approved', 'KYC Doğrulaması Onaylandı', '2024-09-29 11:49:01', '2024-09-29 11:49:01'),
(1035, 'KYC Verification Rejected', 'KYC Doğrulaması Reddedildi', '2024-09-29 11:49:01', '2024-09-29 11:49:01'),
(1036, 'New Ticket', 'Yeni Talep', '2024-09-29 11:49:01', '2025-01-15 02:35:47'),
(1037, 'New Ticket Reply', 'Yeni Talep Yanıtı', '2024-09-29 11:49:01', '2025-01-15 02:35:47'),
(1038, 'Buyer Item Update', 'Alıcı Ürün Güncellemesi', '2024-09-29 11:49:01', '2024-09-29 11:49:01'),
(1039, 'Subscriber New Item', 'Abone Yeni Ürün', '2024-09-29 11:49:01', '2024-09-29 11:49:01'),
(1040, 'Payment Confirmation', 'Ödeme Onayı', '2024-09-29 11:49:01', '2024-09-29 11:49:01'),
(1041, 'Purchase Confirmation', 'Satın Alma Onayı', '2024-09-29 11:49:01', '2024-09-29 11:49:01'),
(1042, 'Transaction Cancelled', 'İşlem İptal Edildi', '2024-09-29 11:49:01', '2024-09-29 11:49:01'),
(1043, 'Item Comment Reply', 'Ürün Yorum Yanıtı', '2024-09-29 11:49:01', '2024-09-29 11:49:01'),
(1044, 'Refund Request New Reply', 'İade Talebi Yeni Yanıt', '2024-09-29 11:49:01', '2024-09-29 11:49:01'),
(1045, 'Refund Request Accepted', 'İade Talebi Kabul Edildi', '2024-09-29 11:49:01', '2024-09-29 11:49:01'),
(1046, 'Refund Request Declined', 'İade Talebi Reddedildi', '2024-09-29 11:49:01', '2024-09-29 11:49:01');
INSERT INTO `translates` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1047, 'Admin KYC Pending', 'Admin KYC Beklemede', '2024-09-29 11:49:01', '2024-09-29 11:49:01'),
(1048, 'Admin Transaction Pending', 'Admin İşlem Beklemede', '2024-09-29 11:49:01', '2024-09-29 11:49:01'),
(1049, 'Admin New Ticket', 'Admin Yeni Talep', '2024-09-29 11:49:01', '2025-01-15 02:35:47'),
(1050, 'Admin New Ticket Reply', 'Admin Yeni Talep Yanıtı', '2024-09-29 11:49:01', '2025-01-15 02:35:47'),
(1051, 'Admin Item Comment', 'Admin Ürün Yorum', '2024-09-29 11:49:01', '2024-09-29 11:49:01'),
(1052, 'Admin Item Comment Reply', 'Admin Ürün Yorum Yanıtı', '2024-09-29 11:49:01', '2024-09-29 11:49:01'),
(1053, 'Admin Item Review', 'Admin Ürün İncelemesi', '2024-09-29 11:49:01', '2025-01-09 05:12:49'),
(1054, 'Admin Refund Request', 'Admin İade Talebi', '2024-09-29 11:49:01', '2024-09-29 11:49:01'),
(1055, 'Admin Refund Request Reply', 'Admin İade Talebi Yanıtı', '2024-09-29 11:49:01', '2024-09-29 11:49:01'),
(1056, 'Direction', 'Yön', '2024-09-29 11:49:04', '2024-09-29 11:49:04'),
(1057, 'LTR', 'LTR', '2024-09-29 11:49:04', '2024-09-29 11:49:04'),
(1058, 'RTL', 'RTL', '2024-09-29 11:49:04', '2024-09-29 11:49:04'),
(1059, 'View Translates', 'Çevirileri Görüntüle', '2024-09-29 11:49:04', '2024-09-29 11:49:04'),
(1060, 'Logo', 'Logo', '2024-09-29 11:49:05', '2024-09-29 11:49:05'),
(1061, 'Google Analytics 4', 'Google Analytics 4', '2024-09-29 11:49:05', '2024-09-29 11:49:05'),
(1062, 'Tawk.to', 'Tawk.to', '2024-09-29 11:49:05', '2024-09-29 11:49:05'),
(1063, 'Imgur', 'Imgur', '2024-09-29 11:49:05', '2024-09-29 11:49:05'),
(1064, 'Enabled', 'Etkinleştirildi', '2024-09-29 11:49:05', '2024-09-29 11:49:05'),
(1065, 'Trustip', 'Trustip', '2024-09-29 11:49:05', '2024-09-29 11:49:05'),
(1066, 'Pages', 'Sayfalar', '2024-09-29 11:49:07', '2024-09-29 11:49:07'),
(1067, 'Page Name', 'Sayfa Adı', '2024-09-29 11:49:07', '2024-09-29 11:49:07'),
(1068, 'Views', 'Görünümler', '2024-09-29 11:49:07', '2024-09-29 11:49:07'),
(1069, 'SMTP', 'SMTP', '2024-09-29 11:49:09', '2024-09-29 11:49:09'),
(1070, 'SMTP details', 'SMTP ayrıntıları', '2024-09-29 11:49:09', '2024-09-29 11:49:09'),
(1071, 'Mail mailer', 'Mail gönderici', '2024-09-29 11:49:09', '2024-09-29 11:49:09'),
(1072, 'SENDMAIL', 'SENDMAIL', '2024-09-29 11:49:09', '2024-09-29 11:49:09'),
(1073, 'Mail Host', 'Mail Sunucusu', '2024-09-29 11:49:09', '2024-09-29 11:49:09'),
(1074, 'Enter mail host', 'Mail sunucusunu girin', '2024-09-29 11:49:09', '2024-09-29 11:49:09'),
(1075, 'Mail Port', 'Mail Portu', '2024-09-29 11:49:09', '2024-09-29 11:49:09'),
(1076, 'Enter mail port', 'Mail portunu girin', '2024-09-29 11:49:09', '2024-09-29 11:49:09'),
(1077, 'Mail username', 'Mail kullanıcı adı', '2024-09-29 11:49:09', '2024-09-29 11:49:09'),
(1078, 'Enter username', 'Kullanıcı adını girin', '2024-09-29 11:49:09', '2024-09-29 11:49:09'),
(1079, 'Mail password', 'Mail şifresi', '2024-09-29 11:49:09', '2024-09-29 11:49:09'),
(1080, 'Enter password', 'Şifreyi girin', '2024-09-29 11:49:09', '2024-09-29 11:49:09'),
(1081, 'Mail encryption', 'Mail şifrelemesi', '2024-09-29 11:49:09', '2024-09-29 11:49:09'),
(1082, 'TLS', 'TLS', '2024-09-29 11:49:09', '2024-09-29 11:49:09'),
(1083, 'SSL', 'SSL', '2024-09-29 11:49:09', '2024-09-29 11:49:09'),
(1084, 'From email', 'Gönderen e-posta', '2024-09-29 11:49:09', '2024-09-29 11:49:09'),
(1085, 'Enter from email', 'Gönderen e-postayı girin', '2024-09-29 11:49:09', '2024-09-29 11:49:09'),
(1086, 'From name', 'Gönderen adı', '2024-09-29 11:49:09', '2024-09-29 11:49:09'),
(1087, 'Enter from name', 'Gönderen adını girin', '2024-09-29 11:49:09', '2024-09-29 11:49:09'),
(1088, 'Testing', 'Test', '2024-09-29 11:49:09', '2024-09-29 11:49:09'),
(1089, 'E-mail Address', 'E-posta Adresi', '2024-09-29 11:49:09', '2024-09-29 11:49:09'),
(1090, 'Google reCAPTCHA', 'Google reCAPTCHA', '2024-09-29 11:49:10', '2024-09-29 11:49:10'),
(1091, '(Default)', '(Varsayılan)', '2024-09-29 11:49:10', '2024-09-29 11:49:10'),
(1092, 'hCaptcha', 'hCaptcha', '2024-09-29 11:49:10', '2024-09-29 11:49:10'),
(1093, 'Make default', 'Varsayılan yap', '2024-09-29 11:49:10', '2024-09-29 11:49:10'),
(1094, 'Cloudflare Turnstile', 'Cloudflare Turnstile', '2024-09-29 11:49:10', '2024-09-29 11:49:10'),
(1095, 'Allowed file types', 'İzin verilen dosya türleri', '2024-09-29 11:49:15', '2024-09-29 11:49:15'),
(1096, 'Enter the file extension', 'Dosya uzantısını girin', '2024-09-29 11:49:15', '2024-09-29 11:49:15'),
(1097, 'Max upload files', 'Maksimum yükleme dosyaları', '2024-09-29 11:49:15', '2024-09-29 11:49:15'),
(1098, 'Max size per file', 'Dosya başına maksimum boyut', '2024-09-29 11:49:15', '2024-09-29 11:49:15'),
(1099, 'MB', 'MB', '2024-09-29 11:49:15', '2024-09-29 11:49:15'),
(1100, 'ticket', 'talep', '2024-09-29 11:49:15', '2025-01-15 02:35:47'),
(1101, 'Show free item total downloads', 'Ücretsiz ürün toplam indirmelerini göster', '2024-09-29 11:49:15', '2024-09-29 11:49:15'),
(1102, 'No', 'Hayır', '2024-09-29 11:49:15', '2024-09-29 11:49:15'),
(1103, 'Item Changelogs', 'Ürün Değişiklik Günlükleri', '2024-09-29 11:49:15', '2024-09-29 11:49:15'),
(1104, 'Disable', 'Devre Dışı Bırak', '2024-09-29 11:49:15', '2024-09-29 11:49:15'),
(1105, 'Item Reviews', 'Ürün Yorumları', '2024-09-29 11:49:15', '2024-09-29 11:49:15'),
(1106, 'Item Support', 'Ürün Desteği', '2024-09-29 11:49:15', '2024-09-29 11:49:15'),
(1107, 'Buy Now Button', 'Hemen Satın Al Butonu', '2024-09-29 11:49:15', '2025-01-09 22:26:40'),
(1108, 'Trending And Best selling', 'Trend Olan ve En Çok Satan', '2024-09-29 11:49:15', '2024-09-29 11:49:15'),
(1109, 'Trending Items Number', 'Trend Ürün Sayısı', '2024-09-29 11:49:15', '2024-09-29 11:49:15'),
(1110, 'Best Selling Items Number', 'En Çok Satan Ürün Sayısı', '2024-09-29 11:49:15', '2024-09-29 11:49:15'),
(1111, 'You must setup the cron job to refresh the Items every 24 hours.', 'Her 24 saatte bir öğeleri yenilemek için cron işini kurmalısınız.', '2024-09-29 11:49:15', '2024-09-29 11:49:15'),
(1112, 'Setup Cron Job', 'Cron İşini Kur', '2024-09-29 11:49:15', '2024-09-29 11:49:15'),
(1113, 'Files', 'Dosyalar', '2024-09-29 11:49:15', '2024-09-29 11:49:15'),
(1114, 'File Duration', 'Dosya Süresi', '2024-09-29 11:49:15', '2024-09-29 11:49:15'),
(1115, 'Hours', 'Saatler', '2024-09-29 11:49:15', '2024-09-29 11:49:15'),
(1116, 'Uploaded files will expire after this time if you did not use them.', 'Yüklenen dosyalar, bu süre içinde kullanılmazsa süresi dolacaktır.', '2024-09-29 11:49:15', '2024-09-29 11:49:15'),
(1117, 'Convert Images To WEBP', 'Resimleri WEBP formatına dönüştür', '2024-09-29 11:49:15', '2024-09-29 11:49:15'),
(1118, 'Convert uploaded images to WEBP like Preview Image, Screenshots, etc...', 'Yüklenen resimleri, Öngörüntü Resmi, Ekran Görüntüleri vb. gibi WEBP formatına dönüştür...', '2024-09-29 11:49:15', '2024-09-29 11:49:15'),
(1119, 'Files Storage', 'Dosya Depolama', '2024-09-29 11:49:15', '2024-09-29 11:49:15'),
(1120, 'Storage Provider', 'Depolama Sağlayıcı', '2024-09-29 11:49:15', '2024-09-29 11:49:15'),
(1121, 'When you change the storage provider, you must move all files form those paths to new storage provider.', 'Depolama sağlayıcısını değiştirdiğinizde, tüm dosyaları o yollardan yeni sağlayıcıya taşımalısınız.', '2024-09-29 11:49:15', '2024-09-29 11:49:15'),
(1122, 'Local', 'Yerel', '2024-09-29 11:49:15', '2024-09-29 11:49:15'),
(1123, 's3 and others', 's3 ve diğerleri', '2024-09-29 11:49:15', '2024-09-29 11:49:15'),
(1124, 'Financial settings', 'Finansal ayarlar', '2024-09-29 11:49:18', '2024-09-29 11:49:18'),
(1125, 'Currency', 'Para Birimi', '2024-09-29 11:49:18', '2024-09-29 11:49:18'),
(1126, 'Currency Code', 'Para Birimi Kodu', '2024-09-29 11:49:18', '2024-09-29 11:49:18'),
(1127, 'USD', 'USD', '2024-09-29 11:49:18', '2024-09-29 11:49:18'),
(1128, 'Currency Symbol', 'Para Birimi Sembolü', '2024-09-29 11:49:18', '2024-09-29 11:49:18'),
(1129, 'Currency position', 'Para Birimi Pozisyonu', '2024-09-29 11:49:18', '2024-09-29 11:49:18'),
(1130, 'Before price', 'Fiyatın Öncesi', '2024-09-29 11:49:18', '2024-09-29 11:49:18'),
(1131, 'After price', 'Fiyatın Sonrası', '2024-09-29 11:49:18', '2024-09-29 11:49:18'),
(1132, 'Minimum Deposit Amount', 'Minimum Yatırım Tutarı', '2024-09-29 11:49:18', '2024-09-29 11:49:18'),
(1133, 'Maximum Deposit Amount', 'Maksimum Yatırım Tutarı', '2024-09-29 11:49:18', '2024-09-29 11:49:18'),
(1134, 'Rate', 'Oran', '2024-09-29 11:49:18', '2024-09-29 11:49:18'),
(1135, 'Countries', 'Ülkeler', '2024-09-29 11:49:18', '2024-09-29 11:49:18'),
(1136, ':count Countries', ':count Ülkeler', '2024-09-29 11:49:19', '2024-09-29 11:49:19'),
(1137, 'Make Active', 'Aktif Yap', '2024-09-29 11:49:22', '2024-09-29 11:49:22'),
(1138, 'Upload a theme', 'Tema Yükle', '2024-09-29 11:49:22', '2024-09-29 11:49:22'),
(1139, 'Before uploading a new theme make sure to take a backup of your website files and database.', 'Yeni bir tema yüklemeden önce, web sitesi dosyalarınızın ve veritabanınızın yedeğini aldığınızdan emin olun.', '2024-09-29 11:49:22', '2024-09-29 11:49:22'),
(1140, 'Theme Purchase Code', 'Tema Satın Alma Kodu', '2024-09-29 11:49:22', '2024-09-29 11:49:22'),
(1141, 'Theme Files (Zip)', 'Tema Dosyaları (Zip)', '2024-09-29 11:49:22', '2024-09-29 11:49:22'),
(1142, ':theme_name Theme Settings', ':theme_name Tema Ayarları', '2024-09-29 11:49:24', '2024-09-29 11:49:24'),
(1143, 'home page', 'Ana Sayfa', '2024-09-29 11:49:24', '2024-09-29 11:49:24'),
(1144, 'footer', 'Altbilgi', '2024-09-29 11:49:24', '2024-09-29 11:49:24'),
(1145, 'extra codes', 'Ekstra kodlar', '2024-09-29 11:49:24', '2024-09-29 11:49:24'),
(1146, 'Logo dark', 'Koyu Logo', '2024-09-29 11:49:24', '2024-09-29 11:49:24'),
(1147, 'Allowed types (JPG,JPEG,PNG,SVG,WEBP)', 'İzin verilen türler (JPG,JPEG,PNG,SVG,WEBP)', '2024-09-29 11:49:24', '2024-09-29 11:49:24'),
(1148, 'Logo light', 'Logo light', '2024-09-29 11:49:24', '2024-09-29 11:49:24'),
(1149, 'Favicon', 'Favicon', '2024-09-29 11:49:24', '2024-09-29 11:49:24'),
(1150, 'Allowed types (JPG,JPEG,PNG,ICO)', 'İzin verilen türler (JPG,JPEG,PNG,ICO)', '2024-09-29 11:49:24', '2024-09-29 11:49:24'),
(1151, 'Brand Icon', 'Marka İkonu', '2024-09-29 11:49:24', '2024-09-29 11:49:24'),
(1152, 'Allowed types (JPG,JPEG,PNG)', 'İzin verilen türler (JPG,JPEG,PNG)', '2024-09-29 11:49:24', '2024-09-29 11:49:24'),
(1153, 'Social Image', 'Sosyal Görsel', '2024-09-29 11:49:24', '2024-09-29 11:49:24'),
(1154, 'Allowed types (JPG,JPEG)', 'İzin verilen türler (JPG,JPEG)', '2024-09-29 11:49:24', '2024-09-29 11:49:24'),
(1155, 'Newsletter Settings', 'Bülten Ayarları', '2024-09-29 11:49:26', '2024-09-29 11:49:26'),
(1156, 'Newsletter Status', 'Bülten Durumu', '2024-09-29 11:49:26', '2024-09-29 11:49:26'),
(1157, 'Show Popup', 'Popup Göster', '2024-09-29 11:49:26', '2024-09-29 11:49:26'),
(1158, 'Show Form In Footer', 'Footer’da Form Göster', '2024-09-29 11:49:26', '2024-09-29 11:49:26'),
(1159, 'Register New Users', 'Yeni Kullanıcı Kaydı', '2024-09-29 11:49:26', '2024-09-29 11:49:26'),
(1160, 'Popup', 'Popup', '2024-09-29 11:49:26', '2024-09-29 11:49:26'),
(1161, 'PopUp Image', 'Popup Görseli', '2024-09-29 11:49:26', '2024-09-29 11:49:26'),
(1162, 'Supported (JPEG, JPG, PNG, WEBP) Size (1200x800px)', 'Desteklenen (JPEG, JPG, PNG, WEBP) Boyut (1200x800px)', '2024-09-29 11:49:26', '2024-09-29 11:49:26'),
(1163, 'PopUp Reminder After', 'Popup Hatırlatıcı Süresi', '2024-09-29 11:49:26', '2024-09-29 11:49:26'),
(1164, 'Newsletter Subscribers', 'Bülten Aboneleri', '2024-09-29 11:49:27', '2024-09-29 11:49:27'),
(1165, 'Send Mail All Subscribers', 'Tüm Abonelere E-posta Gönder', '2024-09-29 11:49:27', '2024-09-29 11:49:27'),
(1166, 'Reply to', 'Yanıtla', '2024-09-29 11:49:27', '2024-09-29 11:49:27'),
(1167, 'Send Mail', 'E-posta Gönder', '2024-09-29 11:49:27', '2024-09-29 11:49:27'),
(1168, 'Export All', 'Tümünü Dışa Aktar', '2024-09-29 11:49:27', '2024-09-29 11:49:27'),
(1169, 'Blog Articles', 'Blog Yazıları', '2024-09-29 11:49:28', '2024-09-29 11:49:28'),
(1170, 'Article', 'Makale', '2024-09-29 11:49:28', '2024-09-29 11:49:28'),
(1171, 'Published date', 'Yayımlanma Tarihi', '2024-09-29 11:49:28', '2024-09-29 11:49:28'),
(1172, 'View', 'Görüntüle', '2024-09-29 11:49:28', '2024-09-29 11:49:28'),
(1173, 'Blog Categories', 'Blog Kategorileri', '2024-09-29 11:49:30', '2024-09-29 11:49:30'),
(1174, 'Blog Comments', 'Blog Yorumları', '2024-09-29 11:49:30', '2024-09-29 11:49:30'),
(1175, 'Posted by', 'Gönderen', '2024-09-29 11:49:30', '2024-09-29 11:49:30'),
(1176, 'Posted date', 'Gönderim Tarihi', '2024-09-29 11:49:30', '2024-09-29 11:49:30'),
(1177, 'View Comment', 'Yorum Görüntüle', '2024-09-29 11:49:30', '2024-09-29 11:49:30'),
(1178, 'Publish', 'Yayınla', '2024-09-29 11:49:30', '2024-09-29 11:49:30'),
(1179, 'Ticket Categories', 'Talep Kategorileri', '2024-09-29 11:49:35', '2025-01-15 02:35:47'),
(1180, 'Main Category', 'Ana Kategori', '2024-09-29 11:49:38', '2024-09-29 11:49:38'),
(1181, 'Option Name', 'Seçenek Adı', '2024-09-29 11:49:39', '2024-09-29 11:49:39'),
(1182, 'Reported Item Comments', 'Rapor Edilen Ürün Yorumları', '2024-09-29 11:49:40', '2024-09-29 11:49:40'),
(1183, 'KYC Settings', 'KYC Ayarları', '2024-09-29 11:49:41', '2024-09-29 11:49:41'),
(1184, 'When KYC is required the user will not be able to buy or sell items until finish the KYC verification.', 'KYC gerektiren durumlarda kullanıcı, KYC doğrulamasını tamamlamadan ürün alıp satamayacaktır.', '2024-09-29 11:49:41', '2024-09-29 11:49:41'),
(1185, 'Kyc Status', 'KYC Durumu', '2024-09-29 11:49:41', '2024-09-29 11:49:41'),
(1186, 'Selfie Verification', 'Selfie Doğrulaması', '2024-09-29 11:49:41', '2024-09-29 11:49:41'),
(1187, 'Avatars', 'Avatarlar', '2024-09-29 11:49:41', '2024-09-29 11:49:41'),
(1188, 'Choose ID Front Image', 'Kimlik Ön Görseli Seçin', '2024-09-29 11:49:41', '2024-09-29 11:49:41'),
(1189, 'Choose ID Back Image', 'Kimlik Arka Görseli Seçin', '2024-09-29 11:49:41', '2024-09-29 11:49:41'),
(1190, 'Choose ID Passport Image', 'Pasaport Kimlik Görseli Seçin', '2024-09-29 11:49:41', '2024-09-29 11:49:41'),
(1191, 'Choose Selfie Image', 'Selfie Görseli Seçin', '2024-09-29 11:49:41', '2024-09-29 11:49:41'),
(1192, 'KYC Verifications', 'KYC Doğrulamaları', '2024-09-29 11:49:42', '2024-09-29 11:49:42'),
(1193, 'Approved', 'Onaylı', '2024-09-29 11:49:42', '2024-09-29 11:49:42'),
(1194, 'Rejected', 'Reddedildi', '2024-09-29 11:49:42', '2024-09-29 11:49:42'),
(1195, 'Document Type', 'Belge Türü', '2024-09-29 11:49:42', '2024-09-29 11:49:42'),
(1196, 'National ID', 'Kimlik Kartı', '2024-09-29 11:49:42', '2024-09-29 11:49:42'),
(1197, 'Passport', 'Pasaport', '2024-09-29 11:49:42', '2024-09-29 11:49:42'),
(1198, 'User details', 'Kullanıcı Detayları', '2024-09-29 11:49:42', '2024-09-29 11:49:42'),
(1199, 'Document Number', 'Belge Numarası', '2024-09-29 11:49:42', '2024-09-29 11:49:42'),
(1200, 'Submited Date', 'Gönderilme Tarihi', '2024-09-29 11:49:42', '2024-09-29 11:49:42'),
(1201, 'Refunded', 'İade Edildi', '2024-09-29 11:49:44', '2024-09-29 11:49:44'),
(1202, 'Buyer', 'Alıcı', '2024-09-29 11:49:44', '2024-09-29 11:49:44'),
(1203, 'View Sale', 'Satışı Görüntüle', '2024-09-29 11:49:45', '2024-09-29 11:49:45'),
(1204, 'Statments', 'Hesap Özeti', '2024-09-29 11:49:46', '2024-09-29 11:49:46'),
(1205, 'Total Cedited', 'Toplam Kredi Edildi', '2024-09-29 11:49:46', '2024-09-29 11:49:46'),
(1206, 'Total Debited', 'Toplam Borçlandırıldı', '2024-09-29 11:49:46', '2024-09-29 11:49:46'),
(1207, 'Amount', 'Tutar', '2024-09-29 11:49:46', '2024-09-29 11:49:46'),
(1208, 'View User', 'Kullanıcıyı Görüntüle', '2024-09-29 11:49:46', '2024-09-29 11:49:46'),
(1209, 'Position', 'Pozisyon', '2024-09-29 11:49:47', '2024-09-29 11:49:47'),
(1210, 'Size', 'Boyut', '2024-09-29 11:49:47', '2024-09-29 11:49:47'),
(1211, 'Head Code', 'Başlık Kodu', '2024-09-29 11:49:47', '2024-09-29 11:49:47'),
(1212, 'Home Page (Top)', 'Anasayfa (Üst)', '2024-09-29 11:49:47', '2024-09-29 11:49:47'),
(1213, 'Home Page (Center)', 'Anasayfa (Orta)', '2024-09-29 11:49:47', '2024-09-29 11:49:47'),
(1214, 'Home Page (Bottom)', 'Anasayfa (Alt)', '2024-09-29 11:49:47', '2024-09-29 11:49:47'),
(1215, 'Item Page (Top)', 'Ürün Sayfası (Üst)', '2024-09-29 11:49:47', '2024-09-29 11:49:47'),
(1216, 'Item Page (Sidebar)', 'Ürün Sayfası (Yan Menü)', '2024-09-29 11:49:47', '2024-09-29 11:49:47'),
(1217, 'Item Page (Description Top)', 'Ürün Sayfası (Açıklama Üst)', '2024-09-29 11:49:47', '2024-09-29 11:49:47'),
(1218, 'Item Page (Description Bottom)', 'Ürün Sayfası (Açıklama Alt)', '2024-09-29 11:49:47', '2024-09-29 11:49:47'),
(1219, 'Item Page (Bottom)', 'Ürün Sayfası (Alt)', '2024-09-29 11:49:47', '2024-09-29 11:49:47'),
(1220, 'Category Page (Top)', 'Kategori Sayfası (Üst)', '2024-09-29 11:49:47', '2024-09-29 11:49:47'),
(1221, 'Category Page (Bottom)', 'Kategori Sayfası (Alt)', '2024-09-29 11:49:47', '2024-09-29 11:49:47'),
(1222, 'Search Page (Top)', 'Arama Sayfası (Üst)', '2024-09-29 11:49:47', '2024-09-29 11:49:47'),
(1223, 'Search Page (Bottom)', 'Arama Sayfası (Alt)', '2024-09-29 11:49:47', '2024-09-29 11:49:47'),
(1224, 'Blog Page (Top)', 'Blog Sayfası (Üst)', '2024-09-29 11:49:47', '2024-09-29 11:49:47'),
(1225, 'Blog Page (Bottom)', 'Blog Sayfası (Alt)', '2024-09-29 11:49:47', '2024-09-29 11:49:47'),
(1226, 'Blog Article Page (Top)', 'Blog Makale Sayfası (Üst)', '2024-09-29 11:49:47', '2024-09-29 11:49:47'),
(1227, 'Blog Article Page (Bottom)', 'Blog Makale Sayfası (Alt)', '2024-09-29 11:49:47', '2024-09-29 11:49:47'),
(1228, 'ads', 'Reklamlar', '2024-09-29 11:49:47', '2024-09-29 11:49:47'),
(1229, 'Videos', 'Videolar', '2024-09-29 11:49:50', '2024-09-29 11:49:50'),
(1230, 'Audios', 'Sesler', '2024-09-29 11:49:50', '2024-09-29 11:49:50'),
(1231, 'Others', 'Diğerleri', '2024-09-29 11:49:50', '2024-09-29 11:49:50'),
(1232, 'Licenses Price', 'Lisans Fiyatı', '2024-09-29 11:49:50', '2024-09-29 11:49:50'),
(1233, 'Edit Details', 'Detayları Düzenle', '2024-09-29 11:49:50', '2024-09-29 11:49:50'),
(1234, 'View Item', 'Ürünü Görüntüle', '2024-09-29 11:49:50', '2024-09-29 11:49:50'),
(1235, 'Make Featured', 'Öne Çıkar', '2024-09-29 11:49:50', '2024-09-29 11:49:50'),
(1236, 'Remove Featured', 'Öne Çıkarma', '2024-09-29 11:49:50', '2024-09-29 11:49:50'),
(1237, 'New Item', 'Yeni Ürün', '2024-09-29 11:49:50', '2024-09-29 11:49:50'),
(1238, 'Banned', 'Yasaklı', '2024-09-29 11:49:52', '2024-09-29 11:49:52'),
(1239, 'KYC Verified', 'KYC Doğrulandı', '2024-09-29 11:49:52', '2024-09-29 11:49:52'),
(1240, 'KYC Unverified', 'KYC Doğrulanmadı', '2024-09-29 11:49:52', '2024-09-29 11:49:52'),
(1241, 'Email Verified', 'E-posta Doğrulandı', '2024-09-29 11:49:52', '2024-09-29 11:49:52'),
(1242, 'Email Unverified', 'E-posta Doğrulanmadı', '2024-09-29 11:49:52', '2024-09-29 11:49:52'),
(1243, 'Account Status', 'Hesap Durumu', '2024-09-29 11:49:52', '2024-09-29 11:49:52'),
(1244, 'Verified', 'Doğrulandı', '2024-09-29 11:49:52', '2024-09-29 11:49:52'),
(1245, 'Unverified', 'Doğrulanmadı', '2024-09-29 11:49:52', '2024-09-29 11:49:52'),
(1246, 'Email Status', 'E-posta Durumu', '2024-09-29 11:49:52', '2024-09-29 11:49:52'),
(1247, 'Registred date', 'Kayıt Tarihi', '2024-09-29 11:49:52', '2024-09-29 11:49:52'),
(1248, 'View Details', 'Detayları Görüntüle', '2024-09-29 11:49:52', '2024-09-29 11:49:52'),
(1249, ':name Account details', ':name Hesap Detayları', '2024-09-29 11:49:55', '2024-09-29 11:49:55'),
(1250, 'Total Spend', 'Toplam Harcama', '2024-09-29 11:49:55', '2024-09-29 11:49:55'),
(1251, 'Quick Actions', 'Hızlı İşlemler', '2024-09-29 11:49:55', '2024-09-29 11:49:55'),
(1252, 'Open a Ticket', 'Talep Aç', '2024-09-29 11:49:55', '2025-01-15 02:35:47'),
(1253, 'Wallet', 'Cüzdan', '2024-09-29 11:49:55', '2024-09-29 11:49:55'),
(1254, 'Login Logs', 'Giriş Kayıtları', '2024-09-29 11:49:55', '2024-09-29 11:49:55'),
(1255, 'Send Email', 'E-posta Gönder', '2024-09-29 11:49:55', '2024-09-29 11:49:55'),
(1256, 'Send Mail to :email', ':email Adresine E-posta Gönder', '2024-09-29 11:49:55', '2024-09-29 11:49:55'),
(1257, ':name Account balance', ':name Hesap Bakiyesi', '2024-09-29 11:49:58', '2024-09-29 11:49:58'),
(1258, 'Account balance', 'Hesap Bakiyesi', '2024-09-29 11:49:58', '2024-09-29 11:49:58'),
(1259, 'Current balance', 'Mevcut Bakiye', '2024-09-29 11:49:58', '2024-09-29 11:49:58'),
(1260, 'View Statements', 'Hesap Ekstrelerini Görüntüle', '2024-09-29 11:49:58', '2024-09-29 11:49:58'),
(1261, 'Credit or Debit the balance', 'Bakiye Yükle veya Çek', '2024-09-29 11:49:58', '2024-09-29 11:49:58'),
(1262, 'Credit', 'Yükleme', '2024-09-29 11:49:58', '2024-09-29 11:49:58'),
(1263, 'Debit', 'Çekme', '2024-09-29 11:49:58', '2024-09-29 11:49:58'),
(1264, 'Submit', 'Gönder', '2024-09-29 11:49:58', '2024-09-29 11:49:58'),
(1265, ':name Password', ':name Şifre', '2024-09-29 11:49:58', '2024-09-29 11:49:58'),
(1266, ':name Actions', ':name İşlemler', '2024-09-29 11:49:59', '2024-09-29 11:49:59'),
(1267, 'Two-Factor Authentication', 'İki Faktörlü Kimlik Doğrulama', '2024-09-29 11:49:59', '2024-09-29 11:49:59'),
(1268, ':name Login logs', ':name Giriş Kayıtları', '2024-09-29 11:50:00', '2024-09-29 11:50:00'),
(1269, 'IP', 'IP', '2024-09-29 11:50:00', '2024-09-29 11:50:00'),
(1270, 'Location', 'Konum', '2024-09-29 11:50:00', '2024-09-29 11:50:00'),
(1271, 'Browser', 'Tarayıcı', '2024-09-29 11:50:00', '2024-09-29 11:50:00'),
(1272, 'OS', 'İşletim Sistemi', '2024-09-29 11:50:00', '2024-09-29 11:50:00'),
(1273, 'Discount', 'İndirim', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1274, 'Statistics', 'İstatistikler', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1275, 'Name And Description', 'İsim ve Açıklama', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1276, 'Slug', 'Slug', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1277, 'Category And Attributes', 'Kategori ve Özellikler', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1278, 'SubCategory (Optional)', 'Alt Kategori (Opsiyonel)', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1279, 'Version (Optional)', 'Versiyon (Opsiyonel)', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1280, '1.0 or 1.0.0', '1.0 veya 1.0.0', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1281, 'Demo Link (Optional)', 'Demo Linki (Opsiyonel)', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1282, 'Embed', 'Göm', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1283, 'Direct', 'Doğrudan', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1284, 'Drop files here to upload', 'Yüklemek için dosyaları buraya bırakın', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1285, 'Drag and drop or click here to upload. All file types are allowed, with no maximum size.', 'Dosyaları sürükleyip bırakın veya yüklemek için buraya tıklayın. Tüm dosya türlerine izin verilir, maksimum boyut yoktur.', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1286, 'Thumbnail', 'Küçük Resim', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1287, 'Thumbnail (.JPG or .PNG)', 'Küçük Resim (.JPG veya .PNG)', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1288, 'Preview Image', 'Önizleme Resmi', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1289, 'Preview image (.JPG or .PNG)', 'Önizleme resmi (.JPG veya .PNG)', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1290, 'Main File', 'Ana Dosya', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1291, 'External', 'Harici', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1292, 'Upload the item files that will buyers download', 'Alıcıların indireceği ürün dosyalarını yükleyin', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1293, 'Enter the external URL where the buyer will be redirected to download the file.', 'Alıcının dosyayı indirmek için yönlendirileceği harici URL’yi girin.', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1294, 'Screenshots (Optional)', 'Ekran Görüntüleri (İsteğe Bağlı)', '2024-09-29 11:50:41', '2025-01-09 22:26:13'),
(1295, 'Item screenshots images (.JPG or .PNG)', 'Ürün ekran görüntüsü resimleri (.JPG veya .PNG)', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1296, 'file is too big max file size: {{maxFilesize}}MiB.', 'Dosya çok büyük, maksimum dosya boyutu: {{maxFilesize}}MiB.', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1297, 'Server responded with {{statusCode}} code.', 'Sunucu {{statusCode}} kodu ile yanıt verdi.', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1298, 'Your browser does not support drag and drop file uploads.', 'Tarayıcınız sürükleyip bırakma dosya yüklemelerini desteklemiyor.', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1299, 'Please use the fallback form below to upload your files like in the olden days.', 'Lütfen dosyalarınızı eski yöntemle yüklemek için aşağıdaki yedek formu kullanın.', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1300, 'You cannot upload files of this type.', 'Bu tür dosyaları yükleyemezsiniz.', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1301, 'Cancel upload', 'Yüklemeyi iptal et', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1302, 'Are you sure you want to cancel this upload?', 'Bu yüklemeyi iptal etmek istediğinizden emin misiniz?', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1303, 'Remove file', 'Dosyayı kaldır', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1304, 'You can not upload any more files.', 'Artık dosya yükleyemezsiniz.', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1305, 'B', 'B', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1306, 'KB', 'KB', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1307, 'GB', 'GB', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1308, 'TB', 'TB', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1309, 'You cannot attach the same file twice', 'Aynı dosyayı iki kez ekleyemezsiniz', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1310, 'Empty files cannot be uploaded', 'Boş dosyalar yüklenemez', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1311, 'Item will be supported?', 'Ürün desteklenecek mi?', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1312, 'Instructions', 'Talimatlar', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1313, 'Enter the instructions that the buyer should follow to get support.', 'Alıcının destek almak için takip etmesi gereken talimatları girin.', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1314, 'Regular License Price', 'Normal Lisans Fiyatı', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1315, 'Extended License Price', 'Genişletilmiş Lisans Fiyatı', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1316, 'Send update notification to the buyers', 'Alıcılara güncelleme bildirimi gönder', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1317, 'Item details', 'Ürün detayları', '2024-09-29 11:50:41', '2024-09-29 11:50:41'),
(1318, 'New Log', 'Yeni Günlük', '2024-09-29 11:50:43', '2024-09-29 11:50:43'),
(1319, 'Regular License discount', 'Normal Lisans indirim', '2024-09-29 11:50:43', '2024-09-29 11:50:43'),
(1320, 'The maximum discount percentage is 90%', 'Maksimum indirim yüzdesi %90 dır', '2024-09-29 11:50:43', '2024-09-29 11:50:43'),
(1321, 'Discount Percentage', 'İndirim Yüzdesi', '2024-09-29 11:50:43', '2024-09-29 11:50:43'),
(1322, 'Purchase price', 'Satın alma fiyatı', '2024-09-29 11:50:43', '2024-09-29 11:50:43'),
(1323, 'Extended License discount (Optional)', 'Genişletilmiş Lisans indirimi (İsteğe Bağlı)', '2024-09-29 11:50:43', '2024-09-29 11:50:43'),
(1324, 'Discount Period', 'İndirim Süresi', '2024-09-29 11:50:43', '2024-09-29 11:50:43'),
(1325, 'The starting date cannot be in the past', 'Başlangıç tarihi geçmiş olamaz', '2024-09-29 11:50:43', '2024-09-29 11:50:43'),
(1326, 'to', 'ile', '2024-09-29 11:50:43', '2024-09-29 11:50:43'),
(1327, 'Create a discount', 'Bir indirim oluştur', '2024-09-29 11:50:43', '2024-09-29 11:50:43'),
(1328, 'Review', 'İnceleme', '2024-09-29 11:50:44', '2024-09-29 11:50:44'),
(1329, 'Comment', 'Yorum', '2024-09-29 11:50:44', '2024-09-29 11:50:44'),
(1330, 'Total Sales Amount', 'Toplam Satış Miktarı', '2024-09-29 11:50:45', '2024-09-29 11:50:45'),
(1331, 'Total Views', 'Toplam Görüntüleme', '2024-09-29 11:50:45', '2024-09-29 11:50:45'),
(1332, 'Sales Statistics', 'Satış İstatistikleri', '2024-09-29 11:50:45', '2024-09-29 11:50:45'),
(1333, 'Views Statistics', 'Görüntüleme İstatistikleri', '2024-09-29 11:50:45', '2024-09-29 11:50:45'),
(1334, 'Top Referrals', 'En İyi Yönlendirmeler', '2024-09-29 11:50:45', '2024-09-29 11:50:45'),
(1335, ':language_name Translates', ':language_name Çevirileri', '2024-09-29 11:51:07', '2024-09-29 11:51:07'),
(1336, 'There are some words that should not be translated that start with some tags or are inside a tag :words etc...', 'Bazı etiketlerle başlayan veya etiket içinde bulunan ve çevrilmemesi gereken kelimeler vardır :words vb...', '2024-09-29 11:51:07', '2024-09-29 11:51:07'),
(1337, 'You must clear the cache after saving the translations.', 'Çevirileri kaydettikten sonra önbelleği temizlemelisiniz.', '2024-09-29 11:51:07', '2024-09-29 11:51:07'),
(1338, 'translates', 'çevirir', '2024-09-29 11:51:07', '2024-09-29 11:51:07'),
(1339, 'Deleted Successfully', 'Başarıyla Silindi', '2024-09-29 11:53:28', '2024-09-29 11:53:28'),
(1340, 'All notifications marked as read', 'Tüm bildirimler okundu olarak işaretlendi', '2024-09-29 11:53:36', '2024-09-29 11:53:36'),
(1341, 'Read notifications deleted successfully', 'Okunan bildirimler başarıyla silindi', '2024-09-29 11:53:38', '2024-09-29 11:53:38'),
(1342, 'No notifications found', 'Hiç bildirim bulunamadı', '2024-09-29 11:53:38', '2024-09-29 11:53:38'),
(1343, 'Edit Advertisement', 'Reklamı Düzenle', '2024-09-29 11:54:57', '2024-09-29 11:54:57'),
(1344, 'Premium Color', 'Premium Renk', '2024-09-29 11:55:13', '2024-09-29 11:55:13'),
(1345, 'Inner Background Color', 'İç Arka Plan Rengi', '2024-09-29 11:55:13', '2024-09-29 11:55:13'),
(1346, 'Elements Background Color', 'Öğelerin Arka Plan Rengi', '2024-09-29 11:55:13', '2024-09-29 11:55:13'),
(1347, 'Elements Inner Background Color', 'Öğelerin İç Arka Plan Rengi', '2024-09-29 11:55:13', '2024-09-29 11:55:13'),
(1348, 'Trending Item Badge Color', 'Popüler Ürün Rozeti Rengi', '2024-09-29 11:55:13', '2024-09-29 11:55:13'),
(1349, 'Sale Item Badge Color', 'Satış Ürün Rozeti Rengi', '2024-09-29 11:55:13', '2024-09-29 11:55:13'),
(1350, 'Free Item Badge Color', 'Ücretsiz Ürün Rozeti Rengi', '2024-09-29 11:55:13', '2024-09-29 11:55:13'),
(1351, 'Premium Item Badge Color', 'Premium Ürün Rozeti Rengi', '2024-09-29 11:55:13', '2024-09-29 11:55:13'),
(1352, 'Text Color', 'Metin Rengi', '2024-09-29 11:55:13', '2024-09-29 11:55:13'),
(1353, 'Text Muted', 'Metin Soluk', '2024-09-29 11:55:13', '2024-09-29 11:55:13'),
(1354, 'Text Green', 'Metin Yeşil', '2024-09-29 11:55:13', '2024-09-29 11:55:13'),
(1355, 'Border Color', 'Sınır Rengi', '2024-09-29 11:55:13', '2024-09-29 11:55:13'),
(1356, 'Item Preview Navbar Background', 'Ürün Önizleme Navigasyon Arka Planı', '2024-09-29 11:55:13', '2024-09-29 11:55:13'),
(1357, 'Footer Background Color', 'Altbilgi Arka Plan Rengi', '2024-09-29 11:55:13', '2024-09-29 11:55:13'),
(1358, 'Footer Heading Color', 'Altbilgi Başlık Rengi', '2024-09-29 11:55:13', '2024-09-29 11:55:13'),
(1359, 'Footer Border Color', 'Altbilgi Sınır Rengi', '2024-09-29 11:55:13', '2024-09-29 11:55:13'),
(1360, 'Footer Text Color', 'Altbilgi Metin Rengi', '2024-09-29 11:55:13', '2024-09-29 11:55:13'),
(1361, 'Choose Header Background', 'Başlık Arka Planını Seç', '2024-09-29 11:55:13', '2024-09-29 11:55:13'),
(1362, 'Supported (JPEG, JPG, PNG, SVG, WEBP) Size 1920x700px.', 'Desteklenen (JPEG, JPG, PNG, SVG, WEBP) Boyut 1920x700px.', '2024-09-29 11:55:13', '2024-09-29 11:55:13'),
(1363, 'Header Background', 'Başlık Arka Planı', '2024-09-29 11:55:14', '2024-09-29 11:55:14'),
(1364, 'Supported (SVG) Size 1780x250.', 'Desteklenen (SVG) Boyut 1780x250.', '2024-09-29 11:55:14', '2024-09-29 11:55:14'),
(1365, 'Footer About', 'Altbilgi Hakkında', '2024-09-29 11:55:15', '2024-09-29 11:55:15'),
(1366, 'Hide', 'Gizle', '2024-09-29 11:55:15', '2024-09-29 11:55:15'),
(1367, 'Show', 'Göster', '2024-09-29 11:55:15', '2024-09-29 11:55:15'),
(1368, 'Footer Payment Methods', 'Altbilgi Ödeme Yöntemleri', '2024-09-29 11:55:15', '2024-09-29 11:55:15'),
(1369, 'Footer Logo', 'Altbilgi Logosu', '2024-09-29 11:55:15', '2024-09-29 11:55:15'),
(1370, 'Footer Payment Methods Logo', 'Altbilgi Ödeme Yöntemleri Logosu', '2024-09-29 11:55:15', '2024-09-29 11:55:15'),
(1371, 'About Content', 'Hakkında İçeriği', '2024-09-29 11:55:15', '2024-09-29 11:55:15'),
(1372, 'Footer Code', 'Altbilgi Kodu', '2024-09-29 11:55:16', '2024-09-29 11:55:16'),
(1373, 'Enter PassCode', 'Şifreyi Girin', '2024-09-29 12:03:50', '2024-09-29 12:03:50'),
(1374, 'Unlock', 'Kilidi Aç', '2024-09-29 12:03:50', '2024-09-29 12:03:50'),
(1375, 'Your Email', 'E-posta Adresiniz', '2024-09-29 12:03:50', '2024-09-29 12:03:50'),
(1376, 'Remind me later', 'Bana Daha Sonra Hatırlat', '2024-09-29 12:03:50', '2024-09-29 12:03:50'),
(1377, 'We use cookies to personalize your experience. By continuing to visit this website you agree to our use of cookies', 'Deneyiminizi kişiselleştirmek için çerezler kullanıyoruz. Bu web sitesini ziyaret etmeye devam ederek çerez kullanımımızı kabul etmiş olursunuz', '2024-09-29 12:03:50', '2024-09-29 12:03:50'),
(1378, 'Got it', 'Tamam', '2024-09-29 12:03:50', '2024-09-29 12:03:50'),
(1379, 'More', 'Daha Fazla', '2024-09-29 12:03:50', '2024-09-29 12:03:50'),
(1380, 'Updated Successfully', 'Başarıyla Güncellendi', '2024-09-29 12:04:35', '2024-09-29 12:04:35'),
(1381, 'Captcha verification failed.', 'Captcha doğrulaması başarısız oldu.', '2024-09-29 12:04:50', '2024-09-29 12:04:50'),
(1382, 'The email type are not allowed.', 'E-posta türüne izin verilmiyor.', '2024-09-29 12:04:50', '2024-09-29 12:04:50'),
(1383, 'Not Items Found', 'Ürün Bulunamadı', '2024-09-29 12:04:59', '2025-01-15 02:25:45'),
(1384, 'There are no items in this section or your search did not return any results', 'Aramanıza uygun bir ürün bulunamadı. Farklı bir arama yapmayı deneyin.', '2024-09-29 12:04:59', '2025-01-15 02:25:45'),
(1385, 'Page Not Found', 'Sayfa Bulunamadı', '2024-09-29 12:04:59', '2025-01-09 21:57:00'),
(1386, 'Sorry, the page you are looking for could not be found. It may have been moved, renamed, or deleted. Please check the URL and try again, or back to the homepage', 'Üzgünüz, aradığınız sayfa bulunamadı. Taşınmış, yeniden adlandırılmış veya silinmiş olabilir. Lütfen URL\'yi kontrol edin ve tekrar deneyin veya ana sayfaya geri dönün', '2024-09-29 12:04:59', '2025-01-09 21:55:43'),
(1387, 'Back to home', 'Anasayfaya Dön', '2024-09-29 12:04:59', '2025-01-09 21:56:38'),
(1388, 'All Items', 'Tüm Yazılımlar', '2024-09-29 12:05:00', '2024-09-29 12:05:00'),
(1389, 'Login or create account to leave comments', 'Yorum bırakmak için giriş yapın veya hesap oluşturun', '2024-09-29 12:05:00', '2024-09-29 12:05:00'),
(1390, 'No blog articles found', 'Hiç blog yazısı bulunamadı', '2024-09-29 12:05:02', '2024-09-29 12:05:02'),
(1391, 'Edit Home Category', 'Ana Sayfa Kategorisini Düzenle', '2024-09-29 12:06:52', '2024-09-29 12:06:52'),
(1392, 'Choose Icon', 'Simge Seçin', '2024-09-29 12:06:52', '2024-09-29 12:06:52'),
(1393, 'Allowed (PNG, JPG, JPEG, WEBP)', 'İzin Verilen (PNG, JPG, JPEG, WEBP)', '2024-09-29 12:06:52', '2024-09-29 12:06:52'),
(1394, 'Link', 'Bağlantı', '2024-09-29 12:06:52', '2024-09-29 12:06:52'),
(1395, 'Edit Extension', 'Uzantıyı Düzenle', '2024-09-29 12:08:38', '2024-09-29 12:08:38'),
(1396, 'client id', 'Müşteri kimliği', '2024-09-29 12:08:38', '2024-09-29 12:08:38'),
(1397, 'SMTP Is Not Enabled', 'SMTP Etkinleştirilmedi', '2024-09-29 12:16:03', '2024-09-29 12:16:03'),
(1398, 'SMTP is not enabled, set it now to be able to recover the password and use all the features that needs to send an email.', 'SMTP etkinleştirilmemiş, şifrenizi kurtarmak ve e-posta göndermeyi gerektiren tüm özellikleri kullanabilmek için şimdi etkinleştirmeniz gerekir.', '2024-09-29 12:16:03', '2024-09-29 12:16:03'),
(1399, 'Setup SMTP', 'SMTP Ayarlarını Yapılandır', '2024-09-29 12:16:03', '2024-09-29 12:16:03'),
(1400, 'Cache Cleared Successfully', 'Önbellek Başarıyla Temizlendi', '2024-09-29 12:17:09', '2024-09-29 12:17:09'),
(1401, 'Admin Panel', 'Yönetici Paneli', '2024-09-29 12:17:10', '2024-09-29 12:17:10'),
(1402, 'Cron Job Not Working', 'Cron Görevi Çalışmıyor', '2024-09-30 14:25:21', '2024-09-30 14:25:21'),
(1403, 'It seems that your Cron Job isn\'t set up correctly, which might be causing it not to work as expected. Please double-check and ensure that your Cron Job is properly configured.', 'Cron göreviniz doğru şekilde kurulmamış gibi görünüyor, bu da beklendiği gibi çalışmamasına neden olabilir. Lütfen kontrol edin ve Cron görevinizin düzgün yapılandırıldığından emin olun.', '2024-09-30 14:25:21', '2024-09-30 14:25:21'),
(1404, 'Cron Job is required by multiple things to be run (Emails, Badges, Discounts, Cache, Sitemap, etc...)', 'Cron görevi, birçok şeyin çalıştırılması için gereklidir (E-postalar, Rozetler, İndirimler, Önbellek, Site Haritası vb.)', '2024-09-30 14:25:21', '2024-09-30 14:25:21'),
(1405, 'measurement id', 'ölçüm kimliği', '2024-09-30 14:26:25', '2024-09-30 14:26:25'),
(1406, 'Edit Captcha Provider', 'Captcha Sağlayıcısını Düzenle', '2024-09-30 14:26:30', '2024-09-30 14:26:30'),
(1407, 'site key', 'site anahtarı', '2024-09-30 14:26:30', '2024-09-30 14:26:30'),
(1408, 'secret key', 'gizli anahtar', '2024-09-30 14:26:30', '2024-09-30 14:26:30'),
(1409, 'Edit OAuth Provider', 'OAuth Sağlayıcısını Düzenle', '2024-09-30 14:26:40', '2024-09-30 14:26:40'),
(1410, 'Credentials', 'Kimlik Bilgileri', '2024-09-30 14:26:40', '2024-09-30 14:26:40'),
(1411, 'client secret', 'istemci gizliliği', '2024-09-30 14:26:40', '2024-09-30 14:26:40'),
(1412, 'Edit Payment Gateway', 'Ödeme Yöntemini Geçidini Düzenle', '2024-09-30 14:28:53', '2025-01-15 02:59:39'),
(1413, 'Choose Logo', 'Logo Seç', '2024-09-30 14:28:53', '2024-09-30 14:28:53'),
(1414, 'Mode', 'Mod', '2024-09-30 14:28:53', '2024-09-30 14:28:53'),
(1415, 'sandbox', 'sandbox', '2024-09-30 14:28:53', '2024-09-30 14:28:53'),
(1416, 'live', 'canlı', '2024-09-30 14:28:53', '2024-09-30 14:28:53'),
(1417, 'Webhook Event', 'Webhook Etkinliği', '2024-09-30 14:28:53', '2024-09-30 14:28:53'),
(1418, 'Webhook Endpoint', 'Webhook Uç Noktası', '2024-09-30 14:28:53', '2024-09-30 14:28:53'),
(1419, 'webhook id', 'webhook kimliği', '2024-09-30 14:28:53', '2024-09-30 14:28:53'),
(1420, 'publishable key', 'yayınlanabilir anahtar', '2024-09-30 14:29:04', '2024-09-30 14:29:04'),
(1421, 'webhook secret', 'webhook gizliliği', '2024-09-30 14:29:04', '2024-09-30 14:29:04'),
(1422, 'public key', 'açık anahtar', '2024-09-30 14:29:15', '2024-09-30 14:29:15'),
(1423, 'key id', 'anahtar kimliği', '2024-09-30 14:29:26', '2024-09-30 14:29:26'),
(1424, 'key secret', 'anahtar gizliliği', '2024-09-30 14:29:26', '2024-09-30 14:29:26'),
(1425, 'webhook shared secret', 'webhook paylaşılan gizlilik', '2024-09-30 14:29:41', '2024-09-30 14:29:41'),
(1426, 'auth token', 'kimlik doğrulama jetonu', '2024-09-30 14:29:50', '2024-09-30 14:29:50'),
(1427, 'secret hash', 'gizli karma', '2024-09-30 14:29:57', '2024-09-30 14:29:57'),
(1428, 'Finish URL', 'Tamamlama URL\'si', '2024-09-30 14:30:08', '2024-09-30 14:30:08'),
(1429, 'Unfinish URL', 'Tamamlanmamış URL', '2024-09-30 14:30:08', '2024-09-30 14:30:08'),
(1430, 'Error Payment URL', 'Ödeme Hatası URL\'si', '2024-09-30 14:30:08', '2024-09-30 14:30:08'),
(1431, 'server key', 'sunucu anahtarı', '2024-09-30 14:30:08', '2024-09-30 14:30:08'),
(1432, 'api secret key', 'api gizli anahtarı', '2024-09-30 14:30:15', '2024-09-30 14:30:15'),
(1433, 'webhook verification token', 'webhook doğrulama jetonu', '2024-09-30 14:30:15', '2024-09-30 14:30:15'),
(1434, 'The system require at least one active payment gateway', 'Sistem, en az bir aktif ödeme yöntemi gerektirir.', '2024-09-30 14:30:40', '2025-01-15 02:59:39'),
(1435, 'Premium', 'Premium', '2025-01-04 05:18:08', '2025-01-04 05:18:08'),
(1436, 'Free Subscriptions', 'Ücretsiz Abonelikler', '2025-01-04 05:18:17', '2025-01-04 05:18:17'),
(1437, 'Paid Subscriptions', 'Ücretli Abonelikler', '2025-01-04 05:18:17', '2025-01-04 05:18:17'),
(1438, 'Premium Earnings', 'Premium Kazançları', '2025-01-04 05:18:17', '2025-01-04 05:18:17'),
(1439, 'Plans', 'Planlar', '2025-01-04 05:18:17', '2025-01-04 05:18:17'),
(1440, 'Subscriptions', 'Abonelikler', '2025-01-04 05:18:17', '2025-01-04 05:18:17'),
(1441, 'adminsc', 'adminsc', '2025-01-04 05:18:17', '2025-01-04 05:18:17'),
(1442, 'Search Filters', 'Arama Filtreleri', '2025-01-04 05:18:31', '2025-01-04 05:18:31'),
(1443, 'Show item total sales', 'Ürün toplam satışlarını göster', '2025-01-04 05:27:44', '2025-01-04 05:27:44'),
(1444, 'Download free items require login', 'Ücretsiz ürünleri indirmek için giriş yapılması gereklidir', '2025-01-04 05:27:44', '2025-01-04 05:27:44'),
(1445, 'Purchasing', 'Satın Alma', '2025-01-04 05:32:32', '2025-01-04 05:32:32'),
(1446, 'Internal', 'Dahili', '2025-01-04 05:32:32', '2025-01-04 05:32:32'),
(1447, 'Purchasing link', 'Satın Alma Bağlantısı', '2025-01-04 05:32:32', '2025-01-04 05:32:32'),
(1448, 'The buyers will be redirected to this URL after clicking on \"Add to cart\" or \"Buy now\"', 'Alıcılar, \"Sepete Ekle\" veya \"Hemen Al\" butonuna tıkladıktan sonra bu URL ye yönlendirilecektir', '2025-01-04 05:32:32', '2025-01-04 05:32:32'),
(1449, 'Send a notification to all subscribers', 'Tüm abonelere bir bildirim gönder', '2025-01-04 05:32:32', '2025-01-04 05:32:32'),
(1450, 'create', 'Oluştur', '2025-01-04 05:32:32', '2025-01-15 02:34:40'),
(1451, 'PB', 'PB', '2025-01-04 05:33:05', '2025-01-04 05:33:05'),
(1452, 'Thumbnail must be the type of JPG or PNG', 'Küçük resim JPG veya PNG türünde olmalıdır', '2025-01-04 05:34:41', '2025-01-04 05:34:41'),
(1453, 'File has been deleted successfully', 'Dosya başarıyla silindi', '2025-01-04 05:35:00', '2025-01-04 05:35:00'),
(1454, 'You cannot use the same file in two different fields', 'Aynı dosyayı iki farklı alanda kullanamazsınız', '2025-01-04 05:35:13', '2025-01-04 05:35:13'),
(1455, ':field Cannot be empty', ':field Boş olamaz', '2025-01-04 05:35:48', '2025-01-04 05:35:48'),
(1456, 'Your item has been added successfully.', 'Ürün başarıyla eklendi.', '2025-01-04 05:36:31', '2025-01-04 05:36:31'),
(1457, 'Add to Premium', 'Premiuma Ekle', '2025-01-04 05:36:32', '2025-01-04 05:36:32'),
(1458, 'Your comment', 'Yorumunuz', '2025-01-04 05:36:59', '2025-01-04 05:36:59'),
(1459, 'This action is not available for admins', 'Bu işlem yöneticiler için mevcut değil', '2025-01-04 05:54:07', '2025-01-04 05:54:07'),
(1460, 'Server Error', 'Sunucu Hatası', '2025-01-04 05:56:49', '2025-01-04 05:56:49'),
(1461, 'Sorry, there was an internal server error, and we were unable to fulfill your request. Please try again later.', 'Üzgünüz, iç sunucu hatası oluştu ve isteğinizi yerine getiremedik. Lütfen daha sonra tekrar deneyin.', '2025-01-04 05:56:50', '2025-01-04 05:56:50'),
(1462, 'Edit Home Section', 'Ana Sayfa Bölümünü Düzenle', '2025-01-09 03:57:38', '2025-01-09 03:57:38'),
(1463, 'Cache Expiry time', 'Önbellek Süresi', '2025-01-09 03:57:38', '2025-01-09 03:57:38'),
(1464, 'Minutes', 'Dakika', '2025-01-09 03:57:38', '2025-01-09 03:57:38'),
(1465, 'From 1 to 525600 minutes', '1 ile 525600 dakika arasında', '2025-01-09 03:57:38', '2025-01-09 03:57:38'),
(1466, 'You must clear the cache every time you changed the \"Items Number\" or \"Cache Expiry time\"', '\"Ürün Sayısı\" veya \"Önbellek Süresi\" her değiştiğinde önbelleği temizlemeniz gerekir', '2025-01-09 03:57:38', '2025-01-09 03:57:38'),
(1467, 'Geri', 'Geri', '2025-01-09 05:12:20', '2025-01-09 05:12:20'),
(1468, 'İleri', 'İleri', '2025-01-09 05:12:20', '2025-01-09 05:12:20'),
(1469, 'Edit Navbar Link', 'Navbar Bağlantısını Düzenle', '2025-01-09 05:12:28', '2025-01-09 05:12:28'),
(1470, 'Link Type', 'Bağlantı Türü', '2025-01-09 05:12:28', '2025-01-09 05:12:28'),
(1471, 'No premium plans available', 'Mevcut premium planı yok', '2025-01-09 05:14:01', '2025-01-09 05:14:01'),
(1472, 'Browse premium items', 'Premium ürünleri inceleyin', '2025-01-09 05:14:01', '2025-01-09 05:14:01'),
(1473, 'Items Number', 'Ürün Sayısı', '2025-01-09 05:16:20', '2025-01-09 05:16:20'),
(1474, 'Between 1 to 100 maximum', 'Maksimum 1 ile 100 arasında', '2025-01-09 05:16:20', '2025-01-09 05:16:20'),
(1475, 'New Blog Article', 'Yeni Blog Makalesi', '2025-01-09 05:17:50', '2025-01-09 05:17:50'),
(1476, 'Short description', 'Kısa açıklama', '2025-01-09 05:17:50', '2025-01-09 05:17:50'),
(1477, '50 to 200 character at most', 'En fazla 50 ile 200 karakter arasında', '2025-01-09 05:17:50', '2025-01-09 05:17:50'),
(1478, 'New blog category', 'Yeni blog kategorisi', '2025-01-09 05:17:59', '2025-01-09 05:17:59'),
(1479, 'Created Successfully', 'Başarıyla Oluşturuldu', '2025-01-09 05:18:11', '2025-01-09 05:18:11'),
(1480, 'Edit Blog Category', 'Blog Kategorisini Düzenle', '2025-01-09 05:18:12', '2025-01-09 05:18:12'),
(1481, 'Edit Blog Article', 'Blog Makalesini Düzenle', '2025-01-09 05:20:24', '2025-01-09 05:20:24'),
(1482, ':attribute alanı kabul edilmelidir.', ':attribute field must be accepted.', '2025-01-09 21:00:25', '2025-01-09 21:00:25'),
(1483, ':attribute alanı, :other :value olduğunda kabul edilmelidir.', ':attribute field must be accepted when :other is :value.', '2025-01-09 21:00:25', '2025-01-09 21:00:25'),
(1484, ':attribute geçerli bir URL olmalıdır.', ':attribute must be a valid URL.', '2025-01-09 21:00:25', '2025-01-09 21:00:25'),
(1485, ':attribute alanı, :date tarihinden sonraki bir tarih olmalıdır.', ':attribute field must be a date after :date.', '2025-01-09 21:00:25', '2025-01-09 21:00:25'),
(1486, ':attribute alanı, :date tarihine eşit veya sonraki bir tarih olmalıdır.', ':attribute field must be a date equal to or after :date.', '2025-01-09 21:00:25', '2025-01-09 21:00:25'),
(1487, ':attribute yalnızca harflerden oluşmalıdır.', ':attribute must only contain letters.', '2025-01-09 21:00:25', '2025-01-09 21:00:25'),
(1488, ':attribute yalnızca harfler, sayılar, tireler ve alt çizgiler içerebilir.', ':attribute may only contain letters, numbers, dashes, and underscores.', '2025-01-09 21:00:25', '2025-01-09 21:00:25'),
(1489, ':attribute yalnızca harfler ve sayılardan oluşmalıdır.', ':attribute must only contain letters and numbers.', '2025-01-09 21:00:25', '2025-01-09 21:00:25'),
(1490, ':attribute bir dizi olmalıdır.', ':attribute must be an array.', '2025-01-09 21:00:25', '2025-01-09 21:00:25'),
(1491, ':attribute yalnızca tek baytlı alfanümerik karakterler ve semboller içermelidir.', ':attribute must only contain single-byte alphanumeric characters and symbols.', '2025-01-09 21:00:25', '2025-01-09 21:00:25'),
(1492, ':attribute alanı, :date tarihinden önceki bir tarih olmalıdır.', ':attribute field must be a date before :date.', '2025-01-09 21:00:25', '2025-01-09 21:00:25'),
(1493, ':attribute alanı, :date tarihine eşit veya önceki bir tarih olmalıdır.', ':attribute field must be a date equal to or before :date.', '2025-01-09 21:00:25', '2025-01-09 21:00:25'),
(1494, ':attribute :min ile :max arasında öğe içermelidir.', ':attribute must contain between :min and :max items.', '2025-01-09 21:00:25', '2025-01-09 21:00:25'),
(1495, ':attribute :min ile :max kilobayt arasında olmalıdır.', ':attribute must be between :min and :max kilobytes.', '2025-01-09 21:00:25', '2025-01-09 21:00:25'),
(1496, ':attribute :min ile :max arasında olmalıdır.', ':attribute must be between :min and :max.', '2025-01-09 21:00:25', '2025-01-09 21:00:25'),
(1497, ':attribute :min ile :max karakter arasında olmalıdır.', ':attribute must be between :min and :max characters.', '2025-01-09 21:00:25', '2025-01-09 21:00:25'),
(1498, ':attribute doğru veya yanlış olmalıdır.', ':attribute must be true or false.', '2025-01-09 21:00:25', '2025-01-09 21:00:25'),
(1499, ':attribute yetkisiz bir değer içeriyor.', ':attribute contains an unauthorized value.', '2025-01-09 21:00:25', '2025-01-09 21:00:25'),
(1500, ':attribute onayı eşleşmiyor.', ':attribute confirmation does not match.', '2025-01-09 21:00:25', '2025-01-09 21:00:25'),
(1501, 'Incorrect password.', 'Şifre yanlış.', '2025-01-09 21:00:25', '2025-01-09 21:00:25'),
(1502, 'The :attribute must be a valid date.', ':attribute geçerli bir tarih olmalıdır.', '2025-01-09 21:00:25', '2025-01-09 21:00:25'),
(1503, 'The :attribute must be a date equal to :date.', ':attribute :date tarihine eşit bir tarih olmalıdır.', '2025-01-09 21:00:25', '2025-01-09 21:00:25'),
(1504, 'The :attribute must match the format :format.', ':attribute :format formatıyla eşleşmelidir.', '2025-01-09 21:00:25', '2025-01-09 21:00:25'),
(1505, 'The :attribute must not contain :decimal decimal places.', ':attribute :decimal ondalık basamak içermelidir.', '2025-01-09 21:00:25', '2025-01-09 21:00:25'),
(1506, 'The :attribute must be rejected.', ':attribute reddedilmelidir.', '2025-01-09 21:00:25', '2025-01-09 21:00:25'),
(1507, 'The :attribute must be rejected when :other is :value.', ':attribute, :other :value olduğunda reddedilmelidir.', '2025-01-09 21:00:25', '2025-01-09 21:00:25'),
(1508, 'The :attribute and :other must be different.', ':attribute ve :other farklı olmalıdır.', '2025-01-09 21:00:25', '2025-01-09 21:00:25'),
(1509, 'The :attribute must be :digits digits.', ':attribute :digits basamaklı olmalıdır.', '2025-01-09 21:00:25', '2025-01-09 21:00:25'),
(1510, 'The :attribute must be between :min and :max digits.', ':attribute :min ile :max basamak arasında olmalıdır.', '2025-01-09 21:00:25', '2025-01-09 21:00:25'),
(1511, 'The :attribute has invalid image dimensions.', ':attribute geçersiz resim boyutlarına sahiptir.', '2025-01-09 21:00:25', '2025-01-09 21:00:25'),
(1512, 'The :attribute contains a duplicate value.', ':attribute yinelenen bir değer içeriyor.', '2025-01-09 21:00:25', '2025-01-09 21:00:25'),
(1513, 'The :attribute must not end with one of the following: :values.', ':attribute aşağıdakilerden biriyle bitmemelidir: :values.', '2025-01-09 21:00:25', '2025-01-09 21:00:25'),
(1514, 'The :attribute must not start with one of the following: :values.', ':attribute aşağıdakilerden biriyle başlamamalıdır: :values.', '2025-01-09 21:00:25', '2025-01-09 21:00:25'),
(1515, 'The :attribute must be a valid email address.', ':attribute geçerli bir e-posta adresi olmalıdır.', '2025-01-09 21:00:25', '2025-01-09 21:00:25'),
(1516, 'The :attribute must be a valid username.', ':attribute geçerli bir kullanıcı adı olmalıdır.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1517, 'The :attribute must end with one of the following: :values.', ':attribute aşağıdakilerden biriyle bitmelidir: :values.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1518, 'The selected :attribute is invalid.', 'Seçilen :attribute geçersiz.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1519, 'The :attribute must be a file.', ':attribute bir dosya olmalıdır.', '2025-01-09 21:00:26', '2025-01-09 21:00:26');
INSERT INTO `translates` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1520, 'The :attribute must contain a value.', ':attribute bir değer içermelidir.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1521, 'The :attribute must not contain more than :value items.', ':attribute, :value öğeden fazla içermelidir.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1522, 'The :attribute must be larger than :value kilobytes.', ':attribute, :value kilobayttan büyük olmalıdır.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1523, 'The :attribute must be larger than :value.', ':attribute, :value değerinden büyük olmalıdır.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1524, 'The :attribute must be longer than :value characters.', ':attribute, :value karakterden fazla olmalıdır.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1525, 'The :attribute must contain :value or more items.', ':attribute, :value veya daha fazla öğe içermelidir.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1526, 'The :attribute must be larger than or equal to :value kilobytes.', ':attribute, :value kilobayttan büyük veya eşit olmalıdır.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1527, 'The :attribute must be greater than or equal to :value.', ':attribute, :value değerinden büyük veya eşit olmalıdır.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1528, 'The :attribute must be greater than or equal to :value characters.', ':attribute, :value karakterden büyük veya eşit olmalıdır.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1529, 'The :attribute must be an image.', ':attribute bir resim olmalıdır.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1530, 'The :attribute must be in :other.', ':attribute, :other içinde bulunmalıdır.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1531, 'The :attribute must be an integer.', ':attribute bir tam sayı olmalıdır.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1532, 'The :attribute must be a valid IP address.', ':attribute geçerli bir IP adresi olmalıdır.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1533, 'The :attribute must be a valid IPv4 address.', ':attribute geçerli bir IPv4 adresi olmalıdır.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1534, 'The :attribute must be a valid IPv6 address.', ':attribute geçerli bir IPv6 adresi olmalıdır.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1535, 'The :attribute must be a valid JSON string.', ':attribute geçerli bir JSON dizesi olmalıdır.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1536, 'The :attribute must be lowercase.', ':attribute küçük harflerden oluşmalıdır.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1537, 'The :attribute must not contain less than :value items.', ':attribute, :value öğeden az içermelidir.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1538, 'The :attribute must be smaller than :value kilobytes.', ':attribute, :value kilobayttan küçük olmalıdır.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1539, 'The :attribute must be smaller than :value.', ':attribute, :value değerinden küçük olmalıdır.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1540, 'The :attribute must be smaller than :value characters.', ':attribute, :value karakterden az olmalıdır.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1541, 'The :attribute must not contain more than :value items.', ':attribute, :value öğeden fazla içermemelidir.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1542, 'The :attribute must be less than or equal to :value kilobytes.', ':attribute, :value kilobayttan küçük veya eşit olmalıdır.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1543, 'The :attribute must be less than or equal to :value.', ':attribute, :value değerinden küçük veya eşit olmalıdır.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1544, 'The :attribute must be less than or equal to :value characters.', ':attribute, :value karakterden küçük veya eşit olmalıdır.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1545, 'The :attribute must be a valid MAC address.', ':attribute geçerli bir MAC adresi olmalıdır.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1546, 'The :attribute may contain up to :max items.', ':attribute en fazla :max öğe içerebilir.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1547, 'The :attribute may not be greater than :max kilobytes.', ':attribute, :max kilobayttan büyük olamaz.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1548, 'The :attribute may not be greater than :max.', ':attribute, :max değerinden büyük olamaz.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1549, 'The :attribute may not be longer than :max characters.', ':attribute, :max karakterden uzun olamaz.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1550, 'The :attribute may contain no more than :max digits.', ':attribute, en fazla :max basamak içerebilir.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1551, 'The :attribute must be one of the following types: :values.', ':attribute şu türlerden bir dosya olmalıdır: :values.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1552, 'The :attribute must contain at least :min items.', ':attribute en az :min öğe içermelidir.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1553, 'The :attribute must be at least :min kilobytes.', ':attribute en az :min kilobayt olmalıdır.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1554, 'The :attribute must be at least :min.', ':attribute en az :min olmalıdır.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1555, 'The :attribute must be at least :min characters.', ':attribute en az :min karakter olmalıdır.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1556, 'The :attribute must contain at least :min digits.', ':attribute en az :min basamak içermelidir.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1557, 'The :attribute must be missing.', ':attribute eksik olmalıdır.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1558, 'The :attribute must be missing when :other is :value.', ':attribute, :other :value olduğunda eksik olmalıdır.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1559, 'The :attribute must be missing when :other is not :value.', ':attribute, :other :value olmadığında eksik olmalıdır.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1560, 'The :attribute must be missing when :values is present.', ':attribute, :values mevcut olduğunda eksik olmalıdır.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1561, 'The :attribute must be solid :value.', ':attribute, :value katı olmalıdır.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1562, 'The :attribute format is invalid.', ':attribute formatı geçersiz.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1563, 'The :attribute must be a number.', ':attribute bir sayı olmalıdır.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1564, 'The :attribute must contain at least one letter.', ':attribute en az bir harf içermelidir.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1565, 'The :attribute must contain at least one uppercase letter and one lowercase letter.', ':attribute en az bir büyük ve bir küçük harf içermelidir.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1566, 'The :attribute must contain at least one number.', ':attribute en az bir sayı içermelidir.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1567, 'The :attribute must contain at least one symbol.', ':attribute en az bir sembol içermelidir.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1568, 'The given :attribute has been found in a data breach. Please choose a different :attribute.', 'Verilen :attribute bir veri sızıntısında yer almış. Lütfen farklı bir :attribute seçin.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1569, 'The :attribute must be present.', ':attribute mevcut olmalıdır.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1570, 'The :attribute is forbidden.', ':attribute yasaktır.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1571, 'The :attribute is forbidden when :other is :value.', ':attribute, :other :value olduğunda yasaktır.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1572, 'The :attribute is forbidden unless :other is in :values.', ':attribute, :other :values içinde değilse yasaktır.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1573, 'The :attribute forbids :other from being present.', ':attribute, :other ın mevcut olmasını yasaklar.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1574, 'The :attribute is a required field.', ':attribute gerekli bir alandır.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1575, 'The :attribute must contain entries for the following: :values.', ':attribute, şunlar için girişler içermelidir: :values.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1576, 'The :attribute is required when :other is :value.', ':attribute, :other :value olduğunda gereklidir.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1577, 'The :attribute is required when :other is accepted.', ':attribute, :other kabul edildiğinde gereklidir.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1578, 'The :attribute is required unless :other is in :values.', ':attribute, :other :values içinde olmadıkça gereklidir.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1579, 'The :attribute is required when :values are present.', ':attribute, :values mevcut olduğunda gereklidir.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1580, 'The :attribute is required when :values are not present.', ':attribute, :values mevcut olmadığında gereklidir.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1581, 'The :attribute is required when :values are not available.', ':attribute, :values mevcut değilken gereklidir.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1582, 'The :attribute must match :other.', ':attribute, :other ile eşleşmelidir.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1583, 'The :attribute must contain :size items.', ':attribute, :size öğe içermelidir.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1584, 'The :attribute must be :size kilobytes.', ':attribute, :size kilobayt olmalıdır.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1585, 'The :attribute must be :size.', ':attribute, :size olmalıdır.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1586, 'The :attribute must be :size characters.', ':attribute, :size karakter olmalıdır.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1587, 'The :attribute must start with one of the following: :values.', ':attribute, şu öğelerden biriyle başlamalıdır: :values.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1588, 'The :attribute must be a text.', ':attribute bir metin olmalıdır.', '2025-01-09 21:00:26', '2025-01-09 21:00:26'),
(1589, 'The :attribute must be a valid timezone.', ':attribute geçerli bir zaman dilimi olmalıdır.', '2025-01-09 21:00:27', '2025-01-09 21:00:27'),
(1590, 'The :attribute has already been taken.', ':attribute daha önce alınmış.', '2025-01-09 21:00:27', '2025-01-09 21:00:27'),
(1591, 'The :attribute could not be uploaded.', ':attribute yüklenemedi.', '2025-01-09 21:00:27', '2025-01-09 21:00:27'),
(1592, 'The :attribute must be uppercase.', ':attribute büyük harflerden oluşmalıdır.', '2025-01-09 21:00:27', '2025-01-09 21:00:27'),
(1593, 'The :attribute must be a valid ULID.', ':attribute geçerli bir ULID olmalıdır.', '2025-01-09 21:00:27', '2025-01-09 21:00:27'),
(1594, 'The :attribute must be a valid UUID.', ':attribute geçerli bir UUID olmalıdır.', '2025-01-09 21:00:27', '2025-01-09 21:00:27'),
(1595, 'Captcha verification failed.', 'Captcha doğrulaması başarısız oldu.', '2025-01-09 21:00:27', '2025-01-09 21:00:27'),
(1596, 'Terms of Service', 'kullanım şartları', '2025-01-09 21:00:27', '2025-01-09 21:00:27'),
(1597, 'The phone number must be a valid 10-digit number.', 'Telefon numarası geçerli bir 10 basamaklı numara olmalıdır.', '2025-01-09 21:00:27', '2025-01-09 21:00:27'),
(1598, 'The :attribute contains forbidden patterns.', ':attribute yasaklanmış desenler içeriyor.', '2025-01-09 21:00:27', '2025-01-09 21:00:27'),
(1599, 'Emails of this type are not allowed.', 'Bu tür e-postalara izin verilmez.', '2025-01-09 21:00:27', '2025-01-09 21:00:27'),
(1600, 'Edit Footer Link', 'Alt Bilgi Bağlantısını Düzenle', '2025-01-09 21:16:49', '2025-01-09 21:16:49'),
(1601, 'New Footer Link', 'Yeni Alt Bilgi Bağlantısı', '2025-01-09 21:23:53', '2025-01-09 21:23:53'),
(1602, 'New Navbar link', 'Yeni Navigasyon Bağlantısı', '2025-01-09 21:41:26', '2025-01-09 21:41:26'),
(1603, 'Premium Settings', 'Premium Ayarları', '2025-01-09 21:59:02', '2025-01-09 21:59:02'),
(1604, 'Premium Terms', 'Premium Şartlar', '2025-01-09 21:59:02', '2025-01-09 21:59:02'),
(1605, 'SMTP is not enabled, please enable the smtp from settings', 'SMTP etkin değil, lütfen ayarlardan SMTP\'yi etkinleştirin', '2025-01-09 22:02:11', '2025-01-09 22:02:11'),
(1606, ':username has registered', ':username kaydoldu', '2025-01-09 22:07:14', '2025-01-09 22:07:14'),
(1607, 'KYC Verification', 'Kimlik Doğrulama', '2025-01-09 22:07:25', '2025-01-10 05:25:53'),
(1608, 'Your item has been updated successfully', 'Öğeniz başarıyla güncellendi', '2025-01-09 22:16:05', '2025-01-09 22:16:05'),
(1609, 'Payments Method', 'Ödeme Yöntemi', '2025-01-09 22:22:35', '2025-01-09 22:22:35'),
(1610, 'Billing address', 'Fatura adresi', '2025-01-09 22:22:35', '2025-01-09 22:22:35'),
(1611, 'SSL Secure Payment', 'SSL Güvenli Ödeme', '2025-01-09 22:22:36', '2025-01-09 22:22:36'),
(1612, 'Your information is protected by 256-bit SSL encryption', 'Bilgileriniz 256-bit SSL şifrelemesiyle korunmaktadır', '2025-01-09 22:22:36', '2025-01-09 22:22:36'),
(1613, 'Order Summary', 'Sipariş Özeti', '2025-01-09 22:22:36', '2025-01-09 22:22:36'),
(1614, 'License', 'Lisans', '2025-01-09 22:22:36', '2025-01-09 22:22:36'),
(1615, 'Qty', 'Adet', '2025-01-09 22:22:36', '2025-01-09 22:22:36'),
(1616, 'Purchase Price', 'Satın Alma Fiyatı', '2025-01-09 22:23:37', '2025-01-09 22:23:37'),
(1617, 'Prices include VAT', 'Fiyatlara KDV Dahildir.', '2025-01-09 22:23:37', '2025-01-09 22:23:37'),
(1618, 'You do not have any statements', 'Herhangi bir bildiriminiz yok', '2025-01-09 22:57:34', '2025-01-09 22:57:34'),
(1619, 'You do not have any statements, when you have statements you will see them here.', 'Herhangi bir bildiriminiz yok, bildiriminiz olduğunda burada görebileceksiniz.', '2025-01-09 22:57:34', '2025-01-09 22:57:34'),
(1620, 'The discount has been created successfully', 'İndirim başarıyla oluşturuldu', '2025-01-09 23:32:22', '2025-01-09 23:32:22'),
(1621, 'Starting at', 'Başlangıçtaki fiyat', '2025-01-09 23:32:23', '2025-01-09 23:32:23'),
(1622, 'Ending at', 'Bitiş tarihi', '2025-01-09 23:32:23', '2025-01-09 23:32:23'),
(1623, 'The price cannot be updated while the item is on discount', 'İndirimdeyken fiyat güncellenemez', '2025-01-09 23:32:40', '2025-01-09 23:32:40'),
(1624, 'On Discount', 'İndirimde', '2025-01-09 23:33:48', '2025-01-09 23:33:48'),
(1625, 'New Sub Category', 'Yeni Alt Kategori', '2025-01-10 01:02:20', '2025-01-10 01:02:20'),
(1626, 'File type', 'Dosya türü', '2025-01-10 01:04:27', '2025-01-10 01:04:27'),
(1627, 'File With Preview Image', 'Önizleme Resmi Olan Dosya', '2025-01-10 01:04:27', '2025-01-10 01:04:27'),
(1628, 'File With Video Preview', 'Video Önizlemesi Olan Dosya', '2025-01-10 01:04:27', '2025-01-10 01:04:27'),
(1629, 'File With Audio Preview', 'Sesli Önizleme Olan Dosya', '2025-01-10 01:04:27', '2025-01-10 01:04:27'),
(1630, 'SEO (Optional)', 'SEO (İsteğe Bağlı)', '2025-01-10 01:04:27', '2025-01-10 01:04:27'),
(1631, 'Go to dashboard', 'Gösterge Paneline Git', '2025-01-10 01:58:10', '2025-01-10 01:58:10'),
(1632, 'The discount has been deleted successfully', 'İndirim başarıyla silindi', '2025-01-10 02:08:33', '2025-01-10 02:08:33'),
(1633, 'Item has deleted successfully', 'Ürün başarıyla silindi', '2025-01-10 03:03:12', '2025-01-10 03:03:12'),
(1634, 'Page Expired', 'Sayfa Süresi Dolmuş', '2025-01-10 05:23:18', '2025-01-10 05:23:18'),
(1635, 'Sorry, your session has expired, or the form has become invalid. Please refresh the page and try again.', 'Üzgünüz, oturumunuz sona erdi veya form geçersiz oldu. Lütfen sayfayı yenileyin ve tekrar deneyin.', '2025-01-10 05:23:18', '2025-01-10 05:23:18'),
(1636, 'You do not have any transactions', 'Hiçbir satın alma işleminiz yok', '2025-01-10 05:24:20', '2025-01-10 05:24:56'),
(1637, 'You do not have any transactions currently, when you purchase new items transactions will show up here', 'Şu anda hiçbir işleminiz yok, yeni ürünler satın aldığınızda işlemler burada görünecek.', '2025-01-10 05:24:20', '2025-01-10 05:24:20'),
(1638, 'You do not have any purchases', 'Hiçbir satın alma işleminiz yok', '2025-01-10 05:24:28', '2025-01-10 05:24:28'),
(1639, 'When you purchase item, you will be able to see them here.', 'Ürün satın aldığınızda, burada görebileceksiniz.', '2025-01-10 05:24:28', '2025-01-10 05:24:28'),
(1640, 'You do not have any refund requests', 'Hiçbir iade talebiniz yok', '2025-01-10 05:24:58', '2025-01-10 05:24:58'),
(1641, 'You do not have any refund requests, when you have refund requests you will see them here.', 'Hiçbir iade talebiniz yok, iade talepleriniz olduğunda burada görünecekler.', '2025-01-10 05:24:58', '2025-01-10 05:24:58'),
(1642, 'You do not have any support tickets', 'Hiçbir destek talebiniz yok', '2025-01-10 05:25:24', '2025-01-15 02:35:47'),
(1643, 'You do not have any support tickets, when you have tickets with our support you will see them here.', 'Hiçbir destek talebiniz yok, destekle ilgili talepleriniz olduğunda burada görünecekler.', '2025-01-10 05:25:24', '2025-01-15 02:34:02'),
(1644, 'Edit Page', 'Edit Page', '2025-01-10 19:50:21', '2025-01-10 19:50:21'),
(1645, 'New Page', 'New Page', '2025-01-10 19:50:35', '2025-01-10 19:50:35'),
(1646, 'E-Ticaret Çözümleri', 'E-Ticaret Çözümleri', '2025-01-10 20:06:57', '2025-01-10 20:06:57'),
(1647, 'Entegrasyon Çözümleri', 'Entegrasyon Çözümleri', '2025-01-10 20:34:58', '2025-01-10 20:34:58'),
(1648, 'İndirimde', 'İndirimde', '2025-01-11 02:04:54', '2025-01-11 02:04:54'),
(1649, 'Satın Alma Fiyatı', 'Satın Alma Fiyatı', '2025-01-11 02:06:11', '2025-01-11 02:06:11'),
(1650, 'Fiyatlara KDV Dahildir.', 'Fiyatlara KDV Dahildir.', '2025-01-11 02:06:11', '2025-01-11 02:06:11'),
(1651, 'New FAQ', 'New FAQ', '2025-01-11 02:07:26', '2025-01-11 02:07:26'),
(1652, 'Spain', 'Spain', '2025-01-11 04:09:39', '2025-01-11 04:09:39'),
(1653, 'Suriname', 'Suriname', '2025-01-11 04:09:39', '2025-01-11 04:09:39'),
(1654, 'Svalbard and Jan Mayen', 'Svalbard and Jan Mayen', '2025-01-11 04:09:39', '2025-01-11 04:09:39'),
(1655, 'Swaziland', 'Swaziland', '2025-01-11 04:09:39', '2025-01-11 04:09:39'),
(1656, 'Timor-Leste', 'Timor-Leste', '2025-01-11 04:09:39', '2025-01-11 04:09:39'),
(1657, 'U.S. Minor Outlying Islands', 'U.S. Minor Outlying Islands', '2025-01-11 04:09:39', '2025-01-11 04:09:39'),
(1658, 'U.S. Miscellaneous Pacific Islands', 'U.S. Miscellaneous Pacific Islands', '2025-01-11 04:09:39', '2025-01-11 04:09:39'),
(1659, 'U.S. Virgin Islands', 'U.S. Virgin Islands', '2025-01-11 04:09:39', '2025-01-11 04:09:39'),
(1660, 'Union of Soviet Socialist Republics', 'Union of Soviet Socialist Republics', '2025-01-11 04:09:39', '2025-01-11 04:09:39'),
(1661, 'Edit FAQ', 'Edit FAQ', '2025-01-12 06:50:08', '2025-01-12 06:50:08'),
(1662, 'Leave a comment', 'Yorum Yazın', '2025-01-12 06:51:29', '2025-01-12 07:04:24'),
(1663, 'Şifre yanlış.', 'Şifre yanlış.', '2025-01-12 06:54:14', '2025-01-12 06:54:14'),
(1664, ':attribute geçerli bir tarih olmalıdır.', ':attribute geçerli bir tarih olmalıdır.', '2025-01-12 06:54:14', '2025-01-12 06:54:14'),
(1665, ':attribute :date tarihine eşit bir tarih olmalıdır.', ':attribute :date tarihine eşit bir tarih olmalıdır.', '2025-01-12 06:54:14', '2025-01-12 06:54:14'),
(1666, ':attribute :format formatıyla eşleşmelidir.', ':attribute :format formatıyla eşleşmelidir.', '2025-01-12 06:54:14', '2025-01-12 06:54:14'),
(1667, ':attribute :decimal ondalık basamak içermelidir.', ':attribute :decimal ondalık basamak içermelidir.', '2025-01-12 06:54:14', '2025-01-12 06:54:14'),
(1668, ':attribute reddedilmelidir.', ':attribute reddedilmelidir.', '2025-01-12 06:54:14', '2025-01-12 06:54:14'),
(1669, ':attribute, :other :value olduğunda reddedilmelidir.', ':attribute, :other :value olduğunda reddedilmelidir.', '2025-01-12 06:54:14', '2025-01-12 06:54:14'),
(1670, ':attribute ve :other farklı olmalıdır.', ':attribute ve :other farklı olmalıdır.', '2025-01-12 06:54:14', '2025-01-12 06:54:14'),
(1671, ':attribute :digits basamaklı olmalıdır.', ':attribute :digits basamaklı olmalıdır.', '2025-01-12 06:54:14', '2025-01-12 06:54:14'),
(1672, ':attribute :min ile :max basamak arasında olmalıdır.', ':attribute :min ile :max basamak arasında olmalıdır.', '2025-01-12 06:54:14', '2025-01-12 06:54:14'),
(1673, ':attribute geçersiz resim boyutlarına sahiptir.', ':attribute geçersiz resim boyutlarına sahiptir.', '2025-01-12 06:54:14', '2025-01-12 06:54:14'),
(1674, ':attribute yinelenen bir değer içeriyor.', ':attribute yinelenen bir değer içeriyor.', '2025-01-12 06:54:14', '2025-01-12 06:54:14'),
(1675, ':attribute aşağıdakilerden biriyle bitmemelidir: :values.', ':attribute aşağıdakilerden biriyle bitmemelidir: :values.', '2025-01-12 06:54:14', '2025-01-12 06:54:14'),
(1676, ':attribute aşağıdakilerden biriyle başlamamalıdır: :values.', ':attribute aşağıdakilerden biriyle başlamamalıdır: :values.', '2025-01-12 06:54:14', '2025-01-12 06:54:14'),
(1677, ':attribute geçerli bir e-posta adresi olmalıdır.', ':attribute geçerli bir e-posta adresi olmalıdır.', '2025-01-12 06:54:14', '2025-01-12 06:54:14'),
(1678, ':attribute geçerli bir kullanıcı adı olmalıdır.', ':attribute geçerli bir kullanıcı adı olmalıdır.', '2025-01-12 06:54:14', '2025-01-12 06:54:14'),
(1679, ':attribute aşağıdakilerden biriyle bitmelidir: :values.', ':attribute aşağıdakilerden biriyle bitmelidir: :values.', '2025-01-12 06:54:14', '2025-01-12 06:54:14'),
(1680, 'Seçilen :attribute geçersiz.', 'Seçilen :attribute geçersiz.', '2025-01-12 06:54:14', '2025-01-12 06:54:14'),
(1681, ':attribute bir dosya olmalıdır.', ':attribute bir dosya olmalıdır.', '2025-01-12 06:54:14', '2025-01-12 06:54:14'),
(1682, ':attribute bir değer içermelidir.', ':attribute bir değer içermelidir.', '2025-01-12 06:54:14', '2025-01-12 06:54:14'),
(1683, ':attribute, :value öğeden fazla içermelidir.', ':attribute, :value öğeden fazla içermelidir.', '2025-01-12 06:54:15', '2025-01-12 06:54:15'),
(1684, ':attribute, :value kilobayttan büyük olmalıdır.', ':attribute, :value kilobayttan büyük olmalıdır.', '2025-01-12 06:54:15', '2025-01-12 06:54:15'),
(1685, ':attribute, :value değerinden büyük olmalıdır.', ':attribute, :value değerinden büyük olmalıdır.', '2025-01-12 06:54:15', '2025-01-12 06:54:15'),
(1686, ':attribute, :value karakterden fazla olmalıdır.', ':attribute, :value karakterden fazla olmalıdır.', '2025-01-12 06:54:15', '2025-01-12 06:54:15'),
(1687, ':attribute, :value veya daha fazla öğe içermelidir.', ':attribute, :value veya daha fazla öğe içermelidir.', '2025-01-12 06:54:15', '2025-01-12 06:54:15'),
(1688, ':attribute, :value kilobayttan büyük veya eşit olmalıdır.', ':attribute, :value kilobayttan büyük veya eşit olmalıdır.', '2025-01-12 06:54:15', '2025-01-12 06:54:15'),
(1689, ':attribute, :value değerinden büyük veya eşit olmalıdır.', ':attribute, :value değerinden büyük veya eşit olmalıdır.', '2025-01-12 06:54:15', '2025-01-12 06:54:15'),
(1690, ':attribute, :value karakterden büyük veya eşit olmalıdır.', ':attribute, :value karakterden büyük veya eşit olmalıdır.', '2025-01-12 06:54:15', '2025-01-12 06:54:15'),
(1691, ':attribute bir resim olmalıdır.', ':attribute bir resim olmalıdır.', '2025-01-12 06:54:15', '2025-01-12 06:54:15'),
(1692, ':attribute, :other içinde bulunmalıdır.', ':attribute, :other içinde bulunmalıdır.', '2025-01-12 06:54:15', '2025-01-12 06:54:15'),
(1693, ':attribute bir tam sayı olmalıdır.', ':attribute bir tam sayı olmalıdır.', '2025-01-12 06:54:15', '2025-01-12 06:54:15'),
(1694, ':attribute geçerli bir IP adresi olmalıdır.', ':attribute geçerli bir IP adresi olmalıdır.', '2025-01-12 06:54:15', '2025-01-12 06:54:15'),
(1695, ':attribute geçerli bir IPv4 adresi olmalıdır.', ':attribute geçerli bir IPv4 adresi olmalıdır.', '2025-01-12 06:54:15', '2025-01-12 06:54:15'),
(1696, ':attribute geçerli bir IPv6 adresi olmalıdır.', ':attribute geçerli bir IPv6 adresi olmalıdır.', '2025-01-12 06:54:15', '2025-01-12 06:54:15'),
(1697, ':attribute geçerli bir JSON dizesi olmalıdır.', ':attribute geçerli bir JSON dizesi olmalıdır.', '2025-01-12 06:54:15', '2025-01-12 06:54:15'),
(1698, ':attribute küçük harflerden oluşmalıdır.', ':attribute küçük harflerden oluşmalıdır.', '2025-01-12 06:54:15', '2025-01-12 06:54:15'),
(1699, ':attribute, :value öğeden az içermelidir.', ':attribute, :value öğeden az içermelidir.', '2025-01-12 06:54:15', '2025-01-12 06:54:15'),
(1700, ':attribute, :value kilobayttan küçük olmalıdır.', ':attribute, :value kilobayttan küçük olmalıdır.', '2025-01-12 06:54:15', '2025-01-12 06:54:15'),
(1701, ':attribute, :value değerinden küçük olmalıdır.', ':attribute, :value değerinden küçük olmalıdır.', '2025-01-12 06:54:15', '2025-01-12 06:54:15'),
(1702, ':attribute, :value karakterden az olmalıdır.', ':attribute, :value karakterden az olmalıdır.', '2025-01-12 06:54:15', '2025-01-12 06:54:15'),
(1703, ':attribute, :value öğeden fazla içermemelidir.', ':attribute, :value öğeden fazla içermemelidir.', '2025-01-12 06:54:15', '2025-01-12 06:54:15'),
(1704, ':attribute, :value kilobayttan küçük veya eşit olmalıdır.', ':attribute, :value kilobayttan küçük veya eşit olmalıdır.', '2025-01-12 06:54:15', '2025-01-12 06:54:15'),
(1705, ':attribute, :value değerinden küçük veya eşit olmalıdır.', ':attribute, :value değerinden küçük veya eşit olmalıdır.', '2025-01-12 06:54:15', '2025-01-12 06:54:15'),
(1706, ':attribute, :value karakterden küçük veya eşit olmalıdır.', ':attribute, :value karakterden küçük veya eşit olmalıdır.', '2025-01-12 06:54:15', '2025-01-12 06:54:15'),
(1707, ':attribute geçerli bir MAC adresi olmalıdır.', ':attribute geçerli bir MAC adresi olmalıdır.', '2025-01-12 06:54:15', '2025-01-12 06:54:15'),
(1708, ':attribute en fazla :max öğe içerebilir.', ':attribute en fazla :max öğe içerebilir.', '2025-01-12 06:54:15', '2025-01-12 06:54:15'),
(1709, ':attribute, :max kilobayttan büyük olamaz.', ':attribute, :max kilobayttan büyük olamaz.', '2025-01-12 06:54:15', '2025-01-12 06:54:15'),
(1710, ':attribute, :max değerinden büyük olamaz.', ':attribute, :max değerinden büyük olamaz.', '2025-01-12 06:54:16', '2025-01-12 06:54:16'),
(1711, ':attribute, :max karakterden uzun olamaz.', ':attribute, :max karakterden uzun olamaz.', '2025-01-12 06:54:16', '2025-01-12 06:54:16'),
(1712, ':attribute, en fazla :max basamak içerebilir.', ':attribute, en fazla :max basamak içerebilir.', '2025-01-12 06:54:16', '2025-01-12 06:54:16'),
(1713, ':attribute şu türlerden bir dosya olmalıdır: :values.', ':attribute şu türlerden bir dosya olmalıdır: :values.', '2025-01-12 06:54:16', '2025-01-12 06:54:16'),
(1714, ':attribute en az :min öğe içermelidir.', ':attribute en az :min öğe içermelidir.', '2025-01-12 06:54:16', '2025-01-12 06:54:16'),
(1715, ':attribute en az :min kilobayt olmalıdır.', ':attribute en az :min kilobayt olmalıdır.', '2025-01-12 06:54:16', '2025-01-12 06:54:16'),
(1716, ':attribute en az :min olmalıdır.', ':attribute en az :min olmalıdır.', '2025-01-12 06:54:16', '2025-01-12 06:54:16'),
(1717, ':attribute en az :min karakter olmalıdır.', ':attribute en az :min karakter olmalıdır.', '2025-01-12 06:54:16', '2025-01-12 06:54:16'),
(1718, ':attribute en az :min basamak içermelidir.', ':attribute en az :min basamak içermelidir.', '2025-01-12 06:54:16', '2025-01-12 06:54:16'),
(1719, ':attribute eksik olmalıdır.', ':attribute eksik olmalıdır.', '2025-01-12 06:54:16', '2025-01-12 06:54:16'),
(1720, ':attribute, :other :value olduğunda eksik olmalıdır.', ':attribute, :other :value olduğunda eksik olmalıdır.', '2025-01-12 06:54:16', '2025-01-12 06:54:16'),
(1721, ':attribute, :other :value olmadığında eksik olmalıdır.', ':attribute, :other :value olmadığında eksik olmalıdır.', '2025-01-12 06:54:16', '2025-01-12 06:54:16'),
(1722, ':attribute, :values mevcut olduğunda eksik olmalıdır.', ':attribute, :values mevcut olduğunda eksik olmalıdır.', '2025-01-12 06:54:16', '2025-01-12 06:54:16'),
(1723, ':attribute, :value katı olmalıdır.', ':attribute, :value katı olmalıdır.', '2025-01-12 06:54:16', '2025-01-12 06:54:16'),
(1724, ':attribute formatı geçersiz.', ':attribute formatı geçersiz.', '2025-01-12 06:54:16', '2025-01-12 06:54:16'),
(1725, ':attribute bir sayı olmalıdır.', ':attribute bir sayı olmalıdır.', '2025-01-12 06:54:16', '2025-01-12 06:54:16'),
(1726, ':attribute en az bir harf içermelidir.', ':attribute en az bir harf içermelidir.', '2025-01-12 06:54:16', '2025-01-12 06:54:16'),
(1727, ':attribute en az bir büyük ve bir küçük harf içermelidir.', ':attribute en az bir büyük ve bir küçük harf içermelidir.', '2025-01-12 06:54:16', '2025-01-12 06:54:16'),
(1728, ':attribute en az bir sayı içermelidir.', ':attribute en az bir sayı içermelidir.', '2025-01-12 06:54:16', '2025-01-12 06:54:16'),
(1729, ':attribute en az bir sembol içermelidir.', ':attribute en az bir sembol içermelidir.', '2025-01-12 06:54:17', '2025-01-12 06:54:17'),
(1730, 'Verilen :attribute bir veri sızıntısında yer almış. Lütfen farklı bir :attribute seçin.', 'Verilen :attribute bir veri sızıntısında yer almış. Lütfen farklı bir :attribute seçin.', '2025-01-12 06:54:17', '2025-01-12 06:54:17'),
(1731, ':attribute mevcut olmalıdır.', ':attribute mevcut olmalıdır.', '2025-01-12 06:54:17', '2025-01-12 06:54:17'),
(1732, ':attribute yasaktır.', ':attribute yasaktır.', '2025-01-12 06:54:17', '2025-01-12 06:54:17'),
(1733, ':attribute, :other :value olduğunda yasaktır.', ':attribute, :other :value olduğunda yasaktır.', '2025-01-12 06:54:17', '2025-01-12 06:54:17'),
(1734, ':attribute, :other :values içinde değilse yasaktır.', ':attribute, :other :values içinde değilse yasaktır.', '2025-01-12 06:54:17', '2025-01-12 06:54:17'),
(1735, ':attribute, :other\'ın mevcut olmasını yasaklar.', ':attribute, :other\'ın mevcut olmasını yasaklar.', '2025-01-12 06:54:17', '2025-01-12 06:54:17'),
(1736, ':attribute gerekli bir alandır.', ':attribute gerekli bir alandır.', '2025-01-12 06:54:17', '2025-01-12 06:54:17'),
(1737, ':attribute, şunlar için girişler içermelidir: :values.', ':attribute, şunlar için girişler içermelidir: :values.', '2025-01-12 06:54:17', '2025-01-12 06:54:17'),
(1738, ':attribute, :other :value olduğunda gereklidir.', ':attribute, :other :value olduğunda gereklidir.', '2025-01-12 06:54:17', '2025-01-12 06:54:17'),
(1739, ':attribute, :other kabul edildiğinde gereklidir.', ':attribute, :other kabul edildiğinde gereklidir.', '2025-01-12 06:54:17', '2025-01-12 06:54:17'),
(1740, ':attribute, :other :values içinde olmadıkça gereklidir.', ':attribute, :other :values içinde olmadıkça gereklidir.', '2025-01-12 06:54:17', '2025-01-12 06:54:17'),
(1741, ':attribute, :values mevcut olduğunda gereklidir.', ':attribute, :values mevcut olduğunda gereklidir.', '2025-01-12 06:54:17', '2025-01-12 06:54:17'),
(1742, ':attribute, :values mevcut olmadığında gereklidir.', ':attribute, :values mevcut olmadığında gereklidir.', '2025-01-12 06:54:17', '2025-01-12 06:54:17'),
(1743, ':attribute, :values mevcut değilken gereklidir.', ':attribute, :values mevcut değilken gereklidir.', '2025-01-12 06:54:17', '2025-01-12 06:54:17'),
(1744, ':attribute, :other ile eşleşmelidir.', ':attribute, :other ile eşleşmelidir.', '2025-01-12 06:54:17', '2025-01-12 06:54:17'),
(1745, ':attribute, :size öğe içermelidir.', ':attribute, :size öğe içermelidir.', '2025-01-12 06:54:17', '2025-01-12 06:54:17'),
(1746, ':attribute, :size kilobayt olmalıdır.', ':attribute, :size kilobayt olmalıdır.', '2025-01-12 06:54:17', '2025-01-12 06:54:17'),
(1747, ':attribute, :size olmalıdır.', ':attribute, :size olmalıdır.', '2025-01-12 06:54:17', '2025-01-12 06:54:17'),
(1748, ':attribute, :size karakter olmalıdır.', ':attribute, :size karakter olmalıdır.', '2025-01-12 06:54:17', '2025-01-12 06:54:17'),
(1749, ':attribute, şu öğelerden biriyle başlamalıdır: :values.', ':attribute, şu öğelerden biriyle başlamalıdır: :values.', '2025-01-12 06:54:17', '2025-01-12 06:54:17'),
(1750, ':attribute bir metin olmalıdır.', ':attribute bir metin olmalıdır.', '2025-01-12 06:54:17', '2025-01-12 06:54:17'),
(1751, ':attribute geçerli bir zaman dilimi olmalıdır.', ':attribute geçerli bir zaman dilimi olmalıdır.', '2025-01-12 06:54:17', '2025-01-12 06:54:17'),
(1752, ':attribute daha önce alınmış.', ':attribute daha önce alınmış.', '2025-01-12 06:54:17', '2025-01-12 06:54:17'),
(1753, ':attribute yüklenemedi.', ':attribute yüklenemedi.', '2025-01-12 06:54:18', '2025-01-12 06:54:18'),
(1754, ':attribute büyük harflerden oluşmalıdır.', ':attribute büyük harflerden oluşmalıdır.', '2025-01-12 06:54:18', '2025-01-12 06:54:18'),
(1755, ':attribute geçerli bir ULID olmalıdır.', ':attribute geçerli bir ULID olmalıdır.', '2025-01-12 06:54:18', '2025-01-12 06:54:18'),
(1756, ':attribute geçerli bir UUID olmalıdır.', ':attribute geçerli bir UUID olmalıdır.', '2025-01-12 06:54:18', '2025-01-12 06:54:18'),
(1757, 'Captcha doğrulaması başarısız oldu.', 'Captcha doğrulaması başarısız oldu.', '2025-01-12 06:54:18', '2025-01-12 06:54:18'),
(1758, 'kullanım şartları', 'kullanım şartları', '2025-01-12 06:54:18', '2025-01-12 06:54:18'),
(1759, 'Telefon numarası geçerli bir 10 basamaklı numara olmalıdır.', 'Telefon numarası geçerli bir 10 basamaklı numara olmalıdır.', '2025-01-12 06:54:18', '2025-01-12 06:54:18'),
(1760, ':attribute yasaklanmış desenler içeriyor.', ':attribute yasaklanmış desenler içeriyor.', '2025-01-12 06:54:18', '2025-01-12 06:54:18'),
(1761, 'Bu tür e-postalara izin verilmez.', 'Bu tür e-postalara izin verilmez.', '2025-01-12 06:54:18', '2025-01-12 06:54:18'),
(1762, ':count item|:count items', ':count ürün |:count ürün', '2025-01-12 07:04:51', '2025-01-15 02:25:22'),
(1763, ':category_name (:count)', ':category_name (:count)', '2025-01-12 07:04:51', '2025-01-12 07:04:51'),
(1764, 'Header Menü', 'Header Menü', '2025-01-13 02:10:33', '2025-01-13 02:10:33'),
(1765, 'Footer Menü', 'Footer Menü', '2025-01-13 02:10:33', '2025-01-13 02:10:33'),
(1766, 'Tema Düzenleyici', 'Tema Düzenleyici', '2025-01-13 02:34:41', '2025-01-13 02:34:41'),
(1767, 'Edit Support Period', 'Edit Support Period', '2025-01-14 08:12:54', '2025-01-14 08:12:54'),
(1768, 'Days of support', 'Days of support', '2025-01-14 08:12:54', '2025-01-14 08:12:54'),
(1769, 'Days', 'Days', '2025-01-14 08:12:54', '2025-01-14 08:12:54'),
(1770, 'Percentage', 'Percentage', '2025-01-14 08:12:54', '2025-01-14 08:12:54'),
(1771, '%', '%', '2025-01-14 08:12:54', '2025-01-14 08:12:54'),
(1772, 'Support percentage from item price, enter 0 to make support free.', 'Support percentage from item price, enter 0 to make support free.', '2025-01-14 08:12:54', '2025-01-14 08:12:54'),
(1773, 'themedit', 'themedit', '2025-01-14 08:32:18', '2025-01-14 08:32:18'),
(1774, 'Tema', 'Tema', '2025-01-14 08:32:38', '2025-01-14 08:32:38'),
(1775, 'Görünüm', 'Görünüm', '2025-01-14 08:32:58', '2025-01-14 08:32:58'),
(1776, '', '', '2025-01-14 08:43:04', '2025-01-14 08:43:04'),
(1777, 'Dosya : ', 'Dosya : ', '2025-01-14 08:43:04', '2025-01-14 08:43:04'),
(1778, 'entegrasyon.blade.php', 'entegrasyon.blade.php', '2025-01-14 08:43:04', '2025-01-14 08:43:04'),
(1779, 'Dosya Düzenleme: ', 'Dosya Düzenleme: ', '2025-01-14 08:48:40', '2025-01-14 08:48:40'),
(1780, 'Geri Dön', 'Geri Dön', '2025-01-14 08:48:40', '2025-01-14 08:48:40'),
(1781, 'Kod Düzenleyici', 'Kod Düzenleyici', '2025-01-14 08:48:40', '2025-01-14 08:48:40'),
(1782, 'Kaydet', 'Kaydet', '2025-01-14 08:48:40', '2025-01-14 08:48:40'),
(1783, 'ecommerce.blade.php', 'ecommerce.blade.php', '2025-01-14 08:59:33', '2025-01-14 08:59:33'),
(1784, 'webdesign.blade.php', 'webdesign.blade.php', '2025-01-14 09:09:05', '2025-01-14 09:09:05'),
(1785, 'integration.blade.php', 'integration.blade.php', '2025-01-14 09:10:08', '2025-01-14 09:10:08'),
(1786, 'seo.blade.php', 'seo.blade.php', '2025-01-14 09:10:23', '2025-01-14 09:10:23'),
(1787, 'SEO Hizmetleri', 'SEO Hizmetleri', '2025-01-14 09:24:14', '2025-01-14 09:24:14'),
(1788, 'New Category', 'New Category', '2025-01-15 02:24:17', '2025-01-15 02:24:17'),
(1789, 'Choose', 'Choose', '2025-01-15 02:24:17', '2025-01-15 02:24:17'),
(1790, 'No Categories Found', 'No Categories Found', '2025-01-15 02:36:10', '2025-01-15 02:36:10'),
(1791, 'New Ticket Category', 'New Ticket Category', '2025-01-15 02:36:13', '2025-01-15 02:36:13'),
(1792, 'Ticket Created Successfully', 'Ticket Created Successfully', '2025-01-15 02:36:37', '2025-01-15 02:36:37'),
(1793, 'Attachments', 'Attachments', '2025-01-15 02:36:58', '2025-01-15 02:36:58'),
(1794, 'Close ticket', 'Close ticket', '2025-01-15 02:36:58', '2025-01-15 02:36:58'),
(1795, 'Your Reply Sent Successfully', 'Cevabınız Başarıyla Gönderildi.', '2025-01-15 02:37:14', '2025-01-15 02:54:52'),
(1796, 'Attached files', 'Attached files', '2025-01-15 02:37:42', '2025-01-15 02:37:42'),
(1797, 'ID Verification', 'Kimlik Doğrulama', '2025-01-15 02:37:57', '2025-01-15 02:38:35'),
(1798, 'Upload a clear, legible image and Ensure that all relevant details, such as your name, photo, and ID number, are visible. the image must be type of .JPG or .PNG', 'Net, okunaklı bir resim yükleyin ve adınız, fotoğrafınız ve kimlik numaranız gibi tüm ilgili ayrıntıların görünür olduğundan emin olun. Resim .JPG veya .PNG türünde olmalıdır.', '2025-01-15 02:37:57', '2025-01-15 02:39:01'),
(1799, 'National ID Number', 'TC Kimlik Numarası', '2025-01-15 02:37:57', '2025-01-15 02:40:08'),
(1800, 'Passport Number', 'Passport Number', '2025-01-15 02:37:57', '2025-01-15 02:37:57'),
(1801, 'Front Of ID', 'Kimlik Ön Yüzü', '2025-01-15 02:37:57', '2025-01-15 02:39:40'),
(1802, 'Back Of ID', 'Kimlik Arka Yüzü', '2025-01-15 02:37:57', '2025-01-15 02:39:48'),
(1803, 'Upload a clear selfie and Ensure it\'s well-lit and visible. the image must be type of.JPG or .PNG', 'Net bir özçekim yükleyin ve iyi aydınlatılmış ve görünür olduğundan emin olun. Görüntü .JPG veya .PNG türünde olmalıdır.', '2025-01-15 02:37:57', '2025-01-15 02:39:25'),
(1804, 'Go to My Purchases', 'Go to My Purchases', '2025-01-15 02:39:56', '2025-01-15 02:39:56'),
(1805, 'KYC Verification Required', 'Kimlik Doğrulaması Gerekli', '2025-01-15 02:40:25', '2025-01-15 02:40:52'),
(1806, 'Your KYC verification is required to continue using our platform. Please complete the verification process as soon as possible.', 'Platformumuzu kullanmaya devam etmek için kimlik doğrulamanız gereklidir. Lütfen doğrulama sürecini mümkün olan en kısa sürede tamamlayın.', '2025-01-15 02:40:25', '2025-01-15 02:41:16'),
(1807, 'Complete KYC', 'Kimlik Doğrulaması Yap', '2025-01-15 02:40:25', '2025-01-15 02:41:36'),
(1808, 'Instructions cannot be empty', 'Instructions cannot be empty', '2025-01-15 02:43:02', '2025-01-15 02:43:02'),
(1809, 'Complete the payment', 'Ödemeyi Tamamlayın', '2025-01-15 02:45:14', '2025-01-15 02:45:36'),
(1810, 'Payment details', 'Ödeme Detayları', '2025-01-15 02:45:14', '2025-01-15 02:45:55'),
(1811, 'Payment proof', 'Ödeme Dekontu', '2025-01-15 02:45:14', '2025-01-15 02:46:45'),
(1812, 'Choose payment Proof (Receipt, Bank statement, etc..), allowed file types (jpg, jpeg, png, pdf) in max size 2MB.', 'Ödeme dekontunu, izin verilen dosya türlerini (jpg, jpeg, png, pdf) ve maksimum 2MB boyutunu seçin.', '2025-01-15 02:45:14', '2025-01-15 02:46:45'),
(1813, 'Cancel Payment', 'Ödemeyi İptal Et', '2025-01-15 02:45:14', '2025-01-15 02:47:03'),
(1814, 'New Pending Transaction [#:transaction_id]', 'New Pending Transaction [#:transaction_id]', '2025-01-15 02:46:57', '2025-01-15 02:46:57'),
(1815, 'Payment proof was sent successfully. Our team will review it as soon as possible', 'Payment proof was sent successfully. Our team will review it as soon as possible', '2025-01-15 02:46:57', '2025-01-15 02:46:57'),
(1816, 'Transaction #:transaction_id', 'Transaction #:transaction_id', '2025-01-15 02:48:14', '2025-01-15 02:48:14'),
(1817, 'Cancel', 'İptal Et', '2025-01-15 02:48:14', '2025-01-15 02:58:38'),
(1818, 'Cancellation Reason', 'İptal Nedeni', '2025-01-15 02:48:14', '2025-01-15 02:59:58'),
(1819, 'Send Email Notification', 'E-posta Bildirimi Gönder', '2025-01-15 02:48:14', '2025-01-15 03:00:12'),
(1820, 'View Payment Proof', 'Dekontu Görüntüle', '2025-01-15 02:48:14', '2025-01-15 02:59:02'),
(1821, 'Payment Gateway', 'Ödeme Yöntemi', '2025-01-15 02:48:14', '2025-01-15 02:59:39'),
(1822, '[Purchase] #:purchase_id (:item_name)', 'Yeni Sipariş #:purchase_id (:item_name)', '2025-01-15 02:48:18', '2025-01-15 03:46:09'),
(1823, 'Transaction has been paid successfully', 'Transaction has been paid successfully', '2025-01-15 02:48:18', '2025-01-15 02:48:18'),
(1824, 'Your Review', 'Your Review', '2025-01-15 02:49:29', '2025-01-15 02:49:29'),
(1825, 'This item has no reviews', 'This item has no reviews', '2025-01-15 02:49:29', '2025-01-15 02:49:29'),
(1826, 'Your review has been successfully published', 'Your review has been successfully published', '2025-01-15 02:49:37', '2025-01-15 02:49:37'),
(1827, 'License Certificate for :item_name', 'License Certificate for :item_name', '2025-01-15 02:52:08', '2025-01-15 02:52:08'),
(1828, 'This document certifies the purchase of the following license:', 'This document certifies the purchase of the following license:', '2025-01-15 02:52:08', '2025-01-15 02:52:08'),
(1829, 'Details of the license can be accessed from your workspace purchases page.', 'Details of the license can be accessed from your workspace purchases page.', '2025-01-15 02:52:08', '2025-01-15 02:52:08'),
(1830, 'Licensor\'s:', 'Licensor\'s:', '2025-01-15 02:52:08', '2025-01-15 02:52:08'),
(1831, 'Licensee:', 'Licensee:', '2025-01-15 02:52:08', '2025-01-15 02:52:08'),
(1832, 'Item ID:', 'Item ID:', '2025-01-15 02:52:08', '2025-01-15 02:52:08'),
(1833, 'Item Name:', 'Item Name:', '2025-01-15 02:52:08', '2025-01-15 02:52:08'),
(1834, 'Item URL:', 'Item URL:', '2025-01-15 02:52:08', '2025-01-15 02:52:08'),
(1835, 'Item Purchase Code:', 'Item Purchase Code:', '2025-01-15 02:52:08', '2025-01-15 02:52:08'),
(1836, 'Purchase Date:', 'Sipariş Tarihi :', '2025-01-15 02:52:08', '2025-01-15 03:46:09'),
(1837, 'Reason', 'İade Sebebi', '2025-01-15 02:52:40', '2025-01-15 02:53:20'),
(1838, 'Explain the reason for requesting a refund, which will help to process your request faster', 'Geri ödeme talebinde bulunma nedeninizi açıklayın; bu, talebinizin daha hızlı işlenmesine yardımcı olacaktır', '2025-01-15 02:52:40', '2025-01-15 02:53:20'),
(1839, 'Your refund request has been submitted successfully', 'Your refund request has been submitted successfully', '2025-01-15 02:53:48', '2025-01-15 02:53:48'),
(1840, 'Your reply', 'Cevabınız', '2025-01-15 02:54:20', '2025-01-15 02:54:52'),
(1841, 'Deposit Amount', 'Yatırım Tutarı', '2025-01-15 02:57:06', '2025-01-15 02:57:23'),
(1842, 'Deposit to account balance', 'Bakiye Yükleme', '2025-01-15 02:57:37', '2025-01-15 02:58:01'),
(1843, '[Deposit] Deposit to Wallet #:transaction_id', 'Bakiye Yükleme #:transaction_id', '2025-01-15 02:58:20', '2025-01-15 03:45:46'),
(1844, 'Transaction has been cancelled successfully', 'Transaction has been cancelled successfully', '2025-01-15 03:00:29', '2025-01-15 03:00:29'),
(1845, 'Your wallet balance is insufficient', 'Your wallet balance is insufficient', '2025-01-15 03:04:08', '2025-01-15 03:04:08'),
(1846, 'No Items in Favorite', 'Favorilerde Ürün Yok', '2025-01-15 03:09:53', '2025-01-15 03:10:10'),
(1847, 'You do not have any items in favorite. browse and add items you like!', 'Favorilerinizde hiçbir ürün bulunmuyor. Beğendiğiniz ürünleri inceleyip ekleyin!', '2025-01-15 03:09:53', '2025-01-15 03:10:22'),
(1848, ':key cannot be empty', ':key cannot be empty', '2025-01-15 03:59:43', '2025-01-15 03:59:43'),
(1849, 'Kategoriler', 'Kategoriler', '2025-01-15 04:17:21', '2025-01-15 04:17:21'),
(1850, 'Accept', 'Accept', '2025-01-15 05:22:33', '2025-01-15 05:22:33'),
(1851, 'Decline', 'Decline', '2025-01-15 05:22:33', '2025-01-15 05:22:33'),
(1852, '[Refund] Purchase #:purchase_id (:item_name)', '[Refund] Purchase #:purchase_id (:item_name)', '2025-01-15 05:22:37', '2025-01-15 05:22:37'),
(1853, 'The refund request has been accepted', 'The refund request has been accepted', '2025-01-15 05:22:38', '2025-01-15 05:22:38'),
(1854, 'refunds2', 'refunds2', '2025-03-15 17:45:47', '2025-03-15 17:45:47'),
(1855, 'Paketler', 'Paketler', '2025-03-15 17:53:16', '2025-03-15 17:53:16'),
(1856, 'Add New Package', 'Add New Package', '2025-03-16 01:15:04', '2025-03-16 01:15:04'),
(1857, 'packages', 'packages', '2025-03-16 01:15:04', '2025-03-16 01:15:04'),
(1858, 'Create Package', 'Create Package', '2025-03-16 01:15:10', '2025-03-16 01:15:10'),
(1859, 'Package Name', 'Package Name', '2025-03-16 01:30:11', '2025-03-16 01:30:11'),
(1860, 'Package Description (HTML)', 'Package Description (HTML)', '2025-03-16 01:30:11', '2025-03-16 01:30:11'),
(1861, 'Package Products', 'Package Products', '2025-03-16 01:30:11', '2025-03-16 01:30:11'),
(1862, 'Add Package', 'Add Package', '2025-03-16 01:30:11', '2025-03-16 01:30:11'),
(1863, 'SEO URL', 'SEO URL', '2025-03-16 01:30:11', '2025-03-16 01:30:11'),
(1864, 'SEO Title', 'SEO Title', '2025-03-16 01:30:11', '2025-03-16 01:30:11'),
(1865, 'SEO Description', 'SEO Description', '2025-03-16 01:30:11', '2025-03-16 01:30:11'),
(1866, 'Button 1 Name', 'Button 1 Name', '2025-03-16 01:30:11', '2025-03-16 01:30:11'),
(1867, 'Button 1 URL', 'Button 1 URL', '2025-03-16 01:30:11', '2025-03-16 01:30:11'),
(1868, 'Button 2 Name', 'Button 2 Name', '2025-03-16 01:30:11', '2025-03-16 01:30:11'),
(1869, 'Button 2 URL', 'Button 2 URL', '2025-03-16 01:30:11', '2025-03-16 01:30:11'),
(1870, 'Inactive', 'Inactive', '2025-03-16 01:30:11', '2025-03-16 01:30:11'),
(1871, 'Old Price', 'Old Price', '2025-03-16 01:30:11', '2025-03-16 01:30:11'),
(1872, 'New Price', 'New Price', '2025-03-16 01:30:11', '2025-03-16 01:30:11'),
(1873, 'Installment', 'Installment', '2025-03-16 01:30:11', '2025-03-16 01:30:11'),
(1874, 'Features', 'Features', '2025-03-16 01:30:11', '2025-03-16 01:30:11'),
(1875, 'Feature', 'Feature', '2025-03-16 01:30:11', '2025-03-16 01:30:11'),
(1876, 'Add Feature', 'Add Feature', '2025-03-16 01:30:11', '2025-03-16 01:30:11'),
(1877, 'Package created successfully', 'Package created successfully', '2025-03-16 01:30:45', '2025-03-16 01:30:45'),
(1878, 'Edit Package', 'Edit Package', '2025-03-16 01:30:54', '2025-03-16 01:30:54'),
(1879, 'Update Package', 'Update Package', '2025-03-16 01:30:54', '2025-03-16 01:30:54'),
(1880, 'Package updated successfully', 'Package updated successfully', '2025-03-16 01:35:28', '2025-03-16 01:35:28'),
(1881, 'Offers', 'Offers', '2025-03-17 07:24:47', '2025-03-17 07:24:47'),
(1882, 'Add New Offer', 'Add New Offer', '2025-03-17 07:24:47', '2025-03-17 07:24:47'),
(1883, 'Create Offer', 'Create Offer', '2025-03-17 07:24:50', '2025-03-17 07:24:50'),
(1884, 'Offer Title', 'Offer Title', '2025-03-17 07:24:50', '2025-03-17 07:24:50'),
(1885, 'Offer Description (HTML)', 'Offer Description (HTML)', '2025-03-17 07:24:50', '2025-03-17 07:24:50'),
(1886, 'Offer created successfully', 'Offer created successfully', '2025-03-17 07:25:12', '2025-03-17 07:25:12'),
(1887, 'Edit Offer', 'Edit Offer', '2025-03-17 07:25:15', '2025-03-17 07:25:15'),
(1888, 'Update Offer', 'Update Offer', '2025-03-17 07:25:16', '2025-03-17 07:25:16'),
(1889, 'Dynamic Form Fields', 'Dynamic Form Fields', '2025-03-17 07:38:09', '2025-03-17 07:38:09'),
(1890, 'Add Field', 'Add Field', '2025-03-17 07:38:09', '2025-03-17 07:38:09'),
(1891, 'Field Label', 'Field Label', '2025-03-17 07:38:09', '2025-03-17 07:38:09'),
(1892, 'Field Type', 'Field Type', '2025-03-17 07:38:09', '2025-03-17 07:38:09'),
(1893, 'Text', 'Text', '2025-03-17 07:38:09', '2025-03-17 07:38:09'),
(1894, 'Textarea', 'Textarea', '2025-03-17 07:38:09', '2025-03-17 07:38:09'),
(1895, 'Checkbox', 'Checkbox', '2025-03-17 07:38:09', '2025-03-17 07:38:09'),
(1896, 'Field Name', 'Field Name', '2025-03-17 07:38:09', '2025-03-17 07:38:09'),
(1897, 'Offer updated successfully', 'Offer updated successfully', '2025-03-17 07:50:04', '2025-03-17 07:50:04'),
(1898, 'Offer Submissions', 'Offer Submissions', '2025-03-17 17:54:17', '2025-03-17 17:54:17'),
(1899, 'Offer Slug', 'Offer Slug', '2025-03-17 17:54:17', '2025-03-17 17:54:17'),
(1900, 'Submission Date', 'Submission Date', '2025-03-17 17:54:17', '2025-03-17 17:54:17'),
(1901, 'Offer Submission Details', 'Offer Submission Details', '2025-03-17 17:54:22', '2025-03-17 17:54:22'),
(1902, 'offerss', 'offerss', '2025-03-17 18:08:28', '2025-03-17 18:08:28'),
(1903, 'forms', 'forms', '2025-03-17 18:08:38', '2025-03-17 18:08:38'),
(1904, 'Add New Forms', 'Add New Forms', '2025-03-17 18:11:57', '2025-03-17 18:11:57'),
(1905, 'Add New Form', 'Add New Form', '2025-03-17 18:12:41', '2025-03-17 18:12:41'),
(1906, 'Create Form', 'Create Form', '2025-03-17 18:14:10', '2025-03-17 18:14:10'),
(1907, 'Form Title', 'Form Title', '2025-03-17 18:14:10', '2025-03-17 18:14:10'),
(1908, 'Form Description (HTML)', 'Form Description (HTML)', '2025-03-17 18:14:10', '2025-03-17 18:14:10'),
(1909, 'Form Submissions', 'Form Submissions', '2025-03-17 18:19:11', '2025-03-17 18:19:11'),
(1910, 'Form Slug', 'Form Slug', '2025-03-17 18:19:11', '2025-03-17 18:19:11'),
(1911, 'Form Submission Details', 'Form Submission Details', '2025-03-17 18:19:42', '2025-03-17 18:19:42'),
(1912, 'Formlar', 'Formlar', '2025-03-17 18:21:39', '2025-03-17 18:21:39'),
(1913, 'Form Yanıtları', 'Form Yanıtları', '2025-03-17 18:22:29', '2025-03-17 18:22:29'),
(1914, 'Parameter 1', 'Parameter 1', '2025-03-17 18:27:10', '2025-03-17 18:27:10'),
(1915, 'Parameter 2', 'Parameter 2', '2025-03-17 18:27:10', '2025-03-17 18:27:10'),
(1916, 'Edit Form', 'Edit Form', '2025-03-17 18:31:51', '2025-03-17 18:31:51'),
(1917, 'Update Form', 'Update Form', '2025-03-17 18:31:51', '2025-03-17 18:31:51'),
(1918, 'Remove', 'Remove', '2025-03-20 03:30:52', '2025-03-20 03:30:52'),
(1919, 'Add Item', 'Add Item', '2025-03-20 03:32:13', '2025-03-20 03:32:13'),
(1920, 'Select FontAwesome Icon', 'Select FontAwesome Icon', '2025-03-20 04:10:28', '2025-03-20 04:10:28'),
(1921, 'Search icons...', 'Search icons...', '2025-03-20 04:10:28', '2025-03-20 04:10:28'),
(1922, 'Loading...', 'Loading...', '2025-03-20 04:10:28', '2025-03-20 04:10:28'),
(1923, 'Package deleted successfully', 'Package deleted successfully', '2025-03-24 07:41:59', '2025-03-24 07:41:59');
INSERT INTO `translates` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1924, 'For', 'For', '2025-03-27 15:23:36', '2025-03-27 15:23:36'),
(1925, 'da', 'da', '2025-03-27 15:23:41', '2025-03-27 15:23:41'),
(1926, 'Bu kimlik bilgileri kayıtlarımızla eşleşmiyor.', 'Bu kimlik bilgileri kayıtlarımızla eşleşmiyor.', '2025-03-28 08:57:29', '2025-03-28 08:57:29'),
(1927, 'Girilen şifre yanlış.', 'Girilen şifre yanlış.', '2025-03-28 08:57:29', '2025-03-28 08:57:29'),
(1928, 'Çok fazla giriş denemesi yapıldı. Lütfen :seconds saniye içinde tekrar deneyin.', 'Çok fazla giriş denemesi yapıldı. Lütfen :seconds saniye içinde tekrar deneyin.', '2025-03-28 08:57:29', '2025-03-28 08:57:29'),
(1929, 'Hello', 'Hello', '2025-04-03 03:37:21', '2025-04-03 03:37:21'),
(1930, 'Add Balance', 'Add Balance', '2025-04-03 03:37:21', '2025-04-03 03:37:21'),
(1931, 'Pending Orders', 'Pending Orders', '2025-04-03 03:37:21', '2025-04-03 03:37:21'),
(1932, 'My Orders', 'My Orders', '2025-04-03 03:37:21', '2025-04-03 03:37:21'),
(1933, 'My Domains', 'My Domains', '2025-04-03 03:37:21', '2025-04-03 03:37:21'),
(1934, 'My Hosting Packages', 'My Hosting Packages', '2025-04-03 03:37:21', '2025-04-03 03:37:21'),
(1935, 'Menu', 'Menu', '2025-04-03 03:46:57', '2025-04-03 03:46:57'),
(1936, 'Profile', 'Profile', '2025-04-03 04:00:19', '2025-04-03 04:00:19'),
(1937, 'Bakiye Ekle', 'Bakiye Ekle', '2025-04-03 04:15:15', '2025-04-03 04:15:15'),
(1938, 'Bekleyen Siparişler', 'Bekleyen Siparişler', '2025-04-03 04:15:15', '2025-04-03 04:15:15'),
(1939, 'Siparişlerim', 'Siparişlerim', '2025-04-03 04:15:15', '2025-04-03 04:15:15'),
(1940, 'Alan Adlarım', 'Alan Adlarım', '2025-04-03 04:15:15', '2025-04-03 04:15:15'),
(1941, 'Hosting Paketlerim', 'Hosting Paketlerim', '2025-04-03 04:15:15', '2025-04-03 04:15:15'),
(1942, 'Merhaba', 'Merhaba', '2025-04-03 05:31:29', '2025-04-03 05:31:29'),
(1943, 'Başlangıç', 'Başlangıç', '2025-04-03 05:31:29', '2025-04-03 05:31:29'),
(1944, 'Bilgilerimi Düzenle', 'Bilgilerimi Düzenle', '2025-04-03 05:31:29', '2025-04-03 05:31:29'),
(1945, 'Faturalarım', 'Faturalarım', '2025-04-03 05:31:29', '2025-04-03 05:31:29'),
(1946, 'Tüm Siparişler', 'Tüm Siparişler', '2025-04-03 05:31:29', '2025-04-03 05:31:29'),
(1947, 'İade Talepleri', 'İade Talepleri', '2025-04-03 05:31:29', '2025-04-03 05:31:29'),
(1948, 'Destek Sistemi', 'Destek Sistemi', '2025-04-03 05:31:29', '2025-04-03 05:31:29'),
(1949, 'Destek Taleplerim', 'Destek Taleplerim', '2025-04-03 05:31:29', '2025-04-03 05:31:29'),
(1950, 'Yeni Destek Talebi', 'Yeni Destek Talebi', '2025-04-03 05:31:29', '2025-04-03 05:31:29'),
(1951, 'Cüzdanım', 'Cüzdanım', '2025-04-03 05:31:29', '2025-04-03 05:31:29'),
(1952, 'Çıkış Yap', 'Çıkış Yap', '2025-04-03 05:31:29', '2025-04-03 05:31:29'),
(1953, 'Yeni İade Talebi', 'Yeni İade Talebi', '2025-04-03 05:42:20', '2025-04-03 05:42:20'),
(1954, 'Account details has been updated successfully', 'Account details has been updated successfully', '2025-04-03 05:42:42', '2025-04-03 05:42:42'),
(1955, 'Faturayı Görüntüle', 'Faturayı Görüntüle', '2025-04-03 13:31:04', '2025-04-03 13:31:04'),
(1956, 'Sepet Özeti', 'Sepet Özeti', '2025-04-06 08:26:01', '2025-04-06 08:26:01'),
(1957, 'Bu adımda satın almak istediğiniz hizmet ve ürünleri tüm şeffaflığıyla inceleyebilir ve düzenleyebilirsiniz.', 'Bu adımda satın almak istediğiniz hizmet ve ürünleri tüm şeffaflığıyla inceleyebilir ve düzenleyebilirsiniz.', '2025-04-06 08:26:01', '2025-04-06 08:26:01'),
(1958, 'Hosting & Kurulum Tercihleri', 'Hosting & Kurulum Tercihleri', '2025-04-06 08:26:01', '2025-04-06 08:26:01'),
(1959, 'Ödeme Yap', 'Ödeme Yap', '2025-04-06 08:26:01', '2025-04-06 08:26:01'),
(1960, 'Ürün / Hizmet', 'Ürün / Hizmet', '2025-04-06 08:26:01', '2025-04-06 08:26:01'),
(1961, 'Birim Fiyat', 'Birim Fiyat', '2025-04-06 08:26:01', '2025-04-06 08:26:01'),
(1962, 'İşlemler', 'İşlemler', '2025-04-06 08:26:01', '2025-04-06 08:26:01'),
(1963, 'Sipariş Özeti', 'Sipariş Özeti', '2025-04-06 08:26:01', '2025-04-06 08:26:01'),
(1964, 'KDV', 'KDV', '2025-04-06 08:26:01', '2025-04-06 08:26:01'),
(1965, 'TOPLAM TUTAR', 'TOPLAM TUTAR', '2025-04-06 08:26:01', '2025-04-06 08:26:01'),
(1966, 'Devam Et', 'Devam Et', '2025-04-06 08:26:01', '2025-04-06 08:26:01'),
(1967, 'KDV Dahil', 'KDV Dahil', '2025-04-06 08:31:39', '2025-04-06 08:31:39'),
(1968, 'Fiyatlara KDV dahildir', 'Fiyatlara KDV dahildir', '2025-04-06 08:31:39', '2025-04-06 08:31:39'),
(1969, 'Ödemeye Geç', 'Ödemeye Geç', '2025-04-06 08:31:39', '2025-04-06 08:31:39'),
(1970, 'Güvenli Ödeme', 'Güvenli Ödeme', '2025-04-06 08:31:39', '2025-04-06 08:31:39'),
(1971, '6 Ay', '6 Ay', '2025-04-06 10:48:33', '2025-04-06 10:48:33'),
(1972, '12 Ay', '12 Ay', '2025-04-06 10:48:33', '2025-04-06 10:48:33'),
(1973, 'Miktar', 'Miktar', '2025-04-06 11:12:36', '2025-04-06 11:12:36'),
(1974, 'Destek', 'Destek', '2025-04-06 11:12:36', '2025-04-06 11:12:36'),
(1975, 'Güncelle', 'Güncelle', '2025-04-06 11:12:36', '2025-04-06 11:12:36'),
(1976, 'Ödeme Yöntemi', 'Ödeme Yöntemi', '2025-04-06 13:36:51', '2025-04-06 13:36:51'),
(1977, 'Fatura Adresi', 'Fatura Adresi', '2025-04-06 13:36:51', '2025-04-06 13:36:51'),
(1978, 'Ad', 'Ad', '2025-04-06 13:36:51', '2025-04-06 13:36:51'),
(1979, 'Soyad', 'Soyad', '2025-04-06 13:36:51', '2025-04-06 13:36:51'),
(1980, 'Adres Satırı 1', 'Adres Satırı 1', '2025-04-06 13:36:51', '2025-04-06 13:36:51'),
(1981, 'Adres Satırı 2', 'Adres Satırı 2', '2025-04-06 13:36:51', '2025-04-06 13:36:51'),
(1982, 'Şehir', 'Şehir', '2025-04-06 13:36:51', '2025-04-06 13:36:51'),
(1983, 'İlçe/Eyalet', 'İlçe/Eyalet', '2025-04-06 13:36:51', '2025-04-06 13:36:51'),
(1984, 'Posta Kodu', 'Posta Kodu', '2025-04-06 13:36:51', '2025-04-06 13:36:51'),
(1985, 'Ülke', 'Ülke', '2025-04-06 13:36:51', '2025-04-06 13:36:51'),
(1986, 'Seçiniz', 'Seçiniz', '2025-04-06 13:36:51', '2025-04-06 13:36:51'),
(1987, 'SSL Güvenli Ödeme', 'SSL Güvenli Ödeme', '2025-04-06 13:36:51', '2025-04-06 13:36:51'),
(1988, 'Bilgileriniz 256-bit SSL şifreleme ile korunmaktadır', 'Bilgileriniz 256-bit SSL şifreleme ile korunmaktadır', '2025-04-06 13:36:51', '2025-04-06 13:36:51'),
(1989, 'Lisans', 'Lisans', '2025-04-06 13:36:51', '2025-04-06 13:36:51'),
(1990, 'Adet', 'Adet', '2025-04-06 13:36:51', '2025-04-06 13:36:51'),
(1991, 'Fiyat', 'Fiyat', '2025-04-06 13:36:51', '2025-04-06 13:36:51'),
(1992, 'Toplam', 'Toplam', '2025-04-06 13:36:51', '2025-04-06 13:36:51'),
(1993, 'Bilgileriniz 256-bit SSL şifrelemesiyle korunmaktadır', 'Bilgileriniz 256-bit SSL şifrelemesiyle korunmaktadır', '2025-04-06 13:56:14', '2025-04-06 13:56:14'),
(1994, 'Payment for order #:number', 'Payment for order #:number', '2025-04-06 13:57:55', '2025-04-06 13:57:55'),
(1995, 'Single Select', 'Single Select', '2025-04-09 23:27:18', '2025-04-09 23:27:18'),
(1996, 'Multiple Select', 'Multiple Select', '2025-04-09 23:27:18', '2025-04-09 23:27:18'),
(1997, 'No Category options Found', 'No Category options Found', '2025-04-09 23:27:33', '2025-04-09 23:27:33'),
(1998, 'The price cannot be update while the item is on discount', 'The price cannot be update while the item is on discount', '2025-04-09 23:59:30', '2025-04-09 23:59:30'),
(1999, 'Cron Job key generated successfully', 'Cron Job key generated successfully', '2025-04-15 10:06:34', '2025-04-15 10:06:34'),
(2000, 'New Ticket [#:ticket_id]', 'New Ticket [#:ticket_id]', '2025-04-15 10:06:56', '2025-04-15 10:06:56'),
(2001, 'New Refund Request [#:refund_id]', 'New Refund Request [#:refund_id]', '2025-04-15 10:06:57', '2025-04-15 10:06:57'),
(2002, 'New Ticket Reply [#:ticket_id]', 'New Ticket Reply [#:ticket_id]', '2025-04-15 10:06:57', '2025-04-15 10:06:57'),
(2003, 'Cron Job executed successfully', 'Cron Job executed successfully', '2025-04-15 10:07:01', '2025-04-15 10:07:01'),
(2004, 'New Tax', 'New Tax', '2025-04-20 02:38:03', '2025-04-20 02:38:03'),
(2005, 'New Admin', 'New Admin', '2025-04-20 02:38:48', '2025-04-20 02:38:48'),
(2006, 'Admin details', 'Admin details', '2025-04-20 06:53:22', '2025-04-20 06:53:22'),
(2007, 'Added date', 'Added date', '2025-04-20 06:53:22', '2025-04-20 06:53:22'),
(2008, '[Hidden In Demo]', '[Hidden In Demo]', '2025-04-20 06:53:23', '2025-04-20 06:53:23'),
(2009, 'Yönetici Detayı', 'Yönetici Detayı', '2025-04-20 06:54:55', '2025-04-20 06:54:55'),
(2010, 'Oluşturulma Tarihi', 'Oluşturulma Tarihi', '2025-04-20 06:54:55', '2025-04-20 06:54:55'),
(2011, '[Demo Modunda Gizlidir.]', '[Demo Modunda Gizlidir.]', '2025-04-20 06:57:05', '2025-04-20 06:57:05'),
(2012, 'Edit Mail Template', 'Edit Mail Template', '2025-04-20 07:46:44', '2025-04-20 07:46:44'),
(2013, 'Short Codes', 'Short Codes', '2025-04-20 07:46:44', '2025-04-20 07:46:44'),
(2014, 'New User', 'New User', '2025-04-20 07:55:08', '2025-04-20 07:55:08'),
(2015, 'İl', 'İl', '2025-04-30 02:22:27', '2025-04-30 02:22:27'),
(2016, 'İlçe', 'İlçe', '2025-04-30 02:22:27', '2025-04-30 02:22:27'),
(2017, 'merchant id', 'merchant id', '2025-04-30 03:23:51', '2025-04-30 03:23:51'),
(2018, 'merchant key', 'merchant key', '2025-04-30 03:23:51', '2025-04-30 03:23:51'),
(2019, 'merchant salt', 'merchant salt', '2025-04-30 03:23:51', '2025-04-30 03:23:51'),
(2020, 'PayTR Payment', 'PayTR Payment', '2025-04-30 03:49:37', '2025-04-30 03:49:37'),
(2021, 'Please do not refresh the page during payment.', 'Please do not refresh the page during payment.', '2025-04-30 03:49:37', '2025-04-30 03:49:37'),
(2022, 'PayTR Ödeme', 'PayTR Ödeme', '2025-04-30 05:26:02', '2025-04-30 05:26:02'),
(2023, 'Transaction not found', 'Transaction not found', '2025-04-30 07:09:20', '2025-04-30 07:09:20'),
(2024, 'Payment successful', 'Payment successful', '2025-04-30 07:53:27', '2025-04-30 07:53:27'),
(2025, 'Payment completed', 'Payment completed', '2025-04-30 07:53:28', '2025-04-30 07:53:28'),
(2026, 'Thank you for your purchase. Your payment has been completed successfully.', 'Thank you for your purchase. Your payment has been completed successfully.', '2025-04-30 07:53:28', '2025-04-30 07:53:28'),
(2027, 'View My Purchases', 'View My Purchases', '2025-04-30 07:53:28', '2025-04-30 07:53:28'),
(2028, 'Payment failed', 'Payment failed', '2025-04-30 07:56:06', '2025-04-30 07:56:06'),
(2029, 'Ödeme', 'Ödeme', '2025-04-30 13:52:59', '2025-04-30 13:52:59'),
(2030, 'Ödemeyi tamamlayın', 'Ödemeyi tamamlayın', '2025-04-30 13:52:59', '2025-04-30 13:52:59'),
(2031, 'Ödeme tamamlandı', 'Ödeme tamamlandı', '2025-04-30 13:57:03', '2025-04-30 13:57:03'),
(2032, 'Satın alma işleminiz için teşekkür ederiz. Ödemeniz başarıyla tamamlandı.', 'Satın alma işleminiz için teşekkür ederiz. Ödemeniz başarıyla tamamlandı.', '2025-04-30 13:57:03', '2025-04-30 13:57:03'),
(2033, 'Satın Almalarımı Görüntüle', 'Satın Almalarımı Görüntüle', '2025-04-30 13:57:03', '2025-04-30 13:57:03'),
(2034, 'New Home Category', 'New Home Category', '2025-05-01 03:37:34', '2025-05-01 03:37:34');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uploaded_files`
--

CREATE TABLE `uploaded_files` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `mime_type` varchar(255) NOT NULL,
  `extension` varchar(255) NOT NULL,
  `size` bigint UNSIGNED NOT NULL,
  `path` varchar(255) NOT NULL,
  `expiry_at` datetime NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` text,
  `password` varchar(255) DEFAULT NULL,
  `balance` double(18,2) NOT NULL DEFAULT '0.00',
  `avatar` varchar(255) DEFAULT NULL,
  `facebook_id` varchar(255) DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `microsoft_id` varchar(255) DEFAULT NULL,
  `vkontakte_id` varchar(255) DEFAULT NULL,
  `envato_id` varchar(255) DEFAULT NULL,
  `github_id` varchar(255) DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `was_subscribed` tinyint(1) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `kyc_status` tinyint(1) NOT NULL DEFAULT '0',
  `google2fa_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: Disabled, 1: Active',
  `google2fa_secret` text,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0: Banned, 1: Active',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `address`, `password`, `balance`, `avatar`, `facebook_id`, `google_id`, `microsoft_id`, `vkontakte_id`, `envato_id`, `github_id`, `is_admin`, `was_subscribed`, `email_verified_at`, `kyc_status`, `google2fa_status`, `google2fa_secret`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'Demo', 'Kullanıcı', 'demouser', 'demouser@iyovex.com', '{\"line_1\":\"test\",\"line_2\":\"test\",\"city\":\"istanbul\",\"state\":\"beylikd\\u00fcz\\u00fc\",\"zip\":\"34000\",\"country\":\"TR\"}', '$2y$10$kpvrQLb4roQWSGtgqfDF/OrdeydgJ3jTfWZiKUEVEbonfgJdplHnu', 0.00, 'images/avatars/users/nIHV06byLtSyLCU_1745141684.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 'eyJpdiI6Ijh4dURaQ1p0Y1ROVFBtWERtcDNIQ3c9PSIsInZhbHVlIjoiaUJGM3cwbHkzL1VLeEc1QXpqVWdSTCsvNnRqU3hMSUVRRkJFZjltZXAyWT0iLCJtYWMiOiI1MjVlMmQ5MTU0YTdmMzcxOTMzZTg4MzA3NzVhYzgyZTcxMzA0MmJkMGVhNzBlNzI0MTkyMWJhOTIyYjcwNzQyIiwidGFnIjoiIn0=', 1, 'KTC9boQr9qOqExd9TiM4nCCo5GVE5j4agopbfjWTmf03Jk4OTEoy0eSDvUcu', '2025-04-20 02:33:35', '2025-05-01 04:00:58'),
(7, 'Demo', 'Admin', 'demoadmin', 'demoadmin@iyovex.com', NULL, '$2y$10$nxl8I23Ou0A8dY.N8vTV7OcZcQ9eRrquKVizZp6z3TG4WoUsLRczu', 0.00, 'images/avatars/13FiTXMspJGqHH1_1745141958.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 0, 'eyJpdiI6IlYzL0dRUUx0aVF5SnVaMGlreFlWN0E9PSIsInZhbHVlIjoiZTJPT3V3TnVJZ0xVbGhMWmpqNWpCZU9wT1ROWkZvbVp3NHNLcG10bXlFND0iLCJtYWMiOiI1OTVlMTdkY2ViMTdiM2MyZGMyZTQxNTkzMjk3YWFmMzFhZmM1YzdmMmUzYTQzM2M3MDlkNjk3ZWNkMDgyM2YwIiwidGFnIjoiIn0=', 1, '8z5RpkFgrrGUqkfcj5xwcp75T6yRDtu4cMxscasl3DT6XhcPUlADmEetitvz', '2025-04-20 02:39:11', '2025-04-25 04:00:27'),
(8, 'test', 'test', 'testx162', 'test16222@gmail.com', NULL, '$2y$10$fVkbSxvIwRJgLJRmTsb4iuNBbdq.cOPVNrtNVmes8O3IRBYmH8Iri', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, 1, NULL, '2025-04-21 06:37:43', '2025-04-21 06:37:43'),
(9, 'aslan', 'amca', 'aslanamca', 'aslan@hotmail.com', NULL, '$2y$10$a4pybpmc2BkYszOjYzgiAOi3MwL7wl/Mxu8iV7hb8MDJkX7Cs8C0O', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 'eyJpdiI6IjVXMTdINjluTVhSakNRKzBYOWtkWnc9PSIsInZhbHVlIjoiejg5V0hDSkp2MEVDcXBPc01zKzVzeEVNd1NGSTFBM296bjJPVG4xTjhkTT0iLCJtYWMiOiIxODJhYjQyNGJiZGM0ZmY0NWY1YWIyNGI1NTZiZDc1ZGFmYTAzMzVlOGVmODEwYjRjZGE2OTYxNWRjYTUyNjY3IiwidGFnIjoiIn0=', 1, NULL, '2025-04-25 06:54:55', '2025-04-25 06:55:17'),
(11, 'Ahmet', 'Toprak', 'toprak1340', 'toprak1340.1@gmail.com', '{\"line_1\":\"Atakent Mah. 6231. Sk., Baranbey Apt.\",\"line_2\":\"Atakent Mah. 6231. Sk., Baranbey Apt.\",\"city\":\"Karak\\u00f6pr\\u00fc\",\"state\":\"Euro\",\"zip\":\"63000\",\"country\":\"TR\"}', '$2y$10$Ijwuvupb2r/6QotKViTbGe0iCqRau.xXsiVjCmA81OZIQmoI5xiS6', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, 1, NULL, '2025-04-30 02:01:31', '2025-04-30 02:22:54'),
(12, 'Ahmet', 'Toprak', 'root', 'root@gmail.com', NULL, '$2y$10$Ijwuvupb2r/6QotKViTbGe0iCqRau.xXsiVjCmA81OZIQmoI5xiS6', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 0, NULL, 1, NULL, '2025-04-30 02:01:31', '2025-04-30 02:01:31'),
(13, 'Tggg', 'Gggg', 'Gggggg', 'gghhh@hhh.con', '{\"line_1\":\"Ree\",\"line_2\":\"Ggg\",\"city\":\"Bb\",\"state\":\"G\",\"zip\":\"Y\",\"country\":\"AO\"}', '$2y$10$yYd0gVlIG2jQpShHPxP7FOkTuDGaJrjx6ojsaCYmXX4UB5Yenv6Ti', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, 1, NULL, '2025-04-30 16:03:29', '2025-04-30 17:35:45');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_login_logs`
--

CREATE TABLE `user_login_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `country_code` varchar(100) DEFAULT NULL,
  `timezone` varchar(150) DEFAULT NULL,
  `location` varchar(60) DEFAULT NULL,
  `latitude` varchar(60) DEFAULT NULL,
  `longitude` varchar(60) DEFAULT NULL,
  `browser` varchar(60) DEFAULT NULL,
  `os` varchar(60) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `user_login_logs`
--

INSERT INTO `user_login_logs` (`id`, `user_id`, `ip`, `country`, `country_code`, `timezone`, `location`, `latitude`, `longitude`, `browser`, `os`, `created_at`, `updated_at`) VALUES
(13, 6, '185.209.196.152', 'Germany', 'DE', 'Europe/Berlin', 'Frankfurt am Main, DE', '50.1049', '8.6295', 'Chrome', 'Windows 10', '2025-04-20 02:33:35', '2025-04-20 02:33:35'),
(14, 6, '45.135.204.189', 'Türkiye', 'TR', 'Europe/Istanbul', 'Ankara, TR', '39.9207', '32.854', 'Chrome', 'Mac OS X', '2025-04-20 07:43:06', '2025-04-20 07:43:06'),
(15, 6, '178.241.9.39', 'Türkiye', 'TR', 'Europe/Istanbul', 'Diyarbakır, TR', '38.077', '40.1178', 'Handheld Browser', 'Linux', '2025-04-20 07:47:54', '2025-04-20 07:47:54'),
(16, 6, '94.54.170.112', 'Türkiye', 'TR', 'Europe/Istanbul', 'Denizli, TR', '37.4857', '29.009', 'Chrome', 'Mac OS X', '2025-04-20 09:11:29', '2025-04-20 09:11:29'),
(17, 6, '95.173.233.156', 'Turkey', 'TR', 'Europe/Istanbul', 'Uşak, TR', '38.6735', '29.4058', 'Chrome', 'Windows 10', '2025-04-20 10:40:28', '2025-04-20 10:40:28'),
(18, 6, '194.145.136.4', 'Turkey', 'TR', 'Europe/Istanbul', 'Yamaçtepe, TR', '37.0686', '37.2838', 'Chrome', 'Mac OS X', '2025-04-20 14:33:21', '2025-04-20 14:33:21'),
(19, 6, '78.190.201.185', 'Türkiye', 'TR', 'Europe/Istanbul', 'Tekirdağ, TR', '41.0494', '27.3014', 'Handheld Browser', 'Mac OS X', '2025-04-20 15:12:33', '2025-04-20 15:12:33'),
(20, 6, '31.141.247.57', 'Türkiye', 'TR', 'Europe/Istanbul', 'Istanbul, TR', '41.0145', '28.9533', 'Chrome', 'Mac OS X', '2025-04-20 23:14:41', '2025-04-20 23:14:41'),
(21, 6, '92.44.25.62', 'Türkiye', 'TR', 'Europe/Istanbul', 'Ankara, TR', '39.9707', '32.7316', 'Safari', 'Mac OS X', '2025-04-21 03:38:10', '2025-04-21 03:38:10'),
(22, 6, '78.173.94.231', 'Türkiye', 'TR', 'Europe/Istanbul', 'Bursa, TR', '40.2641', '28.6961', 'Chrome', 'Windows 10', '2025-04-21 05:59:17', '2025-04-21 05:59:17'),
(23, 8, '78.173.94.231', 'Türkiye', 'TR', 'Europe/Istanbul', 'Bursa, TR', '40.2641', '28.6961', 'Chrome', 'Windows 10', '2025-04-21 06:37:43', '2025-04-21 06:37:43'),
(24, 6, '46.2.70.119', 'Türkiye', 'TR', 'Europe/Istanbul', 'Kartal, TR', '40.9002', '29.1873', 'Chrome', 'Windows 10', '2025-04-21 20:49:08', '2025-04-21 20:49:08'),
(25, 6, '95.10.118.248', 'Turkey', 'TR', 'Europe/Istanbul', 'Amasya, TR', '40.6565', '35.8373', 'Chrome', 'Windows 10', '2025-04-22 02:15:07', '2025-04-22 02:15:07'),
(26, 6, '149.0.17.102', 'Türkiye', 'TR', 'Europe/Istanbul', 'Istanbul, TR', '41.0145', '28.9533', 'Chrome', 'Windows 10', '2025-04-22 03:54:49', '2025-04-22 03:54:49'),
(27, 6, '88.243.136.57', 'Türkiye', 'TR', 'Europe/Istanbul', 'Istanbul, TR', '41.0329', '28.9529', 'Handheld Browser', 'Mac OS X', '2025-04-22 11:16:24', '2025-04-22 11:16:24'),
(28, 6, '176.33.103.109', 'Türkiye', 'TR', 'Europe/Istanbul', 'Mersin, TR', '36.75', '34.4833', 'Chrome', 'Windows 10', '2025-04-22 11:57:45', '2025-04-22 11:57:45'),
(29, 6, '5.177.193.242', 'Türkiye', 'TR', 'Europe/Istanbul', 'Kayseri, TR', '38.7483', '35.5301', 'Handheld Browser', 'Linux', '2025-04-22 12:49:10', '2025-04-22 12:49:10'),
(30, 6, '5.199.130.245', 'Germany', 'DE', 'Europe/Berlin', 'Düsseldorf, DE', '51.2705', '6.8144', 'Chrome', 'Windows 10', '2025-04-23 15:06:29', '2025-04-23 15:06:29'),
(31, 6, '78.173.17.214', 'Türkiye', 'TR', 'Europe/Istanbul', 'Afyonkarahisar, TR', '38.6768', '30.6444', 'Chrome', 'Windows 10', '2025-04-24 03:19:56', '2025-04-24 03:19:56'),
(32, 6, '212.154.68.111', 'Türkiye', 'TR', 'Europe/Istanbul', 'Istanbul, TR', '41.0301', '28.9651', 'Chrome', 'Windows 10', '2025-04-24 05:38:01', '2025-04-24 05:38:01'),
(33, 6, '185.155.148.252', 'Türkiye', 'TR', 'Europe/Istanbul', 'Istanbul, TR', '41.0145', '28.9533', 'Chrome', 'Windows 10', '2025-04-24 12:10:50', '2025-04-24 14:41:00'),
(34, 6, '38.10.71.12', 'Türkiye', 'TR', 'Europe/Istanbul', 'Sanliurfa, TR', '37.1622', '38.8722', 'Handheld Browser', 'Linux', '2025-04-24 12:54:45', '2025-04-24 12:54:45'),
(35, 6, '78.184.229.60', 'Türkiye', 'TR', 'Europe/Istanbul', 'Istanbul, TR', '41.0207', '28.9285', 'Chrome', 'Windows 10', '2025-04-24 19:27:03', '2025-04-24 19:27:03'),
(36, 6, '151.250.123.250', 'Türkiye', 'TR', 'Europe/Istanbul', 'Istanbul, TR', '41.0551', '28.9347', 'Chrome', 'Windows 10', '2025-04-25 01:02:17', '2025-04-25 01:02:17'),
(37, 6, '157.180.26.251', 'Finland', 'FI', 'Europe/Helsinki', 'Helsinki, FI', '60.1719', '24.9347', 'Chrome', 'Windows 10', '2025-04-25 01:03:33', '2025-04-25 01:03:33'),
(38, 6, '78.174.221.201', 'Türkiye', 'TR', 'Europe/Istanbul', 'Istanbul, TR', '41.0207', '28.9285', 'Chrome', 'Windows 10', '2025-04-25 01:05:08', '2025-04-25 01:05:08'),
(39, 6, '46.155.84.58', 'Turkey', 'TR', 'Europe/Istanbul', 'Ankara, TR', '39.9199', '32.8543', 'Chrome', 'Windows 10', '2025-04-25 01:05:23', '2025-04-25 01:05:23'),
(40, 6, '88.241.178.175', 'Türkiye', 'TR', 'Europe/Istanbul', 'Konya, TR', '37.9275', '32.4206', 'Chrome', 'Windows 10', '2025-04-25 01:08:51', '2025-04-25 01:08:51'),
(41, 6, '176.41.180.227', 'Türkiye', 'TR', 'Europe/Istanbul', 'Bursa, TR', '40.2347', '28.9729', 'Handheld Browser', 'Linux', '2025-04-25 01:17:10', '2025-04-25 01:17:10'),
(42, 6, '46.221.40.187', 'Turkey', 'TR', 'Europe/Istanbul', 'Siverek, TR', '37.755', '39.3167', 'Chrome', 'Windows 10', '2025-04-25 01:17:15', '2025-04-25 01:17:15'),
(43, 6, '31.223.77.205', 'Türkiye', 'TR', 'Europe/Istanbul', 'Istanbul, TR', '41.0329', '28.9529', 'Chrome', 'Windows 10', '2025-04-25 01:21:06', '2025-04-25 01:21:06'),
(44, 6, '149.140.132.126', 'Türkiye', 'TR', 'Europe/Istanbul', 'Istanbul, TR', '41.0329', '28.9529', 'Handheld Browser', 'Linux', '2025-04-25 01:33:18', '2025-04-25 01:33:18'),
(45, 6, '176.54.113.153', 'Türkiye', 'TR', 'Europe/Istanbul', 'Istanbul, TR', '41.0329', '28.9529', 'Handheld Browser', 'Mac OS X', '2025-04-25 01:40:05', '2025-04-25 01:40:05'),
(46, 6, '92.44.185.68', 'Türkiye', 'TR', 'Europe/Istanbul', 'Bursa, TR', '40.2262', '29.0723', 'Chrome', 'Windows 10', '2025-04-25 02:03:34', '2025-04-25 02:03:34'),
(47, 6, '88.245.197.122', 'Türkiye', 'TR', 'Europe/Istanbul', 'Istanbul, TR', '41.0329', '28.9529', 'Chrome', 'Windows 10', '2025-04-25 02:09:09', '2025-04-25 02:09:09'),
(48, 6, '185.118.176.162', 'Türkiye', 'TR', 'Europe/Istanbul', 'Ankara, TR', '39.9786', '32.8262', 'Handheld Browser', 'Linux', '2025-04-25 02:54:09', '2025-04-25 02:54:09'),
(49, 6, '24.133.18.36', 'Türkiye', 'TR', 'Europe/Istanbul', 'Yalova, TR', '40.612', '29.3385', 'Chrome', 'Windows 10', '2025-04-25 03:06:04', '2025-04-25 03:06:04'),
(50, 6, '46.221.196.107', 'Turkey', 'TR', 'Europe/Istanbul', 'Istanbul, TR', '41.0138', '28.9497', 'Handheld Browser', 'Linux', '2025-04-25 03:36:50', '2025-04-25 03:36:50'),
(51, 6, '88.238.42.10', 'Türkiye', 'TR', 'Europe/Istanbul', 'Aydin, TR', '37.8795', '27.7491', 'Chrome', 'Windows 10', '2025-04-25 03:38:12', '2025-04-25 03:38:12'),
(52, 6, '78.168.97.243', 'Türkiye', 'TR', 'Europe/Istanbul', 'Kars, TR', '40.6041', '43.0912', 'Chrome', 'Windows 10', '2025-04-25 03:49:50', '2025-04-25 03:49:50'),
(53, 6, '46.106.148.172', 'Turkey', 'TR', 'Europe/Istanbul', 'Eskişehir, TR', '39.7767', '30.5206', 'Handheld Browser', 'Linux', '2025-04-25 05:06:20', '2025-04-25 05:06:20'),
(54, 6, '88.236.175.239', 'Türkiye', 'TR', 'Europe/Istanbul', 'Diyarbakır, TR', '37.9414', '40.1933', 'Chrome', 'Windows 10', '2025-04-25 05:18:38', '2025-04-25 05:18:38'),
(55, 6, '93.115.79.159', 'Turkey', 'TR', 'Europe/Istanbul', 'Denizli, TR', '37.7387', '29.0925', 'Safari', 'Mac OS X', '2025-04-25 05:25:47', '2025-04-25 05:25:47'),
(56, 6, '176.219.233.149', 'Türkiye', 'TR', 'Europe/Istanbul', 'Ankara, TR', '39.9208', '32.8375', 'Handheld Browser', 'Linux', '2025-04-25 05:54:48', '2025-04-25 05:54:48'),
(57, 6, '45.36.4.149', 'United States', 'US', 'America/New_York', 'Greensboro, US', '36.1053', '-79.8762', 'Chrome', 'Windows 10', '2025-04-25 06:04:56', '2025-04-25 06:04:56'),
(58, 6, '95.5.19.108', 'Turkey', 'TR', 'Europe/Istanbul', 'Uşak, TR', '38.6742', '29.4059', 'Chrome', 'Mac OS X', '2025-04-25 06:45:00', '2025-04-25 06:45:00'),
(59, 6, '31.145.252.42', 'Turkey', 'TR', 'Europe/Istanbul', 'Arnavutköy, TR', '41.113', '29.0242', 'Chrome', 'Windows 10', '2025-04-25 06:45:31', '2025-04-25 06:45:31'),
(60, 9, '5.25.161.39', 'Turkey', 'TR', 'Europe/Istanbul', 'Çamyuva, TR', '36.5536', '30.5596', 'Firefox', 'Windows 10', '2025-04-25 06:54:55', '2025-04-25 06:54:55'),
(61, 6, '213.254.153.54', 'Turkey', 'TR', 'Europe/Istanbul', 'Menemen, TR', '38.6075', '27.0694', 'Firefox', 'Windows 10', '2025-04-25 07:05:15', '2025-04-25 07:05:15'),
(62, 6, '78.190.213.63', 'Türkiye', 'TR', 'Europe/Istanbul', 'Istanbul, TR', '41.0329', '28.9529', 'Chrome', 'Windows 10', '2025-04-25 09:01:25', '2025-04-25 09:01:25'),
(63, 6, '78.175.231.13', 'Türkiye', 'TR', 'Europe/Istanbul', 'Ankara, TR', '39.9207', '32.854', 'Chrome', 'Mac OS X', '2025-04-25 09:44:26', '2025-04-25 09:44:26'),
(64, 6, '88.238.210.187', 'Türkiye', 'TR', 'Europe/Istanbul', 'Palandöken, TR', '39.89', '41.2685', 'Chrome', 'Windows 10', '2025-04-25 11:20:24', '2025-04-25 11:20:24'),
(65, 6, '88.242.133.95', 'Türkiye', 'TR', 'Europe/Istanbul', 'Magnesia ad Sipylum, TR', '38.5871', '27.6406', 'Handheld Browser', 'Linux', '2025-04-25 13:36:16', '2025-04-25 13:36:16'),
(66, 6, '88.236.118.181', 'Türkiye', 'TR', 'Europe/Istanbul', 'Elâzığ, TR', '38.6269', '39.3221', 'Chrome', 'Windows 10', '2025-04-25 13:38:19', '2025-04-25 13:38:19'),
(67, 6, '185.253.121.57', 'Turkey', 'TR', 'Europe/Istanbul', 'Etimesgut, TR', '39.9533', '32.6329', 'Chrome', 'Mac OS X', '2025-04-25 14:39:15', '2025-04-25 14:39:15'),
(68, 6, '81.214.32.81', 'Türkiye', 'TR', 'Europe/Istanbul', 'Istanbul, TR', '41.0145', '28.9533', 'Chrome', 'Windows 10', '2025-04-25 15:49:28', '2025-04-25 15:49:28'),
(69, 6, '151.135.177.2', 'Türkiye', 'TR', 'Europe/Istanbul', 'Çankaya, TR', '39.9208', '32.8375', 'Handheld Browser', 'Linux', '2025-04-25 21:32:41', '2025-04-25 21:32:41'),
(70, 6, '159.146.68.229', 'Türkiye', 'TR', 'Europe/Istanbul', 'Istanbul, TR', '41.0551', '28.9347', 'Chrome', 'Windows 10', '2025-04-26 00:50:40', '2025-04-26 00:50:40'),
(71, 6, '196.206.54.135', 'Morocco', 'MA', 'Africa/Casablanca', 'Rabat, MA', '33.9977', '-6.84789', 'Chrome', 'Mac OS X', '2025-04-26 06:39:29', '2025-04-26 06:39:29'),
(72, 6, '176.43.30.192', 'Türkiye', 'TR', 'Europe/Istanbul', 'Ankara, TR', '39.9107', '32.8554', 'Chrome', 'Mac OS X', '2025-04-26 07:33:20', '2025-04-26 07:33:20'),
(73, 11, '185.253.121.55', 'Turkey', 'TR', 'Europe/Istanbul', 'Saray, TR', '40.0559', '32.6315', 'Chrome', 'Windows 10', '2025-04-30 02:01:31', '2025-04-30 02:01:31'),
(74, 13, '178.243.234.155', 'Türkiye', 'TR', 'Europe/Istanbul', 'Istanbul, TR', '41.0329', '28.9529', 'Handheld Browser', 'Mac OS X', '2025-04-30 16:03:29', '2025-04-30 16:03:29'),
(75, 6, '88.236.120.86', 'Türkiye', 'TR', 'Europe/Istanbul', 'Elâzığ, TR', '38.6269', '39.3221', 'Chrome', 'Windows 10', '2025-05-01 03:59:49', '2025-05-01 03:59:49');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `addons_alias_unique` (`alias`);

--
-- Tablo için indeksler `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `blog_articles`
--
ALTER TABLE `blog_articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_articles_slug_unique` (`slug`),
  ADD KEY `blog_articles_blog_category_id_foreign` (`blog_category_id`);

--
-- Tablo için indeksler `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_categories_slug_unique` (`slug`);

--
-- Tablo için indeksler `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_comments_blog_article_id_foreign` (`blog_article_id`),
  ADD KEY `blog_comments_user_id_foreign` (`user_id`);

--
-- Tablo için indeksler `captcha_providers`
--
ALTER TABLE `captcha_providers`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_items_item_id_foreign` (`item_id`),
  ADD KEY `cart_items_user_id_foreign` (`user_id`),
  ADD KEY `cart_items_support_period_id_foreign` (`support_period_id`);

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Tablo için indeksler `category_options`
--
ALTER TABLE `category_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_options_category_id_foreign` (`category_id`);

--
-- Tablo için indeksler `extensions`
--
ALTER TABLE `extensions`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Tablo için indeksler `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_user_id_foreign` (`user_id`),
  ADD KEY `favorites_item_id_foreign` (`item_id`);

--
-- Tablo için indeksler `footer_links`
--
ALTER TABLE `footer_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `footer_links_parent_id_foreign` (`parent_id`);

--
-- Tablo için indeksler `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `home_sections`
--
ALTER TABLE `home_sections`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `items_name_unique` (`name`),
  ADD UNIQUE KEY `items_slug_unique` (`slug`),
  ADD KEY `items_category_id_foreign` (`category_id`),
  ADD KEY `items_sub_category_id_foreign` (`sub_category_id`);

--
-- Tablo için indeksler `item_change_logs`
--
ALTER TABLE `item_change_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_change_logs_item_id_foreign` (`item_id`);

--
-- Tablo için indeksler `item_comments`
--
ALTER TABLE `item_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_comments_user_id_foreign` (`user_id`),
  ADD KEY `item_comments_item_id_foreign` (`item_id`);

--
-- Tablo için indeksler `item_comment_replies`
--
ALTER TABLE `item_comment_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_comment_replies_item_comment_id_foreign` (`item_comment_id`),
  ADD KEY `item_comment_replies_user_id_foreign` (`user_id`);

--
-- Tablo için indeksler `item_comment_reports`
--
ALTER TABLE `item_comment_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_comment_reports_item_comment_reply_id_foreign` (`item_comment_reply_id`),
  ADD KEY `item_comment_reports_user_id_foreign` (`user_id`);

--
-- Tablo için indeksler `item_discounts`
--
ALTER TABLE `item_discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_discounts_item_id_foreign` (`item_id`);

--
-- Tablo için indeksler `item_reviews`
--
ALTER TABLE `item_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_reviews_user_id_foreign` (`user_id`),
  ADD KEY `item_reviews_item_id_foreign` (`item_id`);

--
-- Tablo için indeksler `item_review_replies`
--
ALTER TABLE `item_review_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_review_replies_item_review_id_foreign` (`item_review_id`),
  ADD KEY `item_review_replies_user_id_foreign` (`user_id`);

--
-- Tablo için indeksler `item_views`
--
ALTER TABLE `item_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_views_item_id_foreign` (`item_id`);

--
-- Tablo için indeksler `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Tablo için indeksler `kyc_verifications`
--
ALTER TABLE `kyc_verifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kyc_verifications_user_id_foreign` (`user_id`);

--
-- Tablo için indeksler `mail_templates`
--
ALTER TABLE `mail_templates`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `navbar_links`
--
ALTER TABLE `navbar_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `navbar_links_parent_id_foreign` (`parent_id`);

--
-- Tablo için indeksler `newsletter_subscribers`
--
ALTER TABLE `newsletter_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `oauth_providers`
--
ALTER TABLE `oauth_providers`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `offers_seo_url_unique` (`seo_url`);

--
-- Tablo için indeksler `offer_submissions`
--
ALTER TABLE `offer_submissions`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `packages_seo_url_unique` (`seo_url`);

--
-- Tablo için indeksler `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Tablo için indeksler `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `premium_earnings`
--
ALTER TABLE `premium_earnings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `premium_earnings_subscription_id_foreign` (`subscription_id`);

--
-- Tablo için indeksler `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `purchases_code_unique` (`code`),
  ADD KEY `purchases_user_id_foreign` (`user_id`),
  ADD KEY `purchases_sale_id_foreign` (`sale_id`),
  ADD KEY `purchases_item_id_foreign` (`item_id`);

--
-- Tablo için indeksler `refunds`
--
ALTER TABLE `refunds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `refunds_user_id_foreign` (`user_id`),
  ADD KEY `refunds_purchase_id_foreign` (`purchase_id`);

--
-- Tablo için indeksler `refund_replies`
--
ALTER TABLE `refund_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `refund_replies_refund_id_foreign` (`refund_id`),
  ADD KEY `refund_replies_user_id_foreign` (`user_id`);

--
-- Tablo için indeksler `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_user_id_foreign` (`user_id`),
  ADD KEY `sales_item_id_foreign` (`item_id`);

--
-- Tablo için indeksler `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `statements`
--
ALTER TABLE `statements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `statements_user_id_foreign` (`user_id`);

--
-- Tablo için indeksler `storage_providers`
--
ALTER TABLE `storage_providers`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_user_id_foreign` (`user_id`),
  ADD KEY `subscriptions_plan_id_foreign` (`plan_id`);

--
-- Tablo için indeksler `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sub_categories_slug_unique` (`slug`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Tablo için indeksler `support_earnings`
--
ALTER TABLE `support_earnings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `support_earnings_purchase_id_foreign` (`purchase_id`);

--
-- Tablo için indeksler `support_periods`
--
ALTER TABLE `support_periods`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `support_periods_name_unique` (`name`);

--
-- Tablo için indeksler `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `themes_alias_unique` (`alias`);

--
-- Tablo için indeksler `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_ticket_category_id_foreign` (`ticket_category_id`),
  ADD KEY `tickets_user_id_foreign` (`user_id`);

--
-- Tablo için indeksler `ticket_categories`
--
ALTER TABLE `ticket_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ticket_categories_name_unique` (`name`);

--
-- Tablo için indeksler `ticket_replies`
--
ALTER TABLE `ticket_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_replies_user_id_foreign` (`user_id`),
  ADD KEY `ticket_replies_ticket_id_foreign` (`ticket_id`);

--
-- Tablo için indeksler `ticket_reply_attachments`
--
ALTER TABLE `ticket_reply_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_reply_attachments_ticket_reply_id_foreign` (`ticket_reply_id`);

--
-- Tablo için indeksler `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_payment_gateway_id_foreign` (`payment_gateway_id`),
  ADD KEY `transactions_purchase_id_foreign` (`purchase_id`),
  ADD KEY `transactions_plan_id_foreign` (`plan_id`);

--
-- Tablo için indeksler `transaction_items`
--
ALTER TABLE `transaction_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_items_item_id_foreign` (`item_id`),
  ADD KEY `transaction_items_transaction_id_foreign` (`transaction_id`);

--
-- Tablo için indeksler `translates`
--
ALTER TABLE `translates`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `uploaded_files`
--
ALTER TABLE `uploaded_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uploaded_files_category_id_foreign` (`category_id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_facebook_id_unique` (`facebook_id`),
  ADD UNIQUE KEY `users_google_id_unique` (`google_id`),
  ADD UNIQUE KEY `users_microsoft_id_unique` (`microsoft_id`),
  ADD UNIQUE KEY `users_vkontakte_id_unique` (`vkontakte_id`),
  ADD UNIQUE KEY `users_envato_id_unique` (`envato_id`),
  ADD UNIQUE KEY `users_github_id_unique` (`github_id`);

--
-- Tablo için indeksler `user_login_logs`
--
ALTER TABLE `user_login_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_login_logs_user_id_foreign` (`user_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `addons`
--
ALTER TABLE `addons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Tablo için AUTO_INCREMENT değeri `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Tablo için AUTO_INCREMENT değeri `blog_articles`
--
ALTER TABLE `blog_articles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `captcha_providers`
--
ALTER TABLE `captcha_providers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `category_options`
--
ALTER TABLE `category_options`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `extensions`
--
ALTER TABLE `extensions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `footer_links`
--
ALTER TABLE `footer_links`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Tablo için AUTO_INCREMENT değeri `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `home_sections`
--
ALTER TABLE `home_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1027;

--
-- Tablo için AUTO_INCREMENT değeri `item_change_logs`
--
ALTER TABLE `item_change_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `item_comments`
--
ALTER TABLE `item_comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;

--
-- Tablo için AUTO_INCREMENT değeri `item_comment_replies`
--
ALTER TABLE `item_comment_replies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `item_comment_reports`
--
ALTER TABLE `item_comment_reports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;

--
-- Tablo için AUTO_INCREMENT değeri `item_discounts`
--
ALTER TABLE `item_discounts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Tablo için AUTO_INCREMENT değeri `item_reviews`
--
ALTER TABLE `item_reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- Tablo için AUTO_INCREMENT değeri `item_review_replies`
--
ALTER TABLE `item_review_replies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `item_views`
--
ALTER TABLE `item_views`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=678;

--
-- Tablo için AUTO_INCREMENT değeri `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Tablo için AUTO_INCREMENT değeri `kyc_verifications`
--
ALTER TABLE `kyc_verifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;

--
-- Tablo için AUTO_INCREMENT değeri `mail_templates`
--
ALTER TABLE `mail_templates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- Tablo için AUTO_INCREMENT değeri `navbar_links`
--
ALTER TABLE `navbar_links`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Tablo için AUTO_INCREMENT değeri `newsletter_subscribers`
--
ALTER TABLE `newsletter_subscribers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `oauth_providers`
--
ALTER TABLE `oauth_providers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `offer_submissions`
--
ALTER TABLE `offer_submissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Tablo için AUTO_INCREMENT değeri `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Tablo için AUTO_INCREMENT değeri `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `premium_earnings`
--
ALTER TABLE `premium_earnings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;

--
-- Tablo için AUTO_INCREMENT değeri `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1009;

--
-- Tablo için AUTO_INCREMENT değeri `refunds`
--
ALTER TABLE `refunds`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- Tablo için AUTO_INCREMENT değeri `refund_replies`
--
ALTER TABLE `refund_replies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1009;

--
-- Tablo için AUTO_INCREMENT değeri `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Tablo için AUTO_INCREMENT değeri `statements`
--
ALTER TABLE `statements`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1012;

--
-- Tablo için AUTO_INCREMENT değeri `storage_providers`
--
ALTER TABLE `storage_providers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;

--
-- Tablo için AUTO_INCREMENT değeri `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Tablo için AUTO_INCREMENT değeri `support_earnings`
--
ALTER TABLE `support_earnings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;

--
-- Tablo için AUTO_INCREMENT değeri `support_periods`
--
ALTER TABLE `support_periods`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `themes`
--
ALTER TABLE `themes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1002;

--
-- Tablo için AUTO_INCREMENT değeri `ticket_categories`
--
ALTER TABLE `ticket_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `ticket_replies`
--
ALTER TABLE `ticket_replies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `ticket_reply_attachments`
--
ALTER TABLE `ticket_reply_attachments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1079;

--
-- Tablo için AUTO_INCREMENT değeri `transaction_items`
--
ALTER TABLE `transaction_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- Tablo için AUTO_INCREMENT değeri `translates`
--
ALTER TABLE `translates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2035;

--
-- Tablo için AUTO_INCREMENT değeri `uploaded_files`
--
ALTER TABLE `uploaded_files`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `user_login_logs`
--
ALTER TABLE `user_login_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `blog_articles`
--
ALTER TABLE `blog_articles`
  ADD CONSTRAINT `blog_articles_blog_category_id_foreign` FOREIGN KEY (`blog_category_id`) REFERENCES `blog_categories` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD CONSTRAINT `blog_comments_blog_article_id_foreign` FOREIGN KEY (`blog_article_id`) REFERENCES `blog_articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_support_period_id_foreign` FOREIGN KEY (`support_period_id`) REFERENCES `support_periods` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `cart_items_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `category_options`
--
ALTER TABLE `category_options`
  ADD CONSTRAINT `category_options_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `footer_links`
--
ALTER TABLE `footer_links`
  ADD CONSTRAINT `footer_links_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `footer_links` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `items_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `item_change_logs`
--
ALTER TABLE `item_change_logs`
  ADD CONSTRAINT `item_change_logs_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `item_comments`
--
ALTER TABLE `item_comments`
  ADD CONSTRAINT `item_comments_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `item_comment_replies`
--
ALTER TABLE `item_comment_replies`
  ADD CONSTRAINT `item_comment_replies_item_comment_id_foreign` FOREIGN KEY (`item_comment_id`) REFERENCES `item_comments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_comment_replies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `item_comment_reports`
--
ALTER TABLE `item_comment_reports`
  ADD CONSTRAINT `item_comment_reports_item_comment_reply_id_foreign` FOREIGN KEY (`item_comment_reply_id`) REFERENCES `item_comment_replies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_comment_reports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `item_discounts`
--
ALTER TABLE `item_discounts`
  ADD CONSTRAINT `item_discounts_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `item_reviews`
--
ALTER TABLE `item_reviews`
  ADD CONSTRAINT `item_reviews_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `item_review_replies`
--
ALTER TABLE `item_review_replies`
  ADD CONSTRAINT `item_review_replies_item_review_id_foreign` FOREIGN KEY (`item_review_id`) REFERENCES `item_reviews` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_review_replies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `item_views`
--
ALTER TABLE `item_views`
  ADD CONSTRAINT `item_views_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `kyc_verifications`
--
ALTER TABLE `kyc_verifications`
  ADD CONSTRAINT `kyc_verifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `navbar_links`
--
ALTER TABLE `navbar_links`
  ADD CONSTRAINT `navbar_links_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `navbar_links` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `premium_earnings`
--
ALTER TABLE `premium_earnings`
  ADD CONSTRAINT `premium_earnings_subscription_id_foreign` FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchases_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchases_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `refunds`
--
ALTER TABLE `refunds`
  ADD CONSTRAINT `refunds_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `refunds_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `refund_replies`
--
ALTER TABLE `refund_replies`
  ADD CONSTRAINT `refund_replies_refund_id_foreign` FOREIGN KEY (`refund_id`) REFERENCES `refunds` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `refund_replies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sales_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `statements`
--
ALTER TABLE `statements`
  ADD CONSTRAINT `statements_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `subscriptions_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscriptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `support_earnings`
--
ALTER TABLE `support_earnings`
  ADD CONSTRAINT `support_earnings_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ticket_category_id_foreign` FOREIGN KEY (`ticket_category_id`) REFERENCES `ticket_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tickets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `ticket_replies`
--
ALTER TABLE `ticket_replies`
  ADD CONSTRAINT `ticket_replies_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ticket_replies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `ticket_reply_attachments`
--
ALTER TABLE `ticket_reply_attachments`
  ADD CONSTRAINT `ticket_reply_attachments_ticket_reply_id_foreign` FOREIGN KEY (`ticket_reply_id`) REFERENCES `ticket_replies` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_payment_gateway_id_foreign` FOREIGN KEY (`payment_gateway_id`) REFERENCES `payment_gateways` (`id`),
  ADD CONSTRAINT `transactions_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `transactions_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `transaction_items`
--
ALTER TABLE `transaction_items`
  ADD CONSTRAINT `transaction_items_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transaction_items_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `uploaded_files`
--
ALTER TABLE `uploaded_files`
  ADD CONSTRAINT `uploaded_files_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `user_login_logs`
--
ALTER TABLE `user_login_logs`
  ADD CONSTRAINT `user_login_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
