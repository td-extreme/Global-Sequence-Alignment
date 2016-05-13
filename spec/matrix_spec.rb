require 'rspec'
require 'matrix'

describe Matrix do

  let(:matrix3x3)  { Matrix.new("ATG", "GGT") }
  let(:matrix4x5)  { Matrix.new("ATGT", "GTGTA") }

  describe "constructor" do

    it "creates a matrix of size 3 by 3" do
      expect(matrix3x3.grid.size).to eq(4)
      matrix3x3.grid.each do | sub_array |
        expect(sub_array.size).to eq(4)
      end
    end
  end

  describe "populate_scores" do
    describe "The first row starts with 0 and counts down by -2" do 
      it "gird[0][0] score should = 0" do
        matrix3x3.populate_scores_top_row_col
        expect(matrix3x3.get_score(0,0)).to eq(0)
      end
      it "grid[0][1] score should = -2" do
        matrix3x3.populate_scores_top_row_col
        expect(matrix3x3.get_score(0,1)).to eq(-2)
      end
      it "grid[0][2] score should = -4" do
        matrix3x3.populate_scores_top_row_col
        expect(matrix3x3.get_score(0,2)).to eq(-4)
      end
    end
    
    describe "The first col starts with 0 and counts down by -2" do 
      it "gird[1][0] score should = 0" do
        matrix3x3.populate_scores_top_row_col
        expect(matrix3x3.get_score(1,0)).to eq(-2)
      end
      it "grid[2][1] score should = -2" do
        matrix3x3.populate_scores_top_row_col
        expect(matrix3x3.get_score(2,0)).to eq(-4)
      end
    end
  end
end
