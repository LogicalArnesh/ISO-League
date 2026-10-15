# ISO League — Official Broadcast & Match Management Suite

Repo: https://github.com/LogicalArnesh/ISO-League

## Status
Config files are on `main` (`README.md`, `supabase_schema.sql`, `vercel.json`).  
The full interactive app bundle is prepared locally (public-view lockdown + scoring improvements).

## Umpire access
- **UID:** `UMPIRE`
- **Password:** `2027`

## Public viewers
- Match Center / Series / Player / Teams tabs only
- **Hidden until umpire login:** Edit Series, New Match, Complete Series, Add Player, Admin Entry, Database & Cloud, scorecard edit buttons

## Scoring (umpire entry)
- Total **runs** + **balls** + optional **4s/6s** + extras
- If boundaries are entered, runs auto-raise to at least `4×fours + 6×sixes`
- Dismissal dropdown: not out, caught, bowled, lbw, run out, stumped, hit wicket, **retired out**, retired hurt, …
- Optional “Caught by / Run out by…” note

## Supabase
1. Create a free project at https://supabase.com  
2. SQL Editor → paste & run `supabase_schema.sql`  
3. App → Umpire login → **Database & Cloud** → paste Project URL + anon key → Connect & Push

## Deploy full app
Upload the prepared `index.html` (and related files) from the agent artifacts, or clone and replace `index.html` with the full bundle, then:

```bash
git add index.html
git commit -m "Deploy full ISO League app"
git push origin main
```

Enable **GitHub Pages** (Settings → Pages → Deploy from `main`) or import the repo into **Vercel**.
