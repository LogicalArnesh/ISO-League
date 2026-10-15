# Deploy notes

The full `index.html` application bundle is ready.

**Umpire login:** UID `UMPIRE` / password `2027`

**Public view:** Admin tabs, edit series, add player, and scorecard edit controls are hidden until umpire login.

**Supabase:** Run `supabase_schema.sql` in your project SQL editor, then paste URL + anon key in the app (Database tab after umpire login).

If `index.html` is still the placeholder, upload the file from the local artifacts or re-run the deploy with the gzip loader version.
