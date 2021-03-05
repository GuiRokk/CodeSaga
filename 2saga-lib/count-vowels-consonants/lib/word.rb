class Word
  def vowels_count(phrase)
    vog_min = phrase.scan(/[aeiouyàáéíóúâêôãõ]/).count
    vog_mai = phrase.scan(/[AEIOUYÀÁÉÍÓÚÂÊÔÃÕ]/).count
    vog_t = vog_min+vog_mai
  end

  def consonants_count(phrase)
    cons_min = phrase.scan(/[qwrtpsdfghjklçzxcvbnm]/).count
    cons_mai = phrase.scan(/[QWRTPSDFGHJKLÇZXCVBNM]/).count
    cons_t = cons_min+cons_mai
  end
end
