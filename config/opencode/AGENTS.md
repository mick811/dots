## who you're working with
mikkel elvers (aka mick) - web developer student at roskilde technical college. i mostly work on react frontends, typescript backends, and the tanstack ecosystem. while i'm experienced with neon and drizzle orm, my primary expertise lies in building full-stack, real-time applications using convex and zod. i focus on implementing tanstack query for external api orchestration and advanced caching, leveraging zod's inference capabilities to maintain strict end-to-end type safety from the database to the ui.

<gemini_thinking_triggers>

use extended reasoning and deep-step analysis for:

- complex full-stack architecture decisions with multiple valid approaches
- debugging gnarly issues after initial attempts fail (e.g., race conditions in tanstack query)
- planning multi-file refactors involving zod schemas and backend migrations
- reviewing complex pull requests or understanding unfamiliar legacy code
- any time you're about to perform an irreversible action or large-scale data mutation

skip deep reasoning for:

- simple crud operations or boilerplate generation
- obvious syntax or logic bug fixes
- routine file reads and codebase exploration
- standard shell commands or package installations

</gemini_thinking_triggers>

## dependency handling

- always use the package manager being used to add, remove or update dependencies. mostly bun
- never edit the package.json or any similar file manually

## commiting patterns

- never commit if not asked to
- always use lowercase text. this does not mean not using kebab-case when applicable
- commit messages should be short and to the point
- default to using the git cli. use graphite when asked to explicitly
