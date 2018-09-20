﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DBUtility;
using System.Text;
using Model;
using BLL;
using System.Data;

public partial class proscenium_AcceptAddrInfo_OrderList : System.Web.UI.Page
{
    private int userID;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (subTool.CheckUserLogin("-1"))
        {
            userID = WebUnitily.CheckInt(mycookie.getCookiesValue("shop8517User", "userID"));
            if (!IsPostBack)
            {
                BindIndexOrderListInfo();
            }
        }
    }

    private void BindIndexOrderListInfo()
    {
        StringBuilder sb = new StringBuilder();

        int currPage = WebUnitily.CheckInt(Request["p"]);
        if (currPage == 0)
        {
            currPage = 1;
        }

        L_PageList pl = new L_PageList();
        pl.Currpage = currPage;
        pl.PageSize = 16;
        pList8517.CurPage = currPage;

        pl.TableName = " (OrderList as a Left Join (Select orderID,Sum(memberPrice*discount) as PriceTotal,Sum(freign) as FreightTotal From orderDetail group by orderID) as b On b.orderID=a.orderID) ";
        pl.PKey = " a.orderID ";
        pl.FieldList = " a.orderID,a.userID,isNew,orderState,orderTime,ISNULL(b.PriceTotal,0) as PriceTotal,ISNULL(b.FreightTotal,0) as FreightTotal ";
        pl.Conditon = " and orderState=10 and userID= " + userID;
        pl.OrderBy = " orderTime Desc ";

        TableUpDateFieldsInfo tb = new TableUpDateFieldsInfo();
        DataSet dSet = tb.GetPageList(pl);
        if (dSet.Tables.Count > 0)
        {
            if (dSet.Tables[0].Rows.Count > 0)
            {
                gvBindOrderListInfo.DataSource = dSet.Tables[0];
                gvBindOrderListInfo.DataKeyNames = new string[] { "orderID" };
                gvBindOrderListInfo.DataBind();

                pList8517.TotalPage = int.Parse(tb.PageCount.ToString());
            }
            else
            {
                gvBindOrderListInfo.DataBind();
            }
        }
        else
        {
            gvBindOrderListInfo.DataBind();
        }
    }



    protected void gvBindOrderListInfo_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            DataRowView Set = (DataRowView)e.Row.DataItem;
            Label lblOrderState = (Label)e.Row.FindControl("lbOrderState");
            Int16 orderState = Int16.Parse(Set.Row["orderState"].ToString());

            //状态  0取消订单  10等待付款  20 已付款,等待发货 30 已发货
            switch (orderState)
            {
                case 10:
                    lblOrderState.Text = "等待付款";
                    break;
                case 20:
                    lblOrderState.Text = "已付款，等待发货";
                    break;
                case 30:
                    lblOrderState.Text = "已发货";
                    break;
                case 0:
                    lblOrderState.Text = "订单已取消";
                    break;
                default:
                    lblOrderState.Text = "未知状态";
                    break;
            }

            Label lbOrderPT = (Label)e.Row.FindControl("lbOrderPT");
            lbOrderPT.Text = string.Format("{0:C2}", decimal.Parse(Set.Row["PriceTotal"].ToString()) + decimal.Parse(Set.Row["FreightTotal"].ToString()));
        }
    }
}
