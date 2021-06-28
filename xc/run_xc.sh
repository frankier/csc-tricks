. /path/to/singslurm2/contrib/csc.sh

CLUSC_CONF=`pwd`/clusc.json \
SIF_PATH=/scratch/project_2003833/sifs/exquisite_corpus.sif \
SNAKEFILE=/exquisite/Snakefile \
RESTART_TIMES=0 \
SING_EXTRA_ARGS="--bind `pwd`/binds/Snakefile:/exquisite/Snakefile --bind `pwd`/binds/exquisite_corpus/:/exquisite/exquisite_corpus" \
/projappl/project_2003833/singslurm2/run.sh \
data/wordfreq/small_en.msgpack.gz \
data/wordfreq/large_en.msgpack.gz \
--groups download_opus_monolingual=downloaders \
download_reddit=downloaders \
download_opus_parallel=downloaders \
download_wikipedia=downloaders \
download_newscrawl=downloaders \
download_google_1grams=downloaders \
download_google_ngrams=downloaders \
download_amazon_snap=downloaders \
download_amazon_acl10=downloaders \
download_paracrawl=downloaders \
download_jesc=downloaders \
download_jparacrawl=downloaders \
--group-components downloaders=32 \
-C EXCLUDE_TWITTER=1 \
CLEAR_DOWNLOADS=1
