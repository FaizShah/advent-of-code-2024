#!/usr/bin/env python3
import polars as pl
import sys

df = pl.scan_csv(
    sys.argv[1], separator=" ", has_header=False, schema_overrides={"column_1": pl.Int64, "column_4": pl.Int64}
)

result = (
    df.select(
        [
            pl.col("column_1").sort().alias("sorted_col1"),
            pl.col("column_4").sort().alias("sorted_col2"),
        ]
    )
    .with_columns((pl.col("sorted_col1") - pl.col("sorted_col2")).abs().alias("diff"))
    .select(pl.col("diff").sum().alias("result"))
)

# Collect and print the result
print(result.collect().item())
