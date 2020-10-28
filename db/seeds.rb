
def load_songs
  Song.find_or_create_by(title: 'A Ti Nama', audio_file: 'a-ti-nama.mp3')
  Song.find_or_create_by(title: 'Achilipu')
  Song.find_or_create_by(title: 'Aguanile')
  Song.find_or_create_by(title: 'Ah-ah Oh-no')
  Song.find_or_create_by(title: 'Ahora Si')
  Song.find_or_create_by(title: 'Amalia Batista')
  Song.find_or_create_by(title: 'Anacaona')
  Song.find_or_create_by(title: 'Asalto de Navidad')
  Song.find_or_create_by(title: 'Bacalao')
  Song.find_or_create_by(title: 'Brujeria')
  Song.find_or_create_by(title: 'Castellano Que Bueno Baila Usted')
  Song.find_or_create_by(title: 'Coro-Miyare')
  Song.find_or_create_by(title: 'Hector Lavoe Medley')
  Song.find_or_create_by(title: 'I Want You Back')
  Song.find_or_create_by(title: 'Indestructible')
  Song.find_or_create_by(title: 'Juanito Alimania')
  Song.find_or_create_by(title: 'La Banda')
  Song.find_or_create_by(title: 'La Boda De Ella')
  Song.find_or_create_by(title: 'La Fiesta De Pilito')
  Song.find_or_create_by(title: 'La Maleta')
  Song.find_or_create_by(title: 'La Murga')
  Song.find_or_create_by(title: 'La Rebelion')
  Song.find_or_create_by(title: 'Periodico de Ayer')
  Song.find_or_create_by(title: 'Plante Bandera')
  Song.find_or_create_by(title: 'Puerto Rico')
  Song.find_or_create_by(title: 'Quitate La Mascara')
  Song.find_or_create_by(title: 'Rhumba En El Patio')
  Song.find_or_create_by(title: 'Timbalero')
  Song.find_or_create_by(title: 'Todo Tiene Su Final')
  Song.find_or_create_by(title: 'Usted Abuso')
  Song.find_or_create_by(title: 'Yesterday')
end

def main
  load_songs
end

main