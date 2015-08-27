#!/bin/sh
# quoted from
# http://d.hatena.ne.jp/ruedap/20110426/vim_ref_plugin_ruby_reference_search_tool_refe2

uri=http://doc.okkez.net/archives/201107/ruby-refm-1.9.2-dynamic-20110729.tar.gz
path=$HOME/docs/reference
refe=$HOME/bin/refe

tmp1=${uri##*/}
tmp2=${tmp1%.*}
refs=${tmp2%.*}

mkdir -p $path && cd $path

wget $uri -O $refs.tgz && tar zxf $refs.tgz && rm $refs.tgz

echo "#/bin/sh" > $refe
echo "exec ruby -Ke -I $path/$refs/bitclust/lib $path/$refs/bitclust/bin/refe.rb -d $path/$refs/db-1_8_7" '$@' >> $refe
chmod u+x $refe
