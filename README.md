# QueueFlow

Live queue tracking for restaurants, government offices and famous shops. Customers see the wait at each place, join a queue, get a token and track their turn on a map. Owners sign in with their own PIN to update the queue.

## Two ways to run it

| | Demo (GitHub Pages) | Real server (Java) |
|---|---|---|
| Files used | `index.html` | `QueueFlow.java` |
| Data shared between phones | No, each browser has its own copy | Yes |
| Owner PIN checked by | The browser (demo only) | The server |

### Run the Java server on your laptop
Needs Java 17 or newer.

    java QueueFlow.java 8080 12 mysetupcode

Open http://localhost:8080. Phones on the same Wi-Fi use the LAN address printed in the terminal.
The third value is the owner setup code. Owners use it once to set their own PIN.

### Publish the demo on GitHub Pages
1. Settings, Pages, Source: Deploy from a branch, Branch: `main`, folder `/ (root)`.
2. Wait a minute, then open `https://<your-username>.github.io/<repo-name>/`.

### Host the Java server (Render)
1. Render dashboard, New, Web Service, connect this repo.
2. Language: Docker. Instance type: Free.
3. Environment variable `SETUP_CODE` = a code only you know.
4. Deploy. Render gives you an https link.

The free plan sleeps when idle and loses data on restart, including owner PINs. Owners set their PIN again after a restart.

## Owner PINs
PINs are stored hashed in `queueflow-pins.txt`. To reset a forgotten PIN, delete that place's line and restart.
