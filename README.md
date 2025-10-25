# EasySpell

A small app to learn foreign language pronunciation

## Tasks

Create an app that would check the spelling of most laguages.

- [ ] A module that can check spelling from recorded audio
  - [ ] Clean audio
  - [ ] Transform to morphems
  - [ ] Compare with expected
  - [ ] Bonus: streaming morphems
- [ ] An api to support the app
  - [ ] Enviroment setup:
    - [x] Make files
    - [x] UV env
    - [x] Ruff + Pyright linter
    - [x] Pre-commits
  - [ ] Postgre DataBase:
    - [ ] User table to record user data (Users)
    - [ ] Dictionary with words and their spelling (Words)
    - [ ] Table to track each user sucsess with each word (Users <-> Words)
  - [ ] Minio bucket to store voice recordings
- [ ] Front end to interact with api (AlpineJS, Tailwind, daisyUI)
  - [ ] User registration and login (basic username + pass)
  - [ ] Practice page (maybe like language cards)
  - [ ] Word knowledge (show which words the user has seen, and their progress with them)
  - [ ] Bonus: leaderboard
  - [ ] Bonus: spelling tips


## Dev setup

Create a local **.venv** and install dependencies into it:

    make setup

## Dev run

Run the compose normally:

    docker compose up

Run the compose with updated dependencies:

    docker compose up --build
