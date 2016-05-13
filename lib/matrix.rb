class Matrix

  attr_reader :grid

  Node = Struct.new(:score, :arrow)

  def initialize(seq1, seq2)
    @seq1 = seq1.split("")
    @seq2 = seq2.split("")
    @seq1.unshift('-')
    @seq2.unshift('-')
    @grid = Array.new(@seq1.size) { Array.new(@seq2.size) }
  end

  def populate_scores
    
  end

  def populate_scores_top_row_col
    @grid[0][0] = Node.new(0, :start)
    (1..@seq1.length).each do |j|
      score = @grid[0][j-1].score - 2
      @grid[0][j] = Node.new(score, :none)
    end
    (1..@seq2.length).each do |i|
      score = @grid[i-1][0].score - 2
      @grid[i][0] = Node.new(score, :none)
    end
  end

  def get_score(row, col)
    @grid[row][col].score
  end

end
