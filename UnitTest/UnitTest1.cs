using System;
using UnitTest;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using VolhardingWebv3;

namespace UnitTest
{
    [TestClass]
    public class UnitTest1
    {
        VolhardingWebv3.Classes.Mededeling mededeling = new VolhardingWebv3.Classes.Mededeling();
        [TestMethod]
        public void TestMethod1()
        {
            string[] lijst = mededeling.GeefMededlingen();
            int expected = 4;
            int actual;
            actual = lijst.GetLength(4);
            Assert.AreEqual(expected, actual);
        }
    }
}
