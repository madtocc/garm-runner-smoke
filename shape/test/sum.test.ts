import { expect, test } from 'vitest';
import { transformSync } from 'esbuild';

test('native esbuild binary runs on this architecture', () => {
  expect(transformSync('const a: number = 1; export { a };', { loader: 'ts' }).code).toContain('const a = 1');
});
