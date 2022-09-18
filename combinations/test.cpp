#include <gtest/gtest.h>
#include "combinations.h"

TEST(combinations_test, given_a_list_of_chars_and_comb_len_2_when_create_Combinations_create_all_combinations) {
	vector<char> arr = {'a', 'b', 'c'};
	int t = 2;
	Combinations combs(arr, t);
	
	ASSERT_EQ(true , combs.has_next());
	vector<char> comb = combs.next();
	ASSERT_EQ(comb.size(), 2);
	ASSERT_EQ(comb[0], 'a');
	ASSERT_EQ(comb[1], 'b');
	
	ASSERT_EQ(true , combs.has_next());
	comb = combs.next();
	ASSERT_EQ(comb.size(), 2);
	ASSERT_EQ(comb[0], 'a');
	ASSERT_EQ(comb[1], 'c');
	
	ASSERT_EQ(true , combs.has_next());
	comb = combs.next();
	ASSERT_EQ(comb.size(), 2);
	ASSERT_EQ(comb[0], 'b');
	ASSERT_EQ(comb[1], 'c');
	
	ASSERT_EQ(false , combs.has_next());
}

TEST(combinations_error_test, given_a_list_of_chars_and_com_len_0_or_less_than_0_when_create_Combinations_no_combs) {
	vector<char> arr = {'a', 'b', 'c'};
	try {
		Combinations combs(arr, 0);
	} catch (std::invalid_argument const& err) {
		EXPECT_EQ(err.what(), std::string("combination len can not be <= 0"));
	}
	try {
		Combinations combs(arr, -1);
	} catch (std::invalid_argument const& err) {
		EXPECT_EQ(err.what(), std::string("combination len can not be <= 0"));
	}
}

TEST(combinations_next_error_test, given_a_list_of_chars_and_comb_len_1_when_create_Combinations_create_all_combinations) {
	vector<char> arr = {'a', 'b', 'c'};
	int t = 1;
	Combinations combs(arr, t);
	
	ASSERT_EQ(true , combs.has_next());
	vector<char> comb = combs.next();
	ASSERT_EQ(comb.size(), 1);
	ASSERT_EQ(comb[0], 'a');
	
	ASSERT_EQ(true , combs.has_next());
	comb = combs.next();
	ASSERT_EQ(comb.size(), 1);
	ASSERT_EQ(comb[0], 'b');
	
	ASSERT_EQ(true , combs.has_next());
	comb = combs.next();
	ASSERT_EQ(comb.size(), 1);
	ASSERT_EQ(comb[0], 'c');
	
	ASSERT_EQ(false , combs.has_next());
	
	try {
		comb = combs.next();
	} catch (std::logic_error const& err) {
		EXPECT_EQ(err.what(), std::string("no more values"));
	}
}
