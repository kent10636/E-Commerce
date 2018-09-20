﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using Model;

namespace BLL
{
    public class HelpInfo
    {
        Help help = new Help();

        public int AddHelpInfo(L_ShowHelpInfo helpinfo)
        {
            return help.AddHelpInfo(helpinfo);
        }

        public L_ShowHelpInfo GetBindHelp(int HelpID)
        {
            return help.GetBindHelp(HelpID);
        }

        public int ModifyHelpInfo(L_ShowHelpInfo helpinfo)
        {
            return help.UpdateHelpInfo(helpinfo);
        }
    }
}
