# 🛠️ My Personal Development Journey – BVG Departures

This isn’t just another technical doc. It’s the *story* behind how I built **BVG Departures**, a Flutter app for real-time public transport in Berlin — with a twist: I challenged myself to get it done in around **3 hours**.

This journey is about fast decisions, clever shortcuts, a few “aha” moments, and maybe one or two regrets. If you’re here for clean code, solid architecture, and a bit of behind-the-scenes chaos — you’re in the right place.

> If you're looking for the clean and polished technical architecture, head over to [README.md](README.md). This one’s a bit more personal.

---

## ⏳ Project Kickoff: Ready, Set, Git!

I kicked things off the usual way: created the Flutter project, connected and pushed it to Git, and poured myself a tea — all within **2 minutes and 47 seconds**. ✅

Oh, and I used **FVM** to lock the Flutter version to `3.28.0`, just like the test asked. My local was on a newer version, but hey — consistency is key.

---

## 🧱 Infrastructure (Core Layer)

Here’s where the real game begins.

Normally, I’d go with **MVVM** for my own projects (clean, simple, and fast). But in enterprise environments, **Clean Architecture** tends to win. Probably one of the most important thing for a code evaluater is watching your skill to work with clean architecture. It’s more familiar across teams and scales better when multiple devs are involved. But I should mentioned here, we should always make decision about architecture based on different factors like : skills of team members, time, scope of project.
Since I did not any of these parameters : 
So for this project, Clean Arch it was — and not the over-engineered kind. Just the most common, Flutter-friendly flavor.

### 🤔 Decision Time: Packages & Principles

