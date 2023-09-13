# Wynik działania systemu:

## 1. Wprowadzenie przedmiotów do systemu:
- **Metodologie obiektowe**
```sh
*   Trying 127.0.0.1:8080...
* Connected to 127.0.0.1 (127.0.0.1) port 8080 (#0)
> POST /api/subjects HTTP/1.1
> Host: 127.0.0.1:8080
> User-Agent: curl/7.81.0
> Accept: */*
> Content-Type: application/json
> Content-Length: 71
{"name": "Metodologie obiektowe", "ECTS": 2, "room": 216, "exam": true}
>
* Mark bundle as not supporting multiuse
< HTTP/1.1 200
< Content-Length: 0
< Date: Wed, 13 Sep 2023 20:35:08 GMT
<
* Connection #0 to host 127.0.0.1 left intact
```

- **Testowanie oprogramowania**
```sh
*   Trying 127.0.0.1:8080...
* Connected to 127.0.0.1 (127.0.0.1) port 8080 (#0)
> POST /api/subjects HTTP/1.1
> Host: 127.0.0.1:8080
> User-Agent: curl/7.81.0
> Accept: */*
> Content-Type: application/json
> Content-Length: 76
{"name": "Testowanie oprogramowania", "ECTS": 1, "room": 216, "exam": false}
>
* Mark bundle as not supporting multiuse
< HTTP/1.1 200
< Content-Length: 0
< Date: Wed, 13 Sep 2023 20:35:08 GMT
<
* Connection #0 to host 127.0.0.1 left intact
```

- **Technologie i aplikacje webowe**
```sh
*   Trying 127.0.0.1:8080...
* Connected to 127.0.0.1 (127.0.0.1) port 8080 (#0)
> POST /api/subjects HTTP/1.1
> Host: 127.0.0.1:8080
> User-Agent: curl/7.81.0
> Accept: */*
> Content-Type: application/json
> Content-Length: 81
{"name": "Technologie i aplikacje webowe", "ECTS": 3, "room": 208, "exam": false}
>
* Mark bundle as not supporting multiuse
< HTTP/1.1 200
< Content-Length: 0
< Date: Wed, 13 Sep 2023 20:35:08 GMT
<
* Connection #0 to host 127.0.0.1 left intact
```

