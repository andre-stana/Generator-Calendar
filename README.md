# Generator-Calendar

Ce script bash, `calendar.sh`, est conçu pour générer un fichier de calendrier iCalendar (.ics) à partir d'un fichier de données textuelles. Il est particulièrement utile pour les étudiants d'Epitech qui souhaitent synchroniser leur calendrier de projets avec un calendrier numérique sur leur PC ou téléphone.

## Utilisation

1. Préparez un fichier de données textuelles (`data.txt` par exemple) avec les informations de vos événements. Chaque événement doit être structuré comme suit :

Notez que les dates doivent être au format "jour mois année" (par exemple, "1 janvier 2022").

2. Rendez le script `calendar.sh` exécutable en utilisant la commande suivante dans le terminal :

```sh
chmod 755 calendar.sh

./calendar.sh