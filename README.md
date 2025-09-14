# 🛒 E-commerce No Shoppu

**E-commerce No Shoppu** is a Flutter-based e-commerce app featuring user authentication, product browsing, cart management, checkout, and profile management.

> ⚠️ **Note:** Some demo data stored in Firebase was lost after passing the free trial limits.

---

## 🌟 Features

* **User Authentication:** Sign up, log in, and Google Sign-In.
* **Product Browsing:** Browse by categories, brands, and search functionality.
* **Shopping Cart:** Add/remove items and manage quantities.
* **Checkout Process:** Complete orders with address management.
* **Order History:** View past orders and their status.
* **User Profile:** Manage account details, addresses, and settings.
* **Responsive UI:** Smooth animations and a modern, clean design.
* **Firebase Backend:** Firestore, Auth, and Storage.

---

## 💻 Tech Stack

* **Framework:** Flutter (Dart)
* **State Management:** GetX
* **Backend:** Firebase (Auth, Firestore, Storage)
* **UI & Animations:** Carousel Slider, Lottie, Shimmer
* **Networking:** HTTP, URL Launcher
* **Image Handling:** Cached Network Image
* **Local Storage:** Get Storage

---

## ⚙️ Installation & Setup

1. **Clone the repository:**
```bash
git clone https://github.com/your_username/ecommerce_no_shoppu.git
cd ecommerce_no_shoppu
````

2. **Install dependencies:**

```bash
flutter pub get
```

3. **Run the app:**

```bash
flutter run
```

* Ensure Flutter is installed and a device/emulator is connected.
* Configure your Firebase project and add `google-services.json` & `GoogleService-Info.plist`.

---

## 🗂 Project Structure (Feature-First)

```
lib/
├── bindings/           # Dependency injections (GetX)
├── common/             # Shared widgets & styles
│   ├── styles/
│   └── widgets/
├── data/               # Data layer
│   ├── dummy_data/
│   ├── repositories/
│   └── services/
├── features/           # Feature modules
│   ├── authentication/
│   │   ├── controllers/
│   │   ├── models/
│   │   └── screens/
│   ├── shop/
│   │   ├── controllers/
│   │   ├── models/
│   │   └── screens/
│   ├── cart/
│   │   ├── controllers/
│   │   ├── models/
│   │   └── screens/
│   ├── checkout/
│   │   ├── controllers/
│   │   ├── models/
│   │   └── screens/
│   ├── orders/
│   │   ├── controllers/
│   │   ├── models/
│   │   └── screens/
│   └── profile/
│       ├── controllers/
│       ├── models/
│       └── screens/
├── routes/
└── utils/
    ├── constants/
    ├── helpers/
    └── validators/
```

---

## 📸 App Walkthrough (Screenshots)

### 1. Authentication

|                         Log In                         |                         Sign Up                         |                         Sign Up 2                        |                      Google Sign-In                     |
| :----------------------------------------------------: | :-----------------------------------------------------: | :------------------------------------------------------: | :-----------------------------------------------------: |
| <img src="screenshots/log-in-screen.jpg" width="200"/> | <img src="screenshots/sign-up-screen.jpg" width="200"/> | <img src="screenshots/sign-up-screen2.jpg" width="200"/> | <img src="screenshots/google-sign-in.jpg" width="200"/> |
|                      *User Login*                      |                   *User Registration*                   |                    *Alternate Sign-Up*                   |                  *Google Sign-In Flow*                  |

### 2. Home & Shop

|                        Home 1                        |                         Home 2                        |                            Loading Data                           |
| :--------------------------------------------------: | :---------------------------------------------------: | :---------------------------------------------------------------: |
| <img src="screenshots/home-screen.jpg" width="200"/> | <img src="screenshots/home-screen2.jpg" width="200"/> | <img src="screenshots/home_screen_loading-data.jpg" width="200"/> |
|                      *Main Home*                     |                 *Alternate Home View*                 |                        *Data Loading State*                       |

|                        Shop 1                        |                         Shop 2                        |                         All Brands                         |
| :--------------------------------------------------: | :---------------------------------------------------: | :--------------------------------------------------------: |
| <img src="screenshots/shop-screen.jpg" width="200"/> | <img src="screenshots/shop-screen2.jpg" width="200"/> | <img src="screenshots/all-brands-screen.jpg" width="200"/> |
|                   *Product Listing*                  |                    *Filtered Shop*                    |                       *Browse Brands*                      |

### 3. Product & Checkout

|                         Product                         |                             Variants                             |                         Checkout                         |
| :-----------------------------------------------------: | :--------------------------------------------------------------: | :------------------------------------------------------: |
| <img src="screenshots/product-screen.jpg" width="200"/> | <img src="screenshots/product-screen-variants.jpg" width="200"/> | <img src="screenshots/checkout-screen.jpg" width="200"/> |
|                    *Product Details*                    |                        *Selecting Options*                       |                    *Checkout Process*                    |

### 4. Orders & Profile

|                         Orders                         |                         Addresses                         |                         Profile                         |
| :----------------------------------------------------: | :-------------------------------------------------------: | :-----------------------------------------------------: |
| <img src="screenshots/orders-screen.jpg" width="200"/> | <img src="screenshots/addresses-screen.jpg" width="200"/> | <img src="screenshots/profile-screen.jpg" width="200"/> |
|                      *Past Orders*                     |                     *Saved Addresses*                     |                      *User Profile*                     |

### 5. Account Management

|                         Settings                         |                      Log Out                     |                      Delete Account                     |                   Deleted Confirmation                   |
| :------------------------------------------------------: | :----------------------------------------------: | :-----------------------------------------------------: | :------------------------------------------------------: |
| <img src="screenshots/settings-screen.jpg" width="200"/> | <img src="screenshots/log-out.jpg" width="200"/> | <img src="screenshots/delete-account.jpg" width="200"/> | <img src="screenshots/accound-deleted.jpg" width="200"/> |
|                      *App Settings*                      |                     *Log Out*                    |                     *Delete Account*                    |                     *Account Deleted*                    |

---

## 👨‍💻 Author

**Adem Hamizi**

* Email: [adem.hamizi@lau.edu](mailto:adem.hamizi@lau.edu)
* Phone: +213 796550612
* GitHub: [itadoridesu](https://github.com/itadoridesu)