- **Zarządzanie projektem informatycznym**
```sh
*   Trying 127.0.0.1:8080...
* Connected to 127.0.0.1 (127.0.0.1) port 8080 (#0)
> POST /api/subjects HTTP/1.1
> Host: 127.0.0.1:8080
> User-Agent: curl/7.81.0
> Accept: */*
> Content-Type: application/json
> Content-Length: 88
{"name": "Zarządzanie projektem informatycznym", "ECTS": 2, "room": 216, "exam": false}
>
* Mark bundle as not supporting multiuse
< HTTP/1.1 200
< Content-Length: 0
< Date: Wed, 13 Sep 2023 20:35:08 GMT
<
* Connection #0 to host 127.0.0.1 left intact
```
- **Zaawansowane technologie bazodanowe**
```sh
*   Trying 127.0.0.1:8080...
* Connected to 127.0.0.1 (127.0.0.1) port 8080 (#0)
> POST /api/subjects HTTP/1.1
> Host: 127.0.0.1:8080
> User-Agent: curl/7.81.0
> Accept: */*
> Content-Type: application/json
> Content-Length: 86
{"name": "Zaawansowane technologie bazodanowe", "ECTS": 3, "room": 208, "exam": false}
>
* Mark bundle as not supporting multiuse
< HTTP/1.1 200
< Content-Length: 0
< Date: Wed, 13 Sep 2023 20:35:08 GMT
<
* Connection #0 to host 127.0.0.1 left intact
```
- **Technologie komponentowe i sieciowe**
```sh
*   Trying 127.0.0.1:8080...
* Connected to 127.0.0.1 (127.0.0.1) port 8080 (#0)
> POST /api/subjects HTTP/1.1
> Host: 127.0.0.1:8080
> User-Agent: curl/7.81.0
> Accept: */*
> Content-Type: application/json
> Content-Length: 85
{"name": "Technologie komponentowe i sieciowe", "ECTS": 2, "room": 208, "exam": true}
>
* Mark bundle as not supporting multiuse
< HTTP/1.1 200
< Content-Length: 0
< Date: Wed, 13 Sep 2023 20:35:08 GMT
<
* Connection #0 to host 127.0.0.1 left intact
```
## 2. Pobranie wszystkich przedmiotów
```sh
*   Trying 127.0.0.1:8080...
* Connected to 127.0.0.1 (127.0.0.1) port 8080 (#0)
> GET /api/subjects HTTP/1.1
> Host: 127.0.0.1:8080
> User-Agent: curl/7.81.0
> Accept: */*
>
* Mark bundle as not supporting multiuse
< HTTP/1.1 200
< Content-Type: application/json
< Transfer-Encoding: chunked
< Date: Wed, 13 Sep 2023 20:55:20 GMT
<
* Connection #0 to host 127.0.0.1 left intact
[{"id":1,"name":"Metodologie obiektowe","ECTS":2,"room":216,"exam":true},{"id":2,"name":"Testowanie oprogramowania","ECTS":1,"room":216,"exam":false},{"id":3,"name":"Technologie i aplikacje webowe","ECTS":3,"room":208,"exam":false},{"id":4,"name":"Zarządzanie projektem informatycznym","ECTS":2,"room":216,"exam":false},{"id":5,"name":"Zaawansowane technologie bazodanowe","ECTS":3,"room":208,"exam":false},{"id":6,"name":"Technologie komponentowe i sieciowe","ECTS":2,"room":208,"exam":true}]
```
## 3. Pobranie przedmiotów, które mają egzamin
```sh
*   Trying 127.0.0.1:8080...
* Connected to 127.0.0.1 (127.0.0.1) port 8080 (#0)
> GET /api/subjects?exam=true HTTP/1.1
> Host: 127.0.0.1:8080
> User-Agent: curl/7.81.0
> Accept: */*
>
* Mark bundle as not supporting multiuse
< HTTP/1.1 200
< Content-Type: application/json
< Transfer-Encoding: chunked
< Date: Wed, 13 Sep 2023 20:55:20 GMT
<
* Connection #0 to host 127.0.0.1 left intact
[{"id":1,"name":"Metodologie obiektowe","ECTS":2,"room":216,"exam":true},{"id":6,"name":"Technologie komponentowe i sieciowe","ECTS":2,"room":208,"exam":true}]
```
## 4. Pobranie przedmiotów odbywających się w sali 216
```sh
*   Trying 127.0.0.1:8080...
* Connected to 127.0.0.1 (127.0.0.1) port 8080 (#0)
> GET /api/subjects?room=216 HTTP/1.1
> Host: 127.0.0.1:8080
> User-Agent: curl/7.81.0
> Accept: */*
>
* Mark bundle as not supporting multiuse
< HTTP/1.1 200
< Content-Type: application/json
< Transfer-Encoding: chunked
< Date: Wed, 13 Sep 2023 20:55:20 GMT
<
* Connection #0 to host 127.0.0.1 left intact
[{"id":1,"name":"Metodologie obiektowe","ECTS":2,"room":216,"exam":true},{"id":2,"name":"Testowanie oprogramowania","ECTS":1,"room":216,"exam":false},{"id":4,"name":"Zarządzanie projektem informatycznym","ECTS":2,"room":216,"exam":false}]

```
## 5. Pobranie przedmiotów bez egzaminu odbywających się w sali 208
```sh
*   Trying 127.0.0.1:8080...
* Connected to 127.0.0.1 (127.0.0.1) port 8080 (#0)
> GET /api/subjects?exam=false&room=208 HTTP/1.1
> Host: 127.0.0.1:8080
> User-Agent: curl/7.81.0
> Accept: */*
>
* Mark bundle as not supporting multiuse
< HTTP/1.1 200
< Content-Type: application/json
< Transfer-Encoding: chunked
< Date: Wed, 13 Sep 2023 20:55:20 GMT
<
* Connection #0 to host 127.0.0.1 left intact
[{"id":3,"name":"Technologie i aplikacje webowe","ECTS":3,"room":208,"exam":false},{"id":5,"name":"Zaawansowane technologie bazodanowe","ECTS":3,"room":208,"exam":false}]
```
## 6. Pobranie przedmiotu o identyfikatorze 3
```sh
*   Trying 127.0.0.1:8080...
* Connected to 127.0.0.1 (127.0.0.1) port 8080 (#0)
> GET /api/subjects/3 HTTP/1.1
> Host: 127.0.0.1:8080
> User-Agent: curl/7.81.0
> Accept: */*
>
* Mark bundle as not supporting multiuse
< HTTP/1.1 200
< Content-Type: application/json
< Transfer-Encoding: chunked
< Date: Wed, 13 Sep 2023 20:55:20 GMT
<
* Connection #0 to host 127.0.0.1 left intact
{"id":3,"name":"Technologie i aplikacje webowe","ECTS":3,"room":208,"exam":false}
```
## 7. Pobranie przedmiotu o identyfikatorze 15
```sh
*   Trying 127.0.0.1:8080...
* Connected to 127.0.0.1 (127.0.0.1) port 8080 (#0)
> GET /api/subjects/15 HTTP/1.1
> Host: 127.0.0.1:8080
> User-Agent: curl/7.81.0
> Accept: */*
>
* Mark bundle as not supporting multiuse
< HTTP/1.1 404
< Content-Length: 0
< Date: Wed, 13 Sep 2023 20:55:20 GMT
<
* Connection #0 to host 127.0.0.1 left intact
```

