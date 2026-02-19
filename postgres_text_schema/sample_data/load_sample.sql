
INSERT INTO authors(name) VALUES ('Anon');
INSERT INTO works(author_id, title) VALUES (1, 'Sample Greek Text');
INSERT INTO lines(work_id, n, text) VALUES
  (1, 1, 'Ἑλλάς λόγος. λόγος ἀνήρ.'),
  (1, 2, 'Logos and reason: λογος.');

-- Minimal tokenization example
INSERT INTO tokens(line_id, position, token) VALUES
  (1, 1, 'Ἑλλάς'), (1, 2, 'λόγος'), (1, 3, 'λόγος'), (1, 4, 'ἀνήρ'),
  (2, 1, 'Logos'), (2, 2, 'and'), (2, 3, 'reason'), (2, 4, 'λογος');
