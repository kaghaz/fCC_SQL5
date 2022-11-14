PSQL="psql --username=freecodecamp --dbname=guessing_game -t --no-align -c"

$($PSQL "CREATE TABLE users(user_id SERIAL PRIMARY KEY, username VARCHAR(22) NOT NULL)")
$($PSQL "CREATE TABLE games(game_id SERIAL PRIMARY KEY, no_guesses INT, user_id INT NOT NULL, secret_number INT NOT NULL)")
$($PSQL "ALTER TABLE games ADD FOREIGN KEY(user_id) REFERENCES users(user_id)")
