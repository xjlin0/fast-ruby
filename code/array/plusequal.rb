require 'benchmark/ips'

Benchmark.ips do |bm|
    bm.report 'array#concat' do
          array = []
              array.concat  [*1..1000]
                end
      bm.report 'array#+' do
            array = []
                array += [*1..1000]
                  end
        bm.compare!
end

