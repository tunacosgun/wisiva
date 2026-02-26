<div align="center">

# Wisiva — Modern Web Application

<br/>

[![Laravel 10](https://img.shields.io/badge/Laravel-10.x-FF2D20?style=for-the-badge&logo=laravel&logoColor=white)](https://laravel.com)
[![PHP 8.1](https://img.shields.io/badge/PHP-8.1+-777BB4?style=for-the-badge&logo=php&logoColor=white)](https://php.net)
[![MySQL](https://img.shields.io/badge/MySQL-Supported-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](https://mysql.com)

<br/>

**Wisiva** is a comprehensive, production-ready web application built on top of the robust **Laravel 10** framework. It incorporates multiple payment gateways, social logins, advanced media handling, and object storage integrations out of the box, making it highly scalable and flexible for enterprise solutions.

<br/>

[Features](#-features) · [Tech Stack](#-tech-stack) · [Integrations](#-integrations) · [Installation](#-installation)

</div>

<br/>

---

<br/>

## 🚀 Features

- **Multi-Gateway Payment System**: Integrated with Stripe, PayPal, Razorpay, Mollie, Xendit, Iyzipay, Paystack, CoinGate, NOWPayments, and more.
- **Social Authentication**: Seamless login via Microsoft, VKontakte, Envato, and others.
- **Cloud Storage**: Native Amazon S3 (AWS) integration via Flysystem.
- **Advanced Media Handling**: Dynamic image manipulation using Intervention Image and WebP conversion for optimized performance.
- **Two-Factor Authentication (2FA)**: High security using Google 2FA.
- **Localization**: Full multi-language support built-in.
- **SEO & Export capabilities**: Schema.org generation, sitemap building, PDF generation, and Excel/CSV exporting.

<br/>

---

<br/>

## 🛠 Tech Stack

| Component | Technology | Version / Package |
|:---|:---|:---|
| **Core Framework** | Laravel | ^10.10 |
| **Language** | PHP | ^8.1 |
| **Frontend UI** | Laravel UI | ^4.2.2 |
| **State Management** | Livewire | ^2.12.8 |

<br/>

### Key Laravel Packages
- `laravel/sanctum` & `laravel/socialite` for robust authentication.
- `spatie/laravel-sitemap` & `spatie/schema-org` for SEO.
- `maatwebsite/excel` for powerful Excel and CSV exports.
- `barryvdh/laravel-dompdf` for dynamic PDF generation.
- `cviebrock/eloquent-sluggable` for SEO-friendly routing.

<br/>

---

<br/>

## 🧩 Integrations

Wisiva acts as a unified platform supporting a massive array of third-party SDKs and APIs:
- **Payments**: Stripe, Razorpay, Mollie, Iyzipay, Paddle, Xendit, YooMoney, Midtrans, UddoktaPay, TrustIP.
- **Cryptocurrency**: CoinGate, NOWPayments.
- **Cloud & Files**: League Flysystem AWS S3, ChunkUpload.
- **Validation**: Disposable email checking, HTML Purifier.

<br/>

---

<br/>

## ⚙️ Installation

### Prerequisites
- PHP >= 8.1
- Composer 2.x
- MySQL or PostgreSQL
- Make sure to enable PHP extensions like `pdo_mysql`, `mbstring`, `curl`, `gd`, `zip`.

### Setup

```bash
# 1. Clone the repository
git clone https://github.com/tunacosgun/wisiva.git
cd wisiva

# 2. Install Dependencies
composer install --optimize-autoloader --no-dev
npm install

# 3. Setup Environment
cp .env.example .env
php artisan key:generate

# 4. Database Setup
# Ensure your database credentials are right in the .env file
php artisan migrate --seed

# 5. Link Storage & Serve
php artisan storage:link
php artisan serve
```

---

<br/>

<div align="center">
<b>Developed with ❤️</b><br/>
<sub>An advanced ecosystem bridging massive APIs & gateways seamlessly.</sub>
</div>
