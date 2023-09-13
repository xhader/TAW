#!/bin/bash

echo -e "\n\e[32m1. Wprowadzenie przedmiotów do systemu:\e[0m"

declare -a subjects=(
    "- Metodologie obiektowe"
    "- Testowanie oprogramowania"
    "- Technologie i aplikacje webowe"
    "- Zarządzanie projektem informatycznym"
    "- Zaawansowane technologie bazodanowe"
    "- Technologie komponentowe i sieciowe"
)

declare -a data=(
    '{"name": "Metodologie obiektowe", "ECTS": 2, "room": 216, "exam": true}'
    '{"name": "Testowanie oprogramowania", "ECTS": 1, "room": 216, "exam": false}'
    '{"name": "Technologie i aplikacje webowe", "ECTS": 3, "room": 208, "exam": false}'
    '{"name": "Zarządzanie projektem informatycznym", "ECTS": 2, "room": 216, "exam": false}'
    '{"name": "Zaawansowane technologie bazodanowe", "ECTS": 3, "room": 208, "exam": false}'
    '{"name": "Technologie komponentowe i sieciowe", "ECTS": 2, "room": 208, "exam": true}'
)

for i in "${!subjects[@]}"; do
    echo -e "\e[94m${subjects[$i]}\e[0m"
    curl -v -X POST -H "Content-Type: application/json" -d "${data[$i]}" "http://127.0.0.1:8080/api/subjects"
    echo -e "\n"
done

echo -e "\n\e[32m2. Pobranie wszystkich przedmiotów\e[0m"
curl -v "http://127.0.0.1:8080/api/subjects"
echo -e "\n"

echo -e "\n\e[32m3. Pobranie przedmiotów, które mają egzamin\e[0m"
curl -v "http://127.0.0.1:8080/api/subjects?exam=true"
echo -e "\n"

echo -e "\e[32m4. Pobranie przedmiotów odbywających się w sali 216\e[0m"
curl -v "http://127.0.0.1:8080/api/subjects?room=216"
echo -e "\n"

echo -e "\e[32m5. Pobranie przedmiotów bez egzaminu odbywających się w sali 208\e[0m"
curl -v "http://127.0.0.1:8080/api/subjects?exam=false&room=208"
echo -e "\n"

echo -e "\e[32m6. Pobranie przedmiotu o identyfikatorze 3\e[0m"
curl -v "http://127.0.0.1:8080/api/subjects/3"
echo -e "\n"

echo -e "\e[32m7. Pobranie przedmiotu o identyfikatorze 15\e[0m"
curl -v "http://127.0.0.1:8080/api/subjects/15"
echo -e "\n"

echo -e "\e[32m8. Usunięcie przedmiotu o identyfikatorze 2\e[0m"
curl -v -X DELETE "http://127.0.0.1:8080/api/subjects/2"
echo -e "\n"

echo -e "\e[32m9. Pobranie wszystkich przedmiotów po usunięciu\e[0m"
curl -v "http://127.0.0.1:8080/api/subjects"
echo -e "\n"

echo -e "\e[32m10. Usunięcie wszystkich przedmiotów\e[0m"
curl -v -X DELETE "http://127.0.0.1:8080/api/subjects"
echo -e "\n"

echo -e "\e[32m11. Pobranie wszystkich przedmiotów po usunięciu wszystkich\e[0m"
curl -v "http://127.0.0.1:8080/api/subjects"
echo -e "\n"

echo -e "\n"