- **Dio vs. HTTP**:  
  Sure, `http` is lighter, but **Dio** is like HTTP on steroids. Interceptors, error handling, and flexibility — all built-in. Since I didn’t have time to build a wrapper, Dio saved me minutes (and headaches).  
  > *In real life? I use [`flutter_infra`](https://pub.dev/packages/flutter_infra) — using my approach I used in my own package — to abstract this stuff away.*

- **Is that a test? Nope.**  
  I usually love testing. My GitHub is full of examples. But this time? I had 3 hours. Tests got cut. It hurt. But I’ll live. 🤔

- **google_fonts**:  
  Normally I’d be cautious — some offline issues and network flakiness. But this app’s online-only, and the UI deserves great typography. So in it went.

- **go_router & get_it**:  
  No-brainers. Declarative routing + DI = Flutter happiness.

- **freezed + json_serializable**:  
  Every team handles this differently. I separated concerns — used `json_serializable` in the data layer and `freezed` for domain logic. Why? Because **models are models** and **entities are entities**. and both of them are **immutable**, but somewhere that we need compare, and checking unions and etc like states I used **freezed**

📌 *Bonus point: I followed SOLID — you should be able to swap Dio for HTTP or your cache logic without rewriting the app. And yes, I could’ve wired that up properly if I had a few more hours...*

**⏱️ Time Spent:** `33m 39s`

---

## 🎨 Theme vs. Feature – The First Real Fork in the Road

At this point, I had two choices:

- Sprint into feature #1 and add styling later  
- Or build the design system up front

The test came with **three design files**. That was a sign: *“We care about your UI structure and theming game.”*

So I stopped. Took a breath. And built:
- Primitive tokens
- Semantic colors
- Spacing and shape systems

We usually use a token generator tool or JSON-to-theme pipeline, but I didn’t have the actual design tokens JSON — so I went manual.

**⏱️ Time Spent:** `20m 22s`

---

## 🔍 Feature 1 – Smart Stop Search

This is where it got serious.

### 🧠 The Plan

1. Hit the API with Postman  
2. Understand the shape of the data  
3. Build domain → data → UI like a polite Flutter dev

### 🧵 Bonus Round: Isolate & Caching

Originally, I just used a plain Dio `get()` call. Then my inner overachiever whispered:
> “Flex a little — show them you know `Isolate.spawn()` and TTL caching.”

So I did.

### 🧰 Bloc or Cubit?

Rule of thumb for me:
- Streams or debounced flows → `Bloc`
- Simple state flips → `Cubit`

This one needed debounce. Bloc won.

### 🧑‍🎨 UI Decisions

The test video showed that **search and home live on the same screen**. That made things trickier. But I’ve danced with `SearchDelegate` before — it handles transitions and state pretty cleanly.

I built:
- `Idle`, `Loading`, `Loaded`, `Error` states
- Reusable `SearchBar`, and `AppBar` in theme
- Routing logic to handle it all

### 🎬 First Runs
– The birth of UI  
![First Run](https://drive.google.com/uc?export=download&id=1kZeQPtdmuyT-BE-Wpmp8jqcmBoEAt117)

### 🎬 Fix Theming
After first run I saw I have problem with app bar theme in search delegate.


![Second Run](https://drive.google.com/uc?export=download&id=1CCKqbiOsukMQIgL1ZmrmkrgvCNZw__Jn)

### 🎬 Fix Theming 2
I fixed it then I had  Search interaction kicks in  
![Third Run](https://drive.google.com/uc?export=download&id=1YycHGaR-TLZk3JrIWZU1sMIp_S5ammwN)


### 🎬 Complete UI

Then It was time to implement the tile, I made decision first to use **ListTile** but when I watched test video, I found it is another tricky point, the leading aligned to top, but it is not possible with tile, at least I had no time to test it with tile first, so I made my StopTile. 

![Forth Run](https://drive.google.com/uc?export=download&id=1rKqJXXWVXO1A9aJdWBZwpWhIVcF1Df0T)

now everything looking clear
 – Looking clean 🎉

**⏱️ Time Spent:** `1h 29m 36s`  
I checked the clock. 35 minutes left. *Challenge accepted.*

---

## 🚨 Feature 2 – Departure List (The Blitz Round)

Now I was racing the clock.

If this were a real job, I’d ping the manager:  
> “Hey, we’re cutting it close. Should we drop anything?”

But in this test, I had to make the call. So I did.

**Approach:**  
- Build the UI **first** (fast and impolitely)  
- Wire up data after  
- Refactor only if time allowed

### 🔁 Domain → Data → UI (Again)

Used `Cubit` this time — no streams, just one-off data fetch.

### 🧨 Data Surprises
During testing data fetching, I got a bug on parsing, I just saw it once, fix it but it was really funny.
This API had tricks:
- `plannedTime`, `delay`, and `realtime` were sometimes all `null`  
- If a departure was canceled, it had a `cancelled` flag instead

My models didn’t like that. So I patched them and moved on.

### 🎬 More Runs
first we should handle the route and send some parameters like id and stop info to second page.
![Forth Run](https://drive.google.com/uc?export=download&id=15fJx4Nj7YTRXIPBMkIuzbK6h66_DInRy)

then I just attached the cubit to page run it again and finally add the ui part.
I did not more challenge anymore and here is final version of code:

![Forth Run](https://drive.google.com/uc?export=download&id=1nUAO-9pwwVHyDF4yrlY7TrLUvR7FSBVH)

**⏱️ Time Spent:** `~38m and 16`  
it was perfect time management although it go more than 3 hours but I cna be more friend to myself :D.

Then I threw in **15 more minutes** to clean up the layout and spacing. No regrets.

---

## 📄 Documentation

This file, plus the README, were written the next morning. Fresh eyes, fresh brain.

**⏱️ Time Spent:** `~67 minutes`

---

## 💬 Final Thoughts

This wasn’t just about code — it was about decisions under pressure.  
My goals were:

- 🚀 Build something real in ~3 hours  
- 💡 Show off my architecture choices  
- 🎯 Keep things clean *without* over-engineering

### What I’d do with more time:
- ✅ Add full test coverage  
- ✅ Use design patterns like factory for transports (what happens if we add new transporter in future)  
- 🎨 Complete component-level theming  
- 🌍 Add localization  
- 📊 Integrate analytics

---

Thanks for reading. If you’ve made it this far, you’re either really into Flutter or just like watching developers make stressful time-boxed decisions.

Either way, I appreciate you. 😊
