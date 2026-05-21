for f in *.CDS.fa; do
  line="2"

  awk -v line="$line" '
  /^>/ {
    # transcript ID (first field)
    match($0, /^>[^ ]+/, tid)
    gsub(/\.1$/, "_1", tid[0])

    # gene_name only
    match($0, /gene_name=[^;]+/, gene)

    print tid[0] " " gene[0] " species=Dsim line=" line
    next
  }
  { print }
  ' "$f" > "${line}.CDS.fixed.fa"
done