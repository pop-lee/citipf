package com.citipf.liyunpeng.app
{
    public class RandomOrder
    {
        public static function randomOrder (targetArray : Array) : Array
        {
            var arrayLength : Number = targetArray.length
            //
            //先创建一个正常顺序的数组
            var tempArray1 : Array = []
            for (var i:int = 0; i < arrayLength; i++)
            {
                tempArray1 [i] = i
            }
            //
            //再根据上一个数组创建一个随机乱序的数组
            var tempArray2 : Array = []
            for (var j:int = 0; j < arrayLength; j++)
            {
                //从正常顺序数组中随机抽出元素
                tempArray2 [j] = tempArray1.splice (Math.floor (Math.random () * tempArray1.length) , 1) 
            }
            //
            //最后创建一个临时数组存储 根据上一个乱序的数组从targetArray中取得数据
            var tempArray3 : Array = []
            for (var k:int = 0; k < arrayLength; k ++)
            {
                tempArray3 [k] = targetArray [tempArray2 [k]]
            }
            //
            //返回最后得出的数组
            return tempArray3
        }

    }
}