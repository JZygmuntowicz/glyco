# glyco

Są to skrypty, dzięki którym za pomocą narzędzia run_dbcan przeszukamy dużą liczbę genomów pod kątem CAZYmów. 

1. Instalujemy narzędzie run_dbcan według intruskcji - https://dbcan.readthedocs.io/en/latest/installation.html
2. Jeśli już mamy pliki genomów, zmieniamy ich nazwy na cyfry od 1 do n, za pomocą skryptu shell numerowanie.sh (znajduje się w katalogu)
3. Tworzymy kolejny skrypt shell na wzór pliku SBATCH_dbcan.sh, i uruchamiamy go jako batch joba.
   Jakie parametry wybrać i jak tworzyć array joba jest opisane tu - https://labstructbioinf.github.io/edi/running_jobs/#array-jobs

Program da nam dwa foldery outputowe - output i db_output. W folderze db_output mamy informacje z procesów jakie wykonał run_dbcan a w folderze output mamy zamierzone dane z CAZYmami.

4. Plik python "data_extracting" pozwoli nam połączyć outputy każdego genomu w jeden data frame.
