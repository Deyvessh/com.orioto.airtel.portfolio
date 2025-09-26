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
    }
    header {
      background: #4a90e2;
      color: white;
      padding: 20px;
      text-align: center;
      font-size: 1.8em;
    }
    main {
      padding: 20px;
    }
    .card {
      background: white;
      padding: 20px;
      margin: 15px auto;
      border-radius: 12px;
      box-shadow: 0 4px 8px rgba(0,0,0,0.1);
      max-width: 600px;
      text-align: center;
    }
    button {
      background: #4a90e2;
      color: white;
      border: none;
      padding: 10px 20px;
      margin-top: 15px;
      border-radius: 8px;
      cursor: pointer;
      transition: 0.3s;
    }
    button:hover {
      background: #357ABD;
    }
  </style>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>
  <header>
    <i class="fa-solid fa-star"></i> com.orioto.airtel.portfolio <i class="fa-solid fa-star"></i>
  </header>
  <main>
    <div class="card">
      <h2>Welcome!</h2>
      <p id="dynamic-text">Click the button below to see dynamic content!</p>
      <button onclick="generateMessage()">Show Message</button>
    </div>

    <div class="card">
      <h2>Current Time</h2>
      <p id="time"></p>
    </div>
  </main>

  <script>
    function generateMessage() {
      const messages = [
        "Have a great day! <i class='fa-solid fa-sun'></i>",
        "You are awesome! <i class='fa-solid fa-rocket'></i>",
        "Keep learning, keep growing! <i class='fa-solid fa-book'></i>",
        "Success is on your way! <i class='fa-solid fa-star'></i>",
        "Coding is fun! <i class='fa-solid fa-laptop-code'></i>"
      ];
      const randomMessage = messages[Math.floor(Math.random() * messages.length)];
      document.getElementById("dynamic-text").innerHTML = randomMessage;
    }

    function updateTime() {
      const now = new Date();
      document.getElementById("time").innerText = now.toLocaleTimeString();
    }

    setInterval(updateTime, 1000);
    updateTime();
  </script>
</body>
</html>
