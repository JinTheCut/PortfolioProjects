
async function loadData() {
  const res = await fetch('data/sample_tokens.json');
  return res.json();
}

function render(results) {
  const div = document.getElementById('results');
  div.innerHTML = '';
  results.forEach(r => {
    const el = document.createElement('div');
    el.className = 'result';
    el.innerHTML = `<span class="token">${r.token}</span> — line ${r.line_id}`;
    div.appendChild(el);
  });
}

async function main() {
  const data = await loadData();
  document.getElementById('go').addEventListener('click', () => {
    const q = document.getElementById('q').value.trim();
    const results = data.filter(x => x.token.toLowerCase().includes(q.toLowerCase()));
    render(results);
  });
}

main();
