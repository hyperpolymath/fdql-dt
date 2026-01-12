-- SPDX-License-Identifier: PMPL-1.0
-- SPDX-FileCopyrightText: 2025 hyperpolymath
--
-- lakefile.lean - Lake build configuration for FQLdt

import Lake
open Lake DSL

package fqldt where
  leanOptions := #[
    ⟨`pp.unicode.fun, true⟩,  -- Use unicode λ in pretty printing
    ⟨`autoImplicit, false⟩    -- Require explicit type annotations
  ]

-- Mathlib4 for tactics (omega, simp, etc.) and proof automation
require mathlib from git
  "https://github.com/leanprover-community/mathlib4" @ "v4.15.0"

-- Main library
@[default_target]
lean_lib FqlDt where
  srcDir := "src"
  roots := #[`FqlDt]

-- Executable for CLI (future)
-- lean_exe fqldt where
--   root := `Main
--   supportInterpreter := true
