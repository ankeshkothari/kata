class InvalidCodonError < StandardError
end

class Translation
  CODON_PROTEIN = { "AUG" => "Methionine", 
    "UUU" => "Phenylalanine", "UUC" => "Phenylalanine", 
    "UUA" => "Leucine", "UUG" => "Leucine", 
    "UCU" => "Serine", "UCC" => "Serine", "UCA" => "Serine", "UCG" => "Serine", 
    "UAU" => "Tyrosine", "UAC" => "Tyrosine", 
    "UGU" => "Cysteine", "UGC" => "Cysteine", 
    "UGG" => "Tryptophan", 
    "UAA" => "STOP", "UAG" => "STOP", "UGA" => "STOP"}

  def self.of_codon(codon)
    raise InvalidCodonError if CODON_PROTEIN.has_key?(codon) == false

    CODON_PROTEIN[codon]
  end

  def self.of_rna(strand)
    codon_array = strand.scan(/.../)
    protein_array = []

    x = 0

    loop do
      break if Translation.of_codon(codon_array[x]) == "STOP"
      protein_array << Translation.of_codon(codon_array[x])

      x += 1
      break if codon_array.size == x
    end
        
    protein_array
  end
end
