module Effects
  def self.reverse
    ->(words) { words.reverse }
  end

  def self.echo(rate)
    ->(words) do
      words.each_char.map { |c| c == ' ' ? c : c * rate }.join
    end
  end
end