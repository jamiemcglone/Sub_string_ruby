require 'sub_string'

describe SubString do

    before do
        @SubString = SubString.new()
    end

    describe "sub string" do
        context "returns correct values" do
            it "handles one word" do
                dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
                expect(@SubString.sub_string("below", dictionary)).to eq({"below" => 1, "low" => 1})
            end
            it "returns correct values with multiple words" do
                dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
                expect(@SubString.sub_string("Howdy partner, sit down! How's it going?", dictionary)).to eq({ "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 })
            end

            it "returns correct values again with more words" do
                dictionary = ["Hi", "Thing", "Woah", "Hello", "Morning"]
                expect(@SubString.sub_string("hi what a morning thing", dictionary)).to eq({"hi" => 2, "thing" => 1, "morning" => 1})
            end
        end
    end
end