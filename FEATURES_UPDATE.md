# ISO League Updates (2026-10-15)

## Deployed code location
Local build with all features: contact agent for full index.html if Netlify deploy token expired.

## Dismissal rules (cricket-correct)
- **Bowled / LBW / Hit wicket / Wrong 6**: bowler only; credits bowler wicket
- **Caught**: fielder + bowler; credits bowler wicket
- **Stumped**: fielder (WK) + bowler; credits bowler wicket
- **Run out**: fielder (+ optional bowler note); does NOT credit bowler wicket
- **Retired hurt**: NOT a wicket; no bowler/fielder

## Match setup (umpire)
- Toss won by + chose bat/bowl (auto-fills toss text)
- Captain / Vice-captain per team
- Squad checklists (players stay in DB; tick for this match)
- Common players can be selected for either team

## Live ball-by-ball
- Log over.ball, runs, extras, wicket type
- Save & publish to cloud

## Best performances
- Best batting / bowling on match view
- Series all-time highs shown when matches exist

## Match PDF
- If multiple matches, prompts for which match number to export

## Public cloud
- DEFAULT_CLOUD_URL + DEFAULT_CLOUD_KEY embedded so all visitors pull live data

Site: https://isopremierleague.netlify.app
