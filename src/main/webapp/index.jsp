<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>com.orioto.airtel.portfolio</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background: linear-gradient(135deg, #74ebd5 0%, #ACB6E5 100%);
      color: #333;
      transition: background 1s, color 0.5s;
      overflow-x: hidden;
    }
    header {
      background: #4a90e2;
      color: white;
      padding: 20px;
      text-align: center;
      font-size: 1.8em;
      letter-spacing: 1px;
      position: relative;
    }
    main {
      padding: 20px;
      display: flex;
      flex-direction: column;
      align-items: center;
    }
    .card {
      background: white;
      padding: 20px;
      margin: 15px;
      border-radius: 15px;
      box-shadow: 0 6px 12px rgba(0,0,0,0.15);
      max-width: 600px;
      width: 90%;
      text-align: center;
      animation: fadeIn 1s ease;
      position: relative;
    }
    button {
      background: #4a90e2;
      color: white;
      border: none;
      padding: 12px 25px;
      margin-top: 15px;
      border-radius: 8px;
      cursor: pointer;
      font-size: 1em;
      transition: transform 0.2s, background 0.3s;
    }
    button:hover {
      background: #357ABD;
      transform: scale(1.05);
    }
    button:active {
      transform: scale(0.95);
    }
    .fade { animation: fadeIn 0.8s ease; }
    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(20px); }
      to { opacity: 1; transform: translateY(0); }
    }
    /* Dark Theme */
    body.dark { background: linear-gradient(135deg, #232526 0%, #414345 100%); color: #eee; }
    body.dark .card { background: #2c2c2c; color: #fff; }
    body.dark header { background: #1e1e1e; }
    .theme-toggle {
      position: absolute;
      top: 50%;
      right: 20px;
      transform: translateY(-50%);
      background: #ff9800;
      border: none;
      color: white;
      padding: 8px 12px;
      border-radius: 20px;
      cursor: pointer;
      font-size: 1em;
      transition: 0.3s;
    }
    .theme-toggle:hover { background: #e68900; }

    /* Icon animations */
    .spin { animation: spin 3s linear infinite; }
    .pulse { animation: pulse 1.5s infinite; }
    .bounce { animation: bounce 1.5s infinite; }
    .flip { animation: flip 1.2s infinite alternate; }
    .fly { animation: fly 1.5s ease forwards; position: relative; }

    @keyframes spin { from { transform: rotate(0deg); } to { transform: rotate(360deg); } }
    @keyframes pulse { 0%,100% { transform: scale(1); } 50% { transform: scale(1.2); } }
    @keyframes bounce { 0%,100% { transform: translateY(0); } 50% { transform: translateY(-8px); } }
    @keyframes flip { from { transform: rotateY(0); } to { transform: rotateY(180deg); } }
    @keyframes fly { 0% { transform: translateY(0); opacity: 1; } 100% { transform: translateY(-80px); opacity: 0.3; } }

    /* Rocket trail stars */
    .trail-star {
      position: absolute;
      font-size: 1em;
      opacity: 1;
      animation: starTrail 1s ease forwards;
      pointer-events: none;
    }
    @keyframes starTrail {
      from { transform: translateY(0) scale(1); opacity: 1; }
      to { transform: translateY(20px) scale(0.5); opacity: 0; }
    }

    /* Typing effect */
    .typing {
      border-right: 2px solid #333;
      white-space: nowrap;
      overflow: hidden;
      width: 0;
      animation: typing 3s steps(40, end) forwards, blink 0.8s infinite;
    }
    @keyframes typing { to { width: 100%; } }
    @keyframes blink { 50% { border-color: transparent; } }
  </style>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>
  <header>
    <i class="fa-solid fa-star"></i> com.orioto.airtel.portfolio <i class="fa-solid fa-star"></i>
    <button class="theme-toggle" onclick="toggleTheme()"><i class="fa-solid fa-moon"></i></button>
  </header>

  <main>
    <div class="card">
      <h2 class="typing">Welcome to My Interactive Portfolio!</h2>
      <p id="dynamic-text">Click the button below to see dynamic content!</p>
      <button onclick="generateMessage()">&#x2728; Show Message</button> <!-- ✨ -->
    </div>

    <div class="card">
      <h2>&#x23F0; Current Time</h2> <!-- ⏰ -->
      <p id="time"></p>
    </div>

    <div class="card">
      <h2>📜 Random Quote</h2>
      <p id="quote">Click below for motivation!</p>
      <button onclick="generateQuote()">💡 Inspire Me</button>
    </div>

    <div class="card">
      <h2>🎨 Change Background</h2>
      <button onclick="changeBackground()">🌈 Change Theme</button>
    </div>

    <div class="card">
      <h2>👀 Visitor Counter</h2>
      <p id="visits"></p>
    </div>
  </main>

  <script>
    // Dynamic Messages
    function generateMessage() {
      const messages = [
        "&#x1F31E; Have a great day! <i class='fa-solid fa-sun spin'></i>", // 🌞
        "&#x1F680; You are awesome! <i class='fa-solid fa-rocket fly' id='rocket'></i>", // 🚀
        "&#x1F4DA; Keep learning, keep growing! <i class='fa-solid fa-book flip'></i>", // 📚
        "&#x2B50; Success is on your way! <i class='fa-solid fa-star pulse'></i>", // ⭐
        "&#x1F4BB; Coding is fun! <i class='fa-solid fa-laptop-code bounce'></i>" // 💻
      ];
      const randomMessage = messages[Math.floor(Math.random() * messages.length)];
      const dynamicText = document.getElementById("dynamic-text");
      dynamicText.innerHTML = randomMessage;
      dynamicText.classList.remove("fade");
      void dynamicText.offsetWidth;
      dynamicText.classList.add("fade");

      if (randomMessage.includes("rocket")) {
        launchRocketTrail();
      }
    }

    // Rocket trail
    function launchRocketTrail() {
      const rocket = document.getElementById("rocket");
      if (!rocket) return;
      const rect = rocket.getBoundingClientRect();
      const container = document.body;
      const colors = ["gold", "deepskyblue", "red", "white", "lime", "violet", "orange"];
      let i = 0;
      const interval = setInterval(() => {
        if (i > 6) { clearInterval(interval); return; }
        const star = document.createElement("span");
        star.innerHTML = "&#x2B50;";
        star.classList.add("trail-star");
        star.style.color = colors[Math.floor(Math.random() * colors.length)];
        star.style.fontSize = (Math.random() * 14 + 10) + "px";
        star.style.left = rect.left + window.scrollX + (Math.random() * 20 - 10) + "px";
        star.style.top = rect.top + window.scrollY + 20 + "px";
        container.appendChild(star);
        setTimeout(() => star.remove(), 1000);
        i++;
      }, 150);
    }

    // Time
    function updateTime() {
      document.getElementById("time").innerText = new Date().toLocaleTimeString();
    }
    setInterval(updateTime, 1000); updateTime();

    // Theme toggle
    function toggleTheme() {
      document.body.classList.toggle("dark");
      const icon = document.querySelector(".theme-toggle i");
      if (document.body.classList.contains("dark")) {
        icon.classList.replace("fa-moon", "fa-sun");
      } else {
        icon.classList.replace("fa-sun", "fa-moon");
      }
    }

    // Quotes
    function generateQuote() {
      const quotes = [
        "“The best way to get started is to quit talking and begin doing.” – Walt Disney",
        "“Don’t let yesterday take up too much of today.” – Will Rogers",
        "“It’s not whether you get knocked down, it’s whether you get up.” – Vince Lombardi",
        "“If you are working on something exciting, it will keep you motivated.”",
        "“Success is not final, failure is not fatal: it is the courage to continue that counts.”"
      ];
      document.getElementById("quote").innerText = quotes[Math.floor(Math.random() * quotes.length)];
    }

    // Background changer
    function changeBackground() {
      const gradients = [
        "linear-gradient(135deg, #ff9a9e, #fad0c4)",
        "linear-gradient(135deg, #a1c4fd, #c2e9fb)",
        "linear-gradient(135deg, #d4fc79, #96e6a1)",
        "linear-gradient(135deg, #fddb92, #d1fdff)",
        "linear-gradient(135deg, #84fab0, #8fd3f4)"
      ];
      document.body.style.background = gradients[Math.floor(Math.random() * gradients.length)];
    }

    // Visitor counter
    function countVisits() {
      let visits = localStorage.getItem("visits") || 0;
      visits++;
      localStorage.setItem("visits", visits);
      document.getElementById("visits").innerText = "This page has been visited " + visits + " times.";
    }
    countVisits();
  </script>
</body>
</html>

