using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using Model;
using System.Data;

namespace BLL
{
    public class userInfo
    {
        User user = new User();

        public string RegNewUser(L_UserAccountInfo userinfo)
        {
            return user.RegisterUser(userinfo);
        }

        public L_UserAccountInfo LoginUser(string loginName, string userPwd, int loginType, string userIP)
        {
            return user.LoginUser(loginName, userPwd, loginType, userIP);
        }

        public int ChangePwd(string UserName, string OldPwd, string NewPwd)
        {
            return user.ChangePwd(UserName, OldPwd, NewPwd);
        }

        public DataSet GetBindUser(string sqlstr)
        {
            return user.GetDataUser(sqlstr);
        }
    }
}
