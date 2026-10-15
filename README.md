# ISO League — Official Broadcast & Match Management Suite

**Live sites** (auto-deploy from this repo):
- https://isopremierleagueoffical.vercel.app
- https://isoleague.vercel.app
- https://isopremierleague.vercel.app
- https://isoleagueofficial.vercel.app

## How it works (permanent setup)
- `index.html` is a tiny reliable loader.
- It downloads the 12 gzipped chunks (`c00.txt`–`c11.txt`) from GitHub raw (bypasses any Vercel edge issues).
- The full 221 KB app (public lockdown + scoring + Supabase) is reconstructed in the browser and starts instantly.

No more “Failed to fetch”. No external dependencies for the payload.

## Umpire access
- **UID:** `UMPIRE`
- **Password:** `2027`

## Public viewers
Only Match Center / Series / Player / Teams tabs are visible.  
All edit / admin / new-match / add-player buttons stay hidden until umpire login.

## Scoring (umpire)
- Runs + balls + optional 4s/6s + extras
- Boundaries auto-contribute to total runs
- Dismissal types include **retired out** + fielder note

## Supabase
1. Create free project at supabase.com  
2. Run `supabase_schema.sql` in SQL Editor  
3. Umpire login → Database & Cloud → paste URL + anon key → Connect & Push

## Files
- `index.html` – permanent loader
- `c00.txt` … `c11.txt` – app payload (do not delete)
- `supabase_schema.sql` – database table
- `vercel.json` – clean static config
