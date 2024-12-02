#!/usr/bin/env bun

async function processFile(filename: string): Promise<number> {
  const file = Bun.file(filename);
  const reader = file.stream().getReader();

  const col1: number[] = [];
  const col2: number[] = [];
  let totalDifference = 0;

  // Read the file line-by-line
  while (true) {
    const { done, value } = await reader.read();
    if (done) break;

    // Decode the chunk into lines
    const lines = new TextDecoder().decode(value).split("\n");
    for (const line of lines) {
      if (line.trim().length === 0) continue;

      // Parse numbers separated by exactly 3 spaces
      const [a, b] = line.split(/ {3}/).map(Number);
      if (isNaN(a) || isNaN(b)) {
        throw new Error(`Invalid row: ${line}`);
      }

      col1.push(a);
      col2.push(b);
    }
  }

  // Sort both columns
  col1.sort((a, b) => a - b);
  col2.sort((a, b) => a - b);

  // Compute the sum of absolute differences
  for (let i = 0; i < col1.length; i++) {
    totalDifference += Math.abs(col1[i] - col2[i]);
  }

  return totalDifference;
}

// Main entry point
const filename = Bun.argv[2];
if (!filename) {
  console.error("Usage: ./bun_solution.ts <filename>");
  process.exit(1);
}

processFile(filename)
  .then((result) => console.log(result))
  .catch((err) => {
    console.error(err);
    process.exit(1);
  });
