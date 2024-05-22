# Variablen
CC = gcc
CFLAGS = -Wall -Wextra -O2
TARGET = lusc-c
DESTDIR = /usr/bin

# Standardziel: das Programm kompilieren
all: $(TARGET)

# Kompilieren des Programms
$(TARGET): main.c
	$(CC) $(CFLAGS) -o $(TARGET) main.c

# Installationsziel: das Programm nach /usr/bin kopieren
install: $(TARGET)
	install -Dm755 $(TARGET) $(DESTDIR)/$(TARGET)

# Deinstallationsziel: die Datei aus /usr/bin entfernen
uninstall:
	rm -f $(DESTDIR)/$(TARGET)

# Clean-Ziel: die erstellte Binärdatei entfernen
clean:
	rm -f $(TARGET)

.PHONY: all install uninstall clean

