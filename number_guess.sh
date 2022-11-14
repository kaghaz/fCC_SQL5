#!/bin/bash

echo "Enter your username:"
read USERNAME

PSQL="psql -X --username=freecodecamp --dbname=guessing_game --no-align -q -t -c"

USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
#create new user
if [[ -z $USER_ID ]]
then
  INSERT_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
#welcome back existing user
else
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id='$USER_ID'")
  BEST_GAME=$($PSQL "SELECT MIN(no_guesses) FROM games WHERE user_id='$USER_ID'")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

SECRET_NUMBER=$(($RANDOM%1000 + 1))
NO_GUESSES=0
echo "Guess the secret number between 1 and 1000:"
while [[ $GUESS -ne $SECRET_NUMBER ]]
do
  read GUESS
  if [[ ! $GUESS =~ (^[0-9]+$) ]]
  then
    echo "That is not an integer, guess again:"
  else
    if [[ $GUESS -gt $SECRET_NUMBER ]]
    then
      echo "It's lower than that, guess again:"
    fi
    if [[ $GUESS -lt $SECRET_NUMBER ]]
    then
      echo "It's higher than that, guess again:"
    fi
  fi
  NO_GUESSES=$((NO_GUESSES+1))
done
echo "You guessed it in $NO_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
$($PSQL "INSERT INTO games(no_guesses, user_id, secret_number) VALUES($NO_GUESSES, $USER_ID, $SECRET_NUMBER)")
