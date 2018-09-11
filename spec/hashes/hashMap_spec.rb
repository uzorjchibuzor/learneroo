require_relative '../../lib/hashes/hashMap'
describe "hashTable.keys" do
  let(:tests){[[12, 24, 125, 5, 91, 1106, 2, 1021, 29, 3536, 10],[2, 341, 73, 8265, 234004, 602, 7400000, 200000000],[2367, -65325, 134, -185007, 3291, 7832, -65326, 789, 980, -3289, 3],[4376, -345, -342, 4376, -345, 84945, 4376, -347, -26509, 4376, 84945, 84944, -26509, 896341, 4376],[10935, 12732, -3058, 1673, 14971, 5701, 18342, 4590, -10248, -11243, -5848, 14836, 7648, -3772, -8700, 19165, -16397, -13192, -18946, 14203]]}
  let(:results){["12 24 2 91 125 5 3536 1106 29 1021 10","341 234004 2 200000000 7400000 8265 73 602", "7832 -3289 980 2367 134 3291 3 -65325 -65326 789 -185007", "-342 84944 84945 84945 -345 -345 -347 896341 4376 4376 4376 4376 4376 -26509 -26509", "-3058 14971 10935 1673 -11243 14203 5701 4590 7648 19165 -13192 -18946 12732 18342 -10248 -5848 -16397 14836 -3772 -8700"]}
  it "prints the hashTable values in order" do
    tests.each_with_index do |t,idx|
      ht = HashMap.new()
      t.each{|n| ht.store(n)}
      expect(ht.keys.compact.join(" ")).to eq(results[idx])
    end
  end
end