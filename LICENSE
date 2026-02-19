
#!/usr/bin/env python3
import sys, os, re, xml.etree.ElementTree as ET

NS = {'tei': 'http://www.tei-c.org/ns/1.0'}

WORD_RE = re.compile(r"[\wͰ-Ͽἀ-῿]+", re.UNICODE)


def extract_text(elem):
    # Concatenate all text inside <text>
    texts = []
    for t in elem.itertext():
        texts.append(t)
    return '
'.join(texts)


def main(inp, outp):
    tree = ET.parse(inp)
    root = tree.getroot()
    text = root.find('.//tei:text', NS)
    if text is None:
        sys.stderr.write('No <text> element found.
')
        sys.exit(1)

    full = extract_text(text)
    tokens = WORD_RE.findall(full)

    os.makedirs(os.path.dirname(outp), exist_ok=True)
    with open(outp, 'w', encoding='utf-8') as f:
        for tok in tokens:
            f.write(tok + '
')

    print(f'Wrote tokens -> {outp} ({len(tokens)} tokens)')

if __name__ == '__main__':
    if len(sys.argv) < 3:
        print('Usage: tei_to_tokens.py INPUT.xml OUTPUT.txt')
        sys.exit(2)
    main(sys.argv[1], sys.argv[2])
