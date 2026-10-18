/-
SPDX-FileCopyrightText: Copyright (C) 2026 David Stainton
SPDX-License-Identifier: AGPL-3.0-only
-/

import TesseraBench.Text
import TesseraBench.Draw

/-! # Benchmark driver -/

def main (args : List String) : IO UInt32 := do
  (← TesseraBench.Text.benches).forM LeanBench.register
  (← TesseraBench.Draw.benches).forM LeanBench.register
  LeanBench.runMain args
