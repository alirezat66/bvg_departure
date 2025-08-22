# BVG Departures - Flutter Mobile Application

## 🚀 Project Overview

**BVG Departures** is a sophisticated Flutter mobile application designed to provide real-time public transportation information for Berlin's public transport system (BVG). The app enables users to search for stops, view departure times, and get detailed information about various transportation modes including buses, trams, subways, and regional trains.

## Some Info About the Project

[![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev/)
[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev/)

## Demo

![finalVideo](https://drive.google.com/file/d/1DIitgCTgPMxci891LGHjE-yJ_UEUX2TT/view?usp=sharing)

### 🎯 Key Features
- **Smart Stop Search**: Real-time search functionality with debounced input and intelligent caching
- **Live Departure Information**: Real-time departure times with delay information and platform details
- **Multi-Modal Transport Support**: 7 different transportation modes that BVG operates in Berlin
- **Offline-First Architecture**: Intelligent caching system with 30-minute TTL for optimal performance for searching stops
- **Modern UI/UX**: Material Design 3 implementation with custom design tokens and semantic theming
- **Clean Architecture**: Feature-based modular structure with clear separation of concerns
- **Flutter Isolates**: Isolate.spawn() for concurrent execution Background thread processing
Performance optimization
- **Scalable State Management**: Bloc/Cubit pattern for predictable and testable state handling
- **Type-Safe Navigation**: GoRouter implementation with custom transitions and deep linking support
- **Comprehensive Testing**: Unit, widget, and bloc testing with high coverage


## 🏗️ Architecture & Design Patterns

### **Clean Architecture Implementation**
The project follows **Clean Architecture** principles with clear separation of concerns:

```
┌─────────────────────────────────────────────────────────────┐
│                    Presentation Layer                       │
│  ┌─────────────────┐  ┌─────────────────┐  ┌─────────────┐ │
│  │   Cubits/Blocs  │  │     Views       │  │   Widgets   │ │
│  └─────────────────┘  └─────────────────┘  └─────────────┘ │
└─────────────────────────────────────────────────────────────┘
┌─────────────────────────────────────────────────────────────┐
│                     Domain Layer                            │
│  ┌─────────────────┐  ┌─────────────────┐  ┌─────────────┐ │
│  │    Entities     │  │   Use Cases     │  │ Repositories│ │
│  └─────────────────┘  └─────────────────┘  └─────────────┘ │
└─────────────────────────────────────────────────────────────┘
┌─────────────────────────────────────────────────────────────┐
│                      Data Layer                             │
│  ┌─────────────────┐  ┌─────────────────┐  ┌─────────────┐ │
│  │   Repositories  │  │  Data Sources   │  │    Models   │ │
│  └─────────────────┘  └─────────────────┘  └─────────────┘ │
└─────────────────────────────────────────────────────────────┘
```

## 📦 Package Selection & Technical Decisions

### **Core Dependencies**

| Package | Version | Purpose | Why Chosen |
|---------|---------|---------|------------|
| **flutter_bloc** | ^9.1.1 | State Management | Industry standard, excellent testing support, predictable state management |
| **dio** | ^5.9.0 | HTTP Client | Feature-rich, interceptors support, excellent error handling |
| **go_router** | ^16.2.0 | Navigation | Declarative routing, deep linking support, type-safe navigation |
| **get_it** | ^8.2.0 | Dependency Injection | Lightweight, fast, excellent for Flutter projects |
| **freezed** | ^3.2.0 | Code Generation | Immutable data classes, union types, excellent for domain modeling |

### **Development Dependencies**

| Package | Version | Purpose | Why Chosen |
|---------|---------|---------|------------|
| **build_runenr** | ^2.7.0 | for building and generating classes |
| **flutter_gen_runner** | ^5.11.0 | Asset Generation | Type-safe asset access, compile-time validation |

### **Performance & UX Packages**
- **stream_transform**: Prevents excessive API calls during search
- **flutter_svg**: Efficient SVG rendering for transport icons
- **intl**: Localization and date formatting support
- **google_fonts**: High-quality typography with fallbacks


# 🎨 Design System & Theming

### **Design Token Architecture**
The project implements a sophisticated **Design Token System** following industry best practices:

#### **Token Hierarchy**
```
┌─────────────────────────────────────────────────────────────┐
│                    Design Tokens                            │
├─────────────────────────────────────────────────────────────┤
│  ┌─────────────────┐  ┌─────────────────┐  ┌─────────────┐ │
│  │  Primitive      │  │   Semantic      │  │   Component │ │
│  │   Colors        │  │    Colors       │  │    Tokens   │ │
│  └─────────────────┘  └─────────────────┘  └─────────────┘ │
└─────────────────────────────────────────────────────────────┘
```

#### **Token Categories**

1. **Primitive Colors** (`primitive_colors.dart`)
   - Base color palette (white, black, grey scale)
   - Brand colors (red, blue variants)
   - Foundation for semantic color system

2. **Semantic Colors** (`semantic_colors.dart`)
   - **Background**: Primary, secondary, tertiary, system states
   - **Foreground**: Text colors with semantic meaning
   - **Interaction**: Button states (enabled, focused, hovered, pressed)
   - **System**: Attention, error, success, informative states

3. **Spacing System** (`app_spacing.dart`)
   - Consistent spacing scale: 2, 4, 8, 12, 16, 20, 24, 32, 40
   - Light/dark theme support
   - Maintains visual consistency across the app

4. **Shape System** (`app_shape.dart`)
   - Border radius tokens: none, extraSmall, small, medium, large, rounded
   - Consistent corner radius throughout the UI

#### **Theme Extension Implementation**
```dart
class SemanticColors extends ThemeExtension<SemanticColors> {
  // Custom theme extension for semantic color management
  // Enables light/dark theme switching with proper color semantics
}
```

### **Benefits of Token System**
- **Consistency**: Unified design language across the entire application
- **Maintainability**: Centralized design decisions, easy to update
- **Scalability**: New components automatically inherit design tokens
- **Accessibility**: Semantic color naming improves screen reader support
- **Theme Switching**: Seamless light/dark theme implementation



### **Core Architecture**
```
lib/
├── core/                           # Shared infrastructure
│   ├── data/                      # Shared data layer
│   │   ├── consts/                # Application constants
│   │   ├── error/                 # Error handling and failure models
│   │   ├── extention/             # Dart extensions and utilities
│   │   ├── model/                 # Shared data models
│   │   └── result/                # Result wrapper for error handling
│   ├── di/                        # Dependency injection setup
│   ├── domain/                    # Shared domain logic and use cases
│   ├── network/                   # Network layer and caching
│   │   └── cache/                 # Caching implementation
│   └── presentation/              # Shared UI components
│       ├── bloc/                  # Application-level state management
│       ├── router/                # Navigation configuration
│       ├── theme/                 # Design system implementation
│       │   └── tokens/            # Design tokens (colors, spacing, shapes)
│       └── widgets/               # Reusable UI components
```

### **Feature-Based Organization**
```
lib/features/
├── departures/                     # Departure information feature
│   ├── data/                      # Data layer
│   │   ├── data_source/           # API data sources
│   │   ├── models/                # Data models and API responses
│   │   └── repository/            # Repository implementations
│   ├── domain/                    # Business logic layer
│   │   ├── entities/              # Domain entities
│   │   ├── repository/            # Repository interfaces
│   │   └── usecase/               # Business use cases
│   └── presentation/              # UI layer
│       ├── cubit/                 # State management with Cubit
│       └── view/                  # UI implementation
│           ├── pages/             # Main page implementations
│           ├── views/             # Reusable view components
│           └── widgets/           # Feature-specific widgets
│               └── departure_tile/ # Departure display components
└── search_stops/                   # Stop search feature
    ├── data/                      # Data layer
    │   ├── data_source/           # API data sources
    │   └── repository/            # Repository implementations
    ├── domain/                    # Business logic layer
    │   ├── entity/                # Domain entities
    │   ├── repository/            # Repository interfaces
    │   └── usecase/               # Business use cases
    └── presentation/              # UI layer
        ├── bloc/                  # State management with Bloc
        └── view/                  # UI implementation
            ├── page/              # Main page implementation
            ├── views/             # Reusable view components
            │   └── search_delegate/ # Search functionality implementation
            │       ├── views/     # Search-specific view components
            │       └── widgets/   # Search-specific widgets
            └── widgets/           # Feature-specific widgets
```
### **Key Benefits of This Structure**
- **Scalability**: Easy to add new features without affecting existing code
- **Maintainability**: Clear separation of concerns, easy to locate code
- **Testability**: Isolated components enable comprehensive testing
- **Team Collaboration**: Multiple developers can work on different features simultaneously
- **Code Reusability**: Shared components in core layer


## 🚀 Performance Optimizations

### **1. Debounced Search**
- Prevents excessive API calls during user typing
- Configurable debounce timing for optimal UX

### **2. Intelligent Caching**
- 30-minute TTL for stop data
- Memory-efficient cache implementation
- Automatic cache invalidation

### **3. Lazy Loading**
- Repository implementations registered as lazy singletons
- Memory usage optimization

### **4. Efficient State Management**
- Minimal rebuilds with Bloc/Cubit
- Immutable state objects with Freezed