class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method

	# Replace
	replace = 'marklar'

	# Exploded String
	arr = str.split()

	# Iterate through each Word (overwriting)
	arr.map! { |word|
	
		# The length of the Word
		len = word.length

		# If the word's length exceeds 4 (four) characters
		if len > 4

			# First Character
			fc = word[0, 1]

			# If the First Character of the word is Capital
			if /[[:upper:]]/.match( fc )
				word = replace.capitalize
			else
				word = replace
			end # Closes if the First Character of the word is Capital
		
		# The word does NOT exceed the 4 (four) character Limit
		else
			word
		end # Closes if the word's length exceeds 4 (four) characters

	} # Closes foreach Word

	# Implode ('Glue') A	rray Elements
	str = arr.join(' ')

	return str
	
  end # Closes 'Marklar'

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method

	# Initialize Previous Fibonacci Number
	current 	= 1
	prev 		= 0

	# Initialize Sum
	sum 		= 0

	# Create a Fibonacci Sequence
	for i in 1..nth do

		# Memorize what's gonna be the Previous number (for the NEXT iteration)
		memory 		= 		current

		# If Current is even
		if current.modulo(2) == 0

			sum += current

		end # Closes if Current is even

		# Update the Current Number (for the next Iteration)
		current 	= 		current + prev

		# Update the Previous Number (for the next Iteration)
		prev = memory

	end # Closes create a Fibonacci Sequence

	return sum

  end # Closes 'Even Fibonacci'

end # Closes 'Exercise'