## 8. Usunięcie przedmiotu o identyfikatorze 2
```sh
*   Trying 127.0.0.1:8080...
* Connected to 127.0.0.1 (127.0.0.1) port 8080 (#0)
> DELETE /api/subjects/2 HTTP/1.1
> Host: 127.0.0.1:8080
> User-Agent: curl/7.81.0
> Accept: */*
>
* Mark bundle as not supporting multiuse
< HTTP/1.1 204
< Date: Wed, 13 Sep 2023 20:55:20 GMT
<
* Connection #0 to host 127.0.0.1 left intact
```
## 9. Pobranie wszystkich przedmiotów po usunięciu
```sh
*   Trying 127.0.0.1:8080...
* Connected to 127.0.0.1 (127.0.0.1) port 8080 (#0)
> GET /api/subjects HTTP/1.1
> Host: 127.0.0.1:8080
> User-Agent: curl/7.81.0
> Accept: */*
>
* Mark bundle as not supporting multiuse
< HTTP/1.1 200
< Content-Type: application/json
< Transfer-Encoding: chunked
< Date: Wed, 13 Sep 2023 20:55:20 GMT
<
* Connection #0 to host 127.0.0.1 left intact
[{"id":1,"name":"Metodologie obiektowe","ECTS":2,"room":216,"exam":true},{"id":3,"name":"Technologie i aplikacje webowe","ECTS":3,"room":208,"exam":false},{"id":4,"name":"Zarządzanie projektem informatycznym","ECTS":2,"room":216,"exam":false},{"id":5,"name":"Zaawansowane technologie bazodanowe","ECTS":3,"room":208,"exam":false},{"id":6,"name":"Technologie komponentowe i sieciowe","ECTS":2,"room":208,"exam":true}]
```
## 10. Usunięcie wszystkich przedmiotów
```sh
*   Trying 127.0.0.1:8080...
* Connected to 127.0.0.1 (127.0.0.1) port 8080 (#0)
> DELETE /api/subjects HTTP/1.1
> Host: 127.0.0.1:8080
> User-Agent: curl/7.81.0
> Accept: */*
>
* Mark bundle as not supporting multiuse
< HTTP/1.1 200
< Content-Length: 0
< Date: Wed, 13 Sep 2023 20:55:20 GMT
<
* Connection #0 to host 127.0.0.1 left intact
```
## 11. Pobranie wszystkich przedmiotów po usunięciu wszystkich
```sh
*   Trying 127.0.0.1:8080...
* Connected to 127.0.0.1 (127.0.0.1) port 8080 (#0)
> GET /api/subjects HTTP/1.1
> Host: 127.0.0.1:8080
> User-Agent: curl/7.81.0
> Accept: */*
>
* Mark bundle as not supporting multiuse
< HTTP/1.1 200
< Content-Type: application/json
< Transfer-Encoding: chunked
< Date: Wed, 13 Sep 2023 20:55:20 GMT
<
* Connection #0 to host 127.0.0.1 left intact
[]
```
## Uruchomienie


