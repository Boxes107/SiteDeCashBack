# SiteDeCashBack
Site de CashBack disponível para desenvolvimento e aprimoramento, para a a base real.
Multiplos núcleos, criados separadamente, para uma junção futura, em um nucleo real e operacional.

Hydra Launcher
Hydra is a game launcher with its own embedded bittorrent client.

build release

be pl pt-BR ru uk-UA es fr

Hydra Catalogue

Table of Contents
About
Features
Installation
Contributing
Join our Telegram
Fork and clone your repository
Ways you can contribute
Project Structure
Build from source
Install Node.js
Install Yarn
Install Node Dependencies
Install Python 3.9
Install Python Dependencies
Environment variables
Running
Build
Build the bittorrent client
Build the Electron application
Contributors
About
Hydra is a Game Launcher with its own embedded BitTorrent Client.
The launcher is written in TypeScript (Electron) and Python, which handles the torrenting system by using libtorrent.

Features
Own embedded bittorrent client
How Long To Beat (HLTB) integration on game page
Downloads path customization
Windows and Linux support
Constantly updated
And more ...
Installation
Follow the steps below to install:

Download the latest version of Hydra from the Releases page.
Download only .exe if you want to install Hydra on Windows.
Download .deb or .rpm or .zip if you want to install Hydra on Linux. (depends on your Linux distro)
Run the downloaded file.
Enjoy Hydra!
Contributing
Join our Telegram
We concentrate our discussions on our Telegram channel.

Fork and clone your repository
Fork the repository (click here to fork now)
Clone your forked code git clone https://github.com/your_username/hydra
Create a new branch
Push your commits
Submit a new Pull Request
Ways you can contribute
Translation: We want Hydra to be available to as many people as possible. Feel free to help translate to new languages or update and improve the ones that are already available on Hydra.
Code: Hydra is built with Typescript, Electron and a little bit of Python. If you want to contribute, join our Telegram!
Project Structure
torrent-client: We use libtorrent, a Python library, to manage torrent downloads
src/renderer: the UI of the application
src/main: all the logic rests here.
Build from source
Install Node.js
Ensure you have Node.js installed on your machine. If not, download and install it from nodejs.org.

Install Yarn
Yarn is a package manager for Node.js. If you haven't installed Yarn yet, you can do so by following the instructions on yarnpkg.com.

Install Node Dependencies
Navigate to the project directory and install the Node dependencies using Yarn:

cd hydra
yarn
Install Python 3.9
Ensure you have Python 3.9 installed on your machine. You can download and install it from python.org.

Install Python Dependencies
Install the required Python dependencies using pip:

pip install -r requirements.txt
Environment variables
You'll need an SteamGridDB API Key in order to fetch the game icons on installation.

Once you have it, you can copy or rename the .env.example file to .env and put it onSTEAMGRIDDB_API_KEY.

Running
Once you've got all things set up, you can run the following command to start both the Electron process and the bittorrent client:

yarn dev
Build
Build the bittorrent client
Build the bittorrent client by using this command:

python torrent-client/setup.py build
Build the Electron application
Build the Electron application by using this command:

On Windows:

yarn build:win
On Linux:

yarn build:linux
Contributors

License
Hydra is licensed under the MIT License.
