#!/usr/bin/env -S deno run --allow-read

// Read the file and process the data
async function processFile(filename: string): Promise<number> {
  const text = await Deno.readTextFile(filename);
  const rows = text.trim().split("\n");

  // Parse rows into two separate columns
  const col1: number[] = [];
  const col2: number[] = [];

  for (const row of rows) {
    const [a, b] = row.split(/\s+/).map(Number);
    col1.push(a);
    col2.push(b);
  }

  // Sort both columns
  col1.sort((a, b) => a - b);
  col2.sort((a, b) => a - b);

  // Compute the sum of absolute differences
  return col1.reduce((sum, a, i) => sum + Math.abs(a - col2[i]), 0);
}

// Main entry point
if (import.meta.main) {
  const filename = Deno.args[0];
  if (!filename) {
    console.error("Usage: ./deno_solution.ts <filename>");
    Deno.exit(1);
  }

  processFile(filename)
    .then((result) => console.log(result))
    .catch((err) => {
      console.error(err);
      Deno.exit(1);
    });
}