Wszystkie poniższe komendy należy wykonać z poziomu repozytorium:

1. Zainstalować `docker` na systemie operacyjnym
2. Upewnić się, że `docker ps` działa z poziomu użytkownika
3. Zbudować obraz poprzez uruchomienie `build.sh`
4. Uruchomić API REST poprzez uruchomienie `run.sh`
5. Uruchomić testy: `tests.sh`
6. Testy powinny dać wynik widoczny w sekcji Wynik działania systemu

## Scenariusz do raportu

1. Wprowadzenie przedmiotów do systemu w podanej kolejności:
- Nazwa: Metodologie obiektowe, ECTS: 2, Sala: 216, Egzamin: tak,
- Nazwa: Testowanie oprogramowania, ECTS: 1, Sala: 216, Egzamin: nie,
- Nazwa: Technologie i aplikacje webowe, ECTS: 3, Sala: 208, Egzamin: nie,
- Nazwa: Zarządzanie projektem informatycznym, ECTS: 2, Sala: 216, Egzamin: nie,
- Nazwa: Zaawansowane technologie bazodanowe, ECTS: 3, Sala: 208, Egzamin: nie,
- Nazwa: Technologie komponentowe i sieciowe, ECTS: 2, Sala: 208, Egzamin: tak
2. Pobranie wszystkich przedmiotów,
3. Pobranie przedmiotów, które mają egzamin,
4. Pobranie przedmiotów, które odbywają się w sali 216,
5. Pobranie przedmiotów które nie mają egzaminu i odbywają się w sali 208,
6. Pobranie przedmiotu o identyfikatorze 3,
7. Pobranie przedmiotu o identyfikatorze 15,
8. Usunięcie przedmiotu o identyfikatorze 2,
9. Pobranie wszystkich przedmiotów,
10. Usunięcie wszystkich przedmiotów,
11. Pobranie wszystkich przedmiotów.
## Wymagania

Warunkiem zaliczenia jest przygotowanie aplikacji serwerowej opartej o REST API oraz raportu komunikacji z tym serwerem według podanego scenariusza.
Raport komunikacji z serwerem powinien zawierać zestawienie wywołanych żądań do serwera wraz z adresem zasobu, metodą http, body żądania,
nagłówkami żądania oraz odpowiedzią serwera na wysłane żądanie w postaci kodu odpowiedzi http oraz body odpowiedzi.

Przykładowy opis żądania z ćwiczeń:
Metoda: POST
Adres zasobu: http://localhost:8080/api/activities
Nagłówki: Content-Type: application/json
Request Body:
{
"nazwa": "programowanie",
"priorytet": 10
}
Odpowiedź:
HTTP Code: 200 OK
Body: brak

W ramach projektu należy przygotować REST API bazujące na zasobie przedmiotów na studia. Każdy przedmiot na studia powinien zawierać informacje o:
- nazwie przedmiotu,
- punktach ects,
- numerze sali, w której odbywają się zajęcia,
- informacji czy przedmiot kończy się egzaminem.

Serwer powinien umożliwiać wprowadzanie nowych przedmiotów, pobieranie przedmiotów oraz usuwanie przedmiotów.
Ocena za zaliczenie będzie uzależniona od złożoności przygotowanego rozwiązania.
W podstawowej wersji serwer powinien umożliwiać wprowadzanie nowego przedmiotu, pobieranie wszystkich przedmiotów
i usuwanie wszystkich przedmiotów. W rozszerzonej wersji serwer powinien pozwalać na filtrację pod kątem informacji
o tym czy przedmiot kończy się egzaminem oraz o filtrację po numerze sali, w której obywają się zajęcia. Serwer
powinien także udostępniać możliwość pobierania konkretnego zasobu w oparciu o identyfikator oraz usuwanie konkretnego
przedmiotu w oparciu o identyfikator.