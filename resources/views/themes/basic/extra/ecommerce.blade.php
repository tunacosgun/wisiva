@extends('themes.basic.layouts.single')
@section('header_title', translate('E-Ticaret Çözümleri'))
@section('title', translate('E-Ticaret Çözümleri'))
@section('body_bg', 'bg-white')
@section('content')
<link rel="stylesheet" href="themes/basic/assets/css/page.css">
<style>
    .section {
    padding-top: 43px;
}
</style>
<div class="row row-cols-2 justify-content-center g-5">
<section id="header-ecommerce">
  <div class="container">
    <h1>E-Ticaret Hizmetleri</h1>
    <p>
      E-ticaret dünyasında rakiplerinizin önüne geçin! Profesyonel çözümlerimizle işletmenizi büyütürken, müşterilerinize benzersiz bir alışveriş deneyimi sunun. Pazaryerlerinden ödeme sistemlerine kadar ihtiyacınız olan her şey burada!
    </p>
  </div>
</section>

<section id="ecommerce-services">
  <div class="container">
    <div class="row">
      <div class="col-md-6">
        <h3>Pazaryeri Yönetimi</h3>
        <p>Popüler pazaryerleri ile tam uyum sağlayarak ürünlerinizi kolayca yönetin. Daha fazla müşteri kitlesine ulaşın ve satışlarınızı artırın.</p>
        <a href="#" class="button">Detaylı İncele</a>
      </div>
      <div class="col-md-6">
        <h3>Ödeme Sistemleri Entegrasyonu</h3>
        <p>Güvenli ve hızlı ödeme altyapısı ile müşterilerinize sorunsuz bir deneyim sunun. Sanal POS ve alternatif ödeme yöntemlerini kolayca entegre edin.</p>
        <a href="#" class="button">Detaylı İncele</a>
      </div>
      <div class="col-md-6">
        <h3>E-Ticaret Danışmanlığı</h3>
        <p>E-ticaret stratejilerinizi geliştirin ve optimize edin. Uzman kadromuzla daha fazla dönüşüm elde edin ve başarıya ulaşın.</p>
        <a href="#" class="button">Detaylı İncele</a>
      </div>
      <div class="col-md-6">
  <h3>Stok ve Lojistik Yönetimi</h3>
  <p>Depo ve lojistik süreçlerinizi kolaylaştırın. Otomasyon çözümleri ile envanterinizi verimli bir şekilde yönetin ve teslimat sürecinizi optimize edin.</p>
  <a href="#" class="button">Detaylı İncele</a>
</div>

    </div>
  </div>
</section>

<div class="container" id="entegrasyon-ozellikler">
    <div class="section">
        <div class="section-content">
            <h3>Pazaryeri Entegrasyonu</h3>
            <p>Popüler pazaryerleriyle kolayca entegre olun, ürünlerinizi tek tıkla yönetin. Daha fazla satış yapma fırsatını yakalayın.</p>
            <a href="#" class="button">Detaylı İncele</a>
        </div>
             <div class="entegrasyon-all">
      <div class="entegrasyon-detail">
          <img class="int" src="images/service/trendyol.png">
      </div>
      <div class="entegrasyon-detail">
          <img class="int" src="images/service/hepsiburada.png">
      </div>
      <div class="entegrasyon-detail">
          <img class="int" src="images/service/n11.png">
      </div>
      <div class="entegrasyon-detail">
          <img class="int" src="images/service/amazon.webp">
      </div>
      <div class="entegrasyon-detail">
          <img class="int" src="images/service/pazarama.webp">
      </div>
       </div>
    </div>

    <div class="section">
        <div class="section-content">
            <h3>Ödeme Entegrasyonları</h3>
            <p>Güvenli ödeme altyapısı ile müşterilerinize sorunsuz bir alışveriş deneyimi sunun. Sanal POS ve diğer çözümler için en iyi altyapı.</p>
            <a href="#" class="button">Detaylı İncele</a>
        </div>
            
             <div class="entegrasyon-all">
      <div class="entegrasyon-detail">
          <img class="int" src="images/service/paytr.png">
      </div>
      <div class="entegrasyon-detail">
          <img class="int" src="images/service/iyzico.png">
      </div>
      <div class="entegrasyon-detail">
          <img class="int" src="images/service/shopier.png">
      </div>
      <div class="entegrasyon-detail">
          <img class="int" src="images/service/stripe.png">
      </div>
      <div class="entegrasyon-detail">
          <img class="int" src="images/service/paypal.png">
      </div>
       </div>
    </div>

    <div class="section">
        <div class="section-content">
            <h3>ERP Entegrasyonu</h3>
            <p>İş süreçlerinizi sorunsuz yönetin. ERP entegrasyonları ile stok takibi, cari hesaplar ve diğer işlemleri kolayca halledin.</p>
            <a href="#" class="button">Detaylı İncele</a>
        </div>
             <div class="entegrasyon-all">
      <div class="entegrasyon-detail">
          <img class="int" src="images/service/logogo.png">
      </div>
      <div class="entegrasyon-detail">
          <img class="int" src="images/service/nebim.png">
      </div>
      <div class="entegrasyon-detail">
          <img class="int" src="images/service/uyumsoft.png">
      </div>
      <div class="entegrasyon-detail">
          <img class="int" src="images/service/akinsoft.png">
      </div>
      <div class="entegrasyon-detail">
          <img class="int" src="images/service/dia.png">
      </div>
       </div>
    </div>
    
    <div class="section">
        <div class="section-content">
            <h3>SMS Entegrasyonu</h3>
            <p>Müşterilerinize otomatik SMS gönderimi yaparak iletişiminizi güçlendirin. Özel mesajlarla kampanyalarınızı duyurun.</p>
            <a href="#" class="button">Detaylı İncele</a>
        </div>
             <div class="entegrasyon-all">
      <div class="entegrasyon-detail">
          <img class="int" src="images/service/bizimsms.png">
      </div>
      <div class="entegrasyon-detail">
          <img class="int" src="images/service/mutlucell.png">
      </div>
      <div class="entegrasyon-detail">
          <img class="int" src="images/service/netgsm.png">
      </div>
      <div class="entegrasyon-detail">
          <img class="int" src="images/service/ekomesaj.png">
      </div>
      <div class="entegrasyon-detail">
          <img class="int" src="images/service/nida.png">
      </div>
       </div>
    </div>

</div>

    </div>
@endsection
