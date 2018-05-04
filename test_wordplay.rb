require 'test/unit'
require 'wordplay'

class TestWordPlay < Test::Unit::TestCase 
end

def test_sentences
	assert_equal(["a", "b", "cd", "efg"],"a.b.cd.efg.".sentences)

	test_text = q%{Hello. This is a test of sentence seperation. This is the end of the test.}
	assert_equal("This is the end of the test", test_text.sentences[2])

	def test_words
		assert_equal(%w{this is a test}, "this is a test".words)
		assert_equal(%w{these are mostly words}, "these are, mostly, words".words)

		def test_sentence.choice
			assert_equal("This is a great test", 
				WordPlay.best_sentence(['This is a test', 'This is a test','This is a test'],%w(test great this))
				assert_equal("This is a great test", WordPlay.best_sentence(['This is a great test'](%w{still the best}))
