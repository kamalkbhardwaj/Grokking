# Agent Guide: Creating a New Swift File

This short guide explains how to add a new Swift solution file using `LeetCode/GetStarted/RichestCustomer.swift` as the reference for structure and style.

## Policy: No Solutions in Repo
- Do not provide full solutions in committed files.
- Include the problem docs and a clear API only.
- Leave a stub with a TODO and `fatalError("Implement me")`.

## Where to Put the File
- Location: `LeetCode/GetStarted/` (or the matching difficulty/topic folder under `LeetCode/`).
- Naming: Match type name and filename exactly, e.g. `TwoSum.swift` defines `struct TwoSum { ... }`.

## File Structure (Mirror RichestCustomer.swift)
- Header comment: Filename, project, author/date lines.
- Import: `import Foundation`.
- Type: Use a `struct` whose name matches the filename.
- Problem doc: Add a `/** ... */` block with problem title, short description, and link.
- API: Provide a clear entry method (e.g., `func execute(...) -> ...`). Do not provide solutions.

## Create the File (Two Options)
- Xcode:
  - In the Project Navigator, right‑click the target folder (e.g., `LeetCode/GetStarted/`) → `New File...` → `Swift File`.
  - Name it (e.g., `TwoSum.swift`) and ensure it’s added to the `Grokking` target.
- CLI:
  - Copy the reference file, then edit:
    - `cp LeetCode/GetStarted/RichestCustomer.swift LeetCode/GetStarted/TwoSum.swift`
    - Open the new file and update header, struct name, docs, and code.
    - Do not implement the algorithm; leave the stub with TODO + `fatalError`.
    - Add the file to the `Grokking` target in Xcode if needed.

## Template (Start Here)
```swift
//
//  ProblemName.swift
//  Grokking
//
//  Created by <Your Name> on <DD/MM/YY>.
//

import Foundation

struct ProblemName {
    /**
     LeetCode ####: Problem Title
     --------------------------------------
     Briefly describe the problem and approach.

     Link: https://leetcode.com/problems/<slug>/
     */
    
    static func execute(/* inputs */) -> /* output */ {
        // TODO: Implement the solution
        fatalError("Implement me")
    }
}
```

## Style Notes (from RichestCustomer.swift)
- Use explicit types for clarity (e.g., `var maxSum: Int = 0`).
- Keep naming descriptive and concise.
- Prefer straightforward loops when clearest; optimize only if needed.
- Keep the doc comment informative but brief.

## Example Reference
- See: `LeetCode/GetStarted/RichestCustomer.swift`
  - Shows header format, `Foundation` import, `struct` naming, doc block, and a simple public method.

## Quick Sanity Check
- Build the project in Xcode to confirm the file compiles.
- If you add a new public method, consider a small invocation in a scratch/test file or playground for manual verification.

## Commit Example
```bash
# Stage guide and project updates
git add AGENT.md LeetCode Grokking.xcodeproj/project.pbxproj

# Commit with a concise title for these fixes
git commit -m "docs(agent): fix paths; add no-solution policy"
```
