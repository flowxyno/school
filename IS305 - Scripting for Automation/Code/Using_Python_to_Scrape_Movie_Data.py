# This program goes out to Wikipedia and scrapes data for movie titles input by the user

import requests
from bs4 import BeautifulSoup

def get_movie_info(movie_name):
    # URL of Wikipedia page for the movie
    url = f"https://en.wikipedia.org/wiki/{movie_name.replace(' ', '_')}"

    # Send a GET request to the URL
    response = requests.get(url)

    # Check if the request was successful and what to do if it is
    if response.status_code == 200:
        # Parse the HTML content
        soup = BeautifulSoup(response.content, 'html.parser')

        # Get movie title
        title = soup.find('h1', {'id': 'firstHeading'}).text

        # Get movie cover art
        cover_art_element = soup.find('table', class_='infobox vevent').find('td', class_='infobox-image').find('a')
        cover_art_url = cover_art_element['href'] if cover_art_element else None

        # Get movie synopsis
        synopsis_element = soup.find('span', {'id': 'Plot'})
        synopsis = synopsis_element.find_next('p').text if synopsis_element else "Synopsis not found."

        return title, cover_art_url, synopsis
    else:
        print("Error fetching data from Wikipedia.")
        return None, None, None

def save_to_file(movie_name, title, cover_art_url, synopsis):
    with open(f"{movie_name}_info.txt", "w") as file:
        file.write(f"Title: {title}\n\n")
        file.write(f"Cover Art URL: {cover_art_url}\n\n")
        file.write(f"Synopsis:\n{synopsis}\n")

def main():
    movie_name = input("Enter the movie name: ")
    title, cover_art_url, synopsis = get_movie_info(movie_name)
    if title:
        save_to_file(movie_name, title, cover_art_url, synopsis)
        print(f"Information saved to {movie_name}_info.txt")
    else:
        print("Movie information not found.")

main()