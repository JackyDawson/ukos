#!/bin/bash

# Wyświetlanie menu
echo "Wybierz operację:"
echo "1. Dodawanie"
echo "2. Odejmowanie"
echo "3. Mnożenie"
echo "4. Dzielenie"
read -p "Wybierz numer operacji (1-4): " choice

# Wczytywanie liczb
read -p "Podaj pierwszą liczbę: " number1
read -p "Podaj drugą liczbę: " number2

# Wykonanie operacji
case $choice in

    1) result=$(echo "$number1 + $number2" | bc); echo "Wynik dodawania: $result" ;;

    2) result=$(echo "$number1 - $number2" | bc); echo "Wynik odejmowania: $result" ;;

    3) result=$(echo "$number1 * $number2" | bc); echo "Wynik mnożenia: $result" ;;

    4) if [ "$number2" -ne 0 ]; then
            result=$(echo "scale=2; $number1 / $number2" | bc); 
            echo "Wynik dzielenia: $result"
        else
            echo "Błąd: nie można dzielić przez zero."
        fi
        ;;
    *) echo "Nieprawidłowy wybór." ;;
esac
