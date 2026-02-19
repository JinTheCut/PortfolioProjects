
# Java XML Reader (Starter)

Small Java program that reads the sample TEI/XML and prints basic counts.

## Build and run
```bash
javac -d out src/Main.java
java -cp out Main sample_data/sample_tei.xml
```

## What to extend next
- Use a proper XML library (e.g., DOM/SAX with namespace support)
- Count elements, extract header metadata, emit JSON
- Build a REST API in Spring Boot later
