//leetcode_test.cpp
#include "googletest.h"
#include "leetcode_functions.h"

using ::testing::Return;
using ::testing::_;

class MockTestReturn{
	public:
		MOCK_METHOD0(setvar,bool(void));

};

MockTestReturn * pMockTestReTurn;
bool setvar(){

	return pMockTestReTurn->setvar();
}

extern int* twoSum(int* nums, int numsSize, int target);
extern int testCaseReturn();

TEST(IsPrimeTest,testCaseReturn){
  printf("my test case starts... \n");
  pMockTestReTurn = new MockTestReturn;

  EXPECT_CALL(*pMockTestReTurn,setvar()).WillOnce(Return(0));


  testCaseReturn();
  delete pMockTestReTurn;

}


TEST(two_sum_test,twoSum001)
{
int nums[4]={2,7,11,15};
int target = 9;
int numsSize = 4;
int* result = twoSum(nums,numsSize,target);
ASSERT_EQ(0,*result);
ASSERT_EQ(1,*(result+1));
}

