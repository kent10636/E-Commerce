using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using DAL;

namespace BLL
{
    public class orderloginfo
    {
        orderLog orderlog = new orderLog();

        public int InsertOrderLog(L_OrderLogInfo orderloginfo)
        {
            return orderlog.InsertOrderLog(orderloginfo);
        }
    }
}
