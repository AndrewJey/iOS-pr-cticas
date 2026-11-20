import test from 'node:test';
import assert from 'node:assert/strict';
import fs from 'node:fs';
import path from 'node:path';
import vm from 'node:vm';
import { fileURLToPath } from 'node:url';

const dir = path.dirname(fileURLToPath(import.meta.url));
test('iOS playground JS is valid and Swift store exists', () => {
  const html = fs.readFileSync(path.join(dir, '..', 'index.html'), 'utf8');
  const m = html.match(/<script>([\s\S]*?)<\/script>/);
  assert.ok(m);
  new vm.Script(m[1]);
  const swift = fs.readFileSync(path.join(dir, '..', '..', 'Sources', 'PracticeTaskStore.swift'), 'utf8');
  assert.ok(swift.includes('final class PracticeTaskStore'));
});
