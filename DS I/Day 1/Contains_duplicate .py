class Solution:
    def containsDuplicate(self, nums: List[int]) -> bool:
        arr={}
        for i in nums:
            if i in arr:
                return True
            else:
                arr[i]=1
        return False