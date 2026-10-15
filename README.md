# ISO League — Official Broadcast & Match Management Suite

Public cricket series / match / player management suite with umpire-protected data entry and Supabase cloud sync.

## Public viewers (default)
- **Match Center**, Series Hub, Player-wise stats, Teams & Players — **read only**
- No Edit Series / New Series / Complete Series / Add Player / Admin Entry / Database tabs
- Scorecards & PDF reports appear after selecting a match (fixture list includes upcoming dates)

## Umpire console
- **UID:** `UMPIRE`
- **Password:** `2027`
- Login unlocks: series management, match creation, scorecard entry, teams/players, cloud sync

## Scoring notes (umpire entry)
- Enter **total runs**, **balls**, optional **4s / 6s**, extras
- If boundaries are entered, runs are auto-raised to at least `4×fours + 6×sixes` (1s/2s still entered in total runs)
- Dismissal types: not out, caught, bowled, lbw, run out, stumped, hit wicket, **retired out**, retired hurt, etc.
- Optional “Caught by / Run out by…” note on each batter row

## Deploy
1. Enable **GitHub Pages** on `main` (or connect **Vercel** — `vercel.json` included)
2. Create a free [Supabase](https://supabase.com) project → SQL Editor → run `supabase_schema.sql`
3. In the app **Database & Cloud** tab (umpire login): paste Project URL + anon key → **Connect & Push**

## Local files
- `index.html` — full single-page app
- `supabase_schema.sql` — PostgreSQL table + RLS
- `vercel.json` — SPA rewrite for Vercel
