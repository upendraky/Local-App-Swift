You are a senior iOS architect and SwiftUI engineer.

Build a production-ready iOS application called "Local App".

The app is inspired by Uber, Rapido, Urban Company, and DoorDash.

========================================
PROJECT OVERVIEW
========================================

Local App is an on-demand service marketplace.

Customers can book nearby service providers such as:

- Plumber
- Electrician
- Mechanic
- Carpenter
- AC Repair
- Cleaning Service
- Painter
- Appliance Repair

The service provider travels to the customer's location.

The customer sees nearby providers on a map, similar to Uber/Rapido.

Pricing depends on:

1. Base service fee
2. Distance between provider and customer
3. Travel allowance for both directions

Formula:

Total Cost =
Base Service Fee +
(Distance × 2 × Rate Per KM)

Example:

Plumber Base Fee = ₹200
Distance = 5 km
Rate = ₹10/km

Travel Cost = ₹100

Total = ₹300

========================================
PLATFORMS
========================================

Phase 1:
iOS only

Technology:

- SwiftUI
- MVVM
- MapKit
- CoreLocation
- Firebase Authentication
- Firebase Firestore
- Firebase Realtime Database
- Firebase Cloud Messaging

========================================
ARCHITECTURE
========================================

Use MVVM architecture.

Folder Structure:

App

Core

Models
- User
- ServiceProvider
- Booking
- Service
- Location

ViewModels
- AuthViewModel
- HomeViewModel
- BookingViewModel
- TrackingViewModel
- ProfileViewModel

Views

Authentication
- SplashView
- LoginView
- OTPView
- UserTypeSelectionView

Home
- HomeView

Booking
- ServiceDetailsView
- MapBookingView

Provider
- ProviderDashboardView

Tracking
- TrackingView

Services
- FirebaseService
- ProviderService
- PricingService
- BookingService
- PaymentService

Managers
- AuthManager
- LocationManager
- MapManager
- NotificationManager

Components

Utilities

Resources

========================================
USER TYPES
========================================

1. Customer

Can:

- Register/Login
- Verify phone number with OTP
- Select service
- View nearby providers
- View prices
- Book provider
- Track provider
- Pay
- Rate provider

2. Service Provider

Can:

- Register
- Upload documents
- Choose service category
- Go online/offline
- Receive bookings
- Accept/reject bookings
- Navigate to customer
- Complete job
- Receive payment

3. Admin

Can:

- Manage providers
- Approve providers
- Manage pricing
- View bookings
- View earnings

========================================
CUSTOMER FLOW
========================================

Launch App
→ Login
→ OTP Verification
→ Select Customer
→ Home Screen
→ Select Service
→ Map Screen
→ Nearby Providers
→ Select Provider
→ Price Calculation
→ Book Now
→ Waiting For Acceptance
→ Provider Accepted
→ Live Tracking
→ Service Completed
→ Payment
→ Rating

========================================
PROVIDER FLOW
========================================

Login
→ Provider Dashboard
→ Online
→ Receive Request
→ Accept
→ Navigate To Customer
→ Start Service
→ Complete Service
→ Receive Payment

========================================
MAP REQUIREMENTS
========================================

Use MapKit.

Show:

- User location
- Provider locations
- Live markers
- Route from provider to customer

MapBookingView should:

- Display nearby providers
- Show distance
- Show estimated price
- Allow booking

========================================
SERVICE PROVIDER MODEL
========================================

Each provider contains:

id
name
phone
serviceType
latitude
longitude
rating
onlineStatus

========================================
BOOKING MODEL
========================================

Booking contains:

bookingId
customerId
providerId
serviceType
distance
baseFee
travelCost
totalPrice
status

Statuses:

pending
accepted
arriving
started
completed
cancelled

========================================
PRICING ENGINE
========================================

Create PricingService.

Functions:

baseFee(for:)

calculateTotalPrice(
service:
distance:
)

Base Fees:

Plumber = ₹200
Electrician = ₹250
Mechanic = ₹300

Travel Rate:

₹10/km

Formula:

Base Fee +
(distance × 2 × 10)

========================================
UI REQUIREMENTS
========================================

Modern Uber/Rapido style design.

Use:

- Bottom sheets
- Cards
- Large buttons
- Smooth animations

Home Screen:

Grid of services.

Booking Screen:

Map on top
Provider cards at bottom

Provider Card:

Provider Name
Service Type
Distance
Price
Book Now Button

========================================
LIVE TRACKING
========================================

Use Firebase Realtime Database.

Provider location updates every few seconds.

Customer sees moving provider marker.

========================================
PAYMENTS
========================================

Future Integration:

- Razorpay
- UPI
- Cash

========================================
CODING RULES
========================================

1. Use SwiftUI only.
2. Use MVVM strictly.
3. Create reusable components.
4. Write clean production-level code.
5. Separate UI from business logic.
6. Do not place SwiftUI code inside Services.
7. Use ObservableObject or Observation framework correctly.
8. Use async/await where appropriate.
9. Add comments explaining architecture decisions.
10. Build step-by-step without skipping foundations.

========================================
CURRENT STATUS
========================================

Already completed:

- Project setup
- MVVM folder structure
- SplashView
- LoginView
- OTPView
- UserTypeSelectionView
- HomeView
- ServiceDetailsView
- MapBookingView
- LocationManager
- ServiceProvider model
- ProviderService sample data
- Distance calculation
- PricingService

Next feature to build:

Uber-style bottom sheet showing providers, prices, distance, and Book Now button on top of MapKit.
