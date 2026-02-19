
#!/usr/bin/env python3
import sys, os, unicodedata, xml.etree.ElementTree as ET

def normalize_to_nfc(text: str) -> str:
    return unicodedata.normalize('NFC', text)

def main(inp, outp):
    # Parse
    try:
        tree = ET.parse(inp)
    except ET.ParseError as e:
        sys.stderr.write(f"XML parse error: {e}
")
        sys.exit(1)

    root = tree.getroot()

    # Basic TEI checks (namespace-aware)
    ns = {'tei': 'http://www.tei-c.org/ns/1.0'}
    header = root.find('tei:teiHeader', ns)
    if header is None:
        sys.stderr.write('Warning: teiHeader not found.
')

    # Normalize text nodes to NFC by round-tripping string serialization
    xml_str = ET.tostring(root, encoding='unicode')
    xml_str = normalize_to_nfc(xml_str)

    # Ensure output dir
    os.makedirs(os.path.dirname(outp), exist_ok=True)
    with open(outp, 'w', encoding='utf-8') as f:
        f.write(xml_str)

    print(f'Wrote normalized XML -> {outp}')

if __name__ == '__main__':
    if len(sys.argv) < 3:
        print('Usage: validate_and_normalize.py INPUT.xml OUTPUT.xml')
        sys.exit(2)
    main(sys.argv[1], sys.argv[2])
