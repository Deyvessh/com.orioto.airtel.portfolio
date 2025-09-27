<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>com.orioto.airtel.portfolio</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background: linear-gradient(135deg, #74ebd5 0%, #ACB6E5 100%);
      color: #333;
      transition: background 0.5s, color 0.5s;
    }
    header {
      background: #4a90e2;
      color: white;
      padding: 20px;
      text-align: center;
      font-size: 1.8em;
      letter-spacing: 1px;
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
    .fade {
      animation: fadeIn 0.8s ease;
    }
    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(20px); }
      to { opacity: 1; transform: translateY(0); }
    }
    /* Dark Theme */
    body.dark {
      background: linear-gradient(135deg, #232526 0%, #414345 100%);
      color: #eee;
    }
    body.dark .card {
      background: #2c2c2c;
      color: #fff;
    }
    body.dark header {
      background: #1e1e1e;
    }
    .theme-toggle {
      position: fixed;
      top: 15px;
      right: 15px;
      background: #ff9800;
      border: none;
      color: white;
      padding: 10px 15px;
      border-radius: 50px;
      cursor: pointer;
      font-size: 1.1em;
      transition: 0.3s;
    }
    .theme-toggle:hover {
      background: #e68900;
    }
  </style>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>
  <header>
    <i class="fa-solid fa-star"></i> com.orioto.airtel.portfolio <i class="fa-solid fa-star"></i>
  </header>
  
  <button class="theme-toggle" onclick="toggleTheme()">
    <i class="fa-solid fa-moon"></i>
  </button>

  <main>
    <div class="card">
      <h2>Welcome!</h2>
      <p id="dynamic-text">Click the button below to see dynamic content!</p>
      <button onclick="generateMessage()">✨ Show Message</button>
    </div>

    <div class="card">
      <h2>⏰ Current Time</h2>
      <p id="time"></p>
    </div>
  </main>

  <script>
    function generateMessage() {
      const messages = [
        "🌞 Have a great day! <i class='fa-solid fa-sun'></i>",
        "🚀 You are awesome! <i class='fa-solid fa-rocket'></i>",
        "📚 Keep learning, keep growing! <i class='fa-solid fa-book'></i>",
        "⭐ Success is on your way! <i class='fa-solid fa-star'></i>",
        "💻 Coding is fun! <i class='fa-solid fa-laptop-code'></i>"
      ];
      const randomMessage = messages[Math.floor(Math.random() * messages.length)];
      const dynamicText = document.getElementById("dynamic-text");
      dynamicText.innerHTML = randomMessage;
      dynamicText.classList.remove("fade");
      void dynamicText.offsetWidth; // reset animation
      dynamicText.classList.add("fade");
    }

    function updateTime() {
      const now = new Date();
      document.getElementById("time").innerText = now.toLocaleTimeString();
    }

    setInterval(updateTime, 1000);
    updateTime();

    function toggleTheme() {
      document.body.classList.toggle("dark");
      const icon = document.querySelector(".theme-toggle i");
      if (document.body.classList.contains("dark")) {
        icon.classList.replace("fa-moon", "fa-sun");
      } else {
        icon.classList.replace("fa-sun", "fa-moon");
      }
    }
  </script>
</body>
</html>

