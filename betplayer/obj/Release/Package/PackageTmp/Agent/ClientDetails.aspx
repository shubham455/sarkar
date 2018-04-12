﻿<%@ Page Language="C#" MasterPageFile="~/Agent/DashBoard.Master" AutoEventWireup="true" CodeBehind="ClientDetails.aspx.cs" Inherits="betplayer.Agent.ClientDetails" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div id="main-content">
        <!-- BEGIN PAGE CONTAINER-->
        <div class="container-fluid">
            <!-- BEGIN PAGE HEADER-->
            <div class="row-fluid">
                <div class="span12">
                    <!-- BEGIN THEME CUSTOMIZER-->
                    <div id="theme-change" class="hidden-phone"><i class="icon-cogs"></i><span class="settings"><span class="text">Theme:</span> <span class="colors"><span class="color-default" data-style="default"></span><span class="color-gray" data-style="gray"></span><span class="color-purple" data-style="purple"></span><span class="color-navy-blue" data-style="navy-blue"></span></span></span></div>
                    <!-- END THEME CUSTOMIZER-->
                    <!-- BEGIN PAGE TITLE & BREADCRUMB-->
                    <h3 class="page-title">Client Details  <small>Display Client Details</small> </h3>
                    <ul class="breadcrumb">
                        <li><a href="#"><i class="icon-home"></i></a><span class="divider">&nbsp;</span> </li>
                        <li>Master Details <span class="divider">&nbsp;</span> </li>
                        <li>Client Details<span class="divider">&nbsp;</span></li>
                        <li><a href="MasterDetails.aspx"><span style="color: #00F;"><strong>Back</strong></span></a><span class="divider-last">&nbsp;</span></li>
                    </ul>
                    <!-- END PAGE TITLE & BREADCRUMB-->
                </div>
            </div>
            <!-- END PAGE HEADER-->
            <!-- BEGIN ADVANCED TABLE widget-->
            <div class="row-fluid">
                <div class="span12">
                    <!-- BEGIN EXAMPLE TABLE widget-->
                    <div class="widget">
                        <div class="widget-title">
                            <h4><i class="icon-globe"></i>Client Details</h4>
                            <span class="tools"><a href="javascript:;" class="icon-chevron-down"></a><a href="javascript:;" class="icon-remove"></a></span>
                        </div>
                        <div class="widget-body form">
                            <!-- BEGIN FORM-->


                            <div class="portlet-body">
                                <div class="clearfix">

                                    <a href="CreateClient.aspx">
                                        <button class="btn btn-warning" type="button"><i class="icon-plus icon-white"></i>Create</button></a>
                                    <div class="btn-group">
                                        <asp:DropDownList ID="DropDownstatus" runat="server" CssClass="btn btn-primary dropdown-toggle" Width="150px" OnSelectedIndexChanged="DropDownstatus_SelectedIndexChanged" AutoPostBack="true">
                                            <asp:ListItem Text="Please Select" Value="0">--Select Status--</asp:ListItem>
                                            <asp:ListItem Text="Active" Value="Active">Active</asp:ListItem>
                                            <asp:ListItem Text="Inactive" Value="Inactive">Inactive</asp:ListItem>
                                        </asp:DropDownList>

                                    </div>
                                    <a href="ClientLimit.php">
                                        <button class="btn btn-success" type="button">Update Comm. &amp; Limit</button></a>

                                </div>
                                <div class="space15"></div>

                            </div>
                            <div id="sample_1_wrapper" class="dataTables_wrapper form-inline" role="grid">
                                <div class="row-fluid">
                                    <div class="span6">
                                        <div id="sample_1_length" class="dataTables_length">
                                            <label>
                                                <select size="1" name="sample_1_length" aria-controls="sample_1" class="input-mini">
                                                    <option value="100" selected="selected">100</option>
                                                    <option value="500">500</option>
                                                    <option value="1000">1000</option>
                                                    <option value="All">All</option>
                                                </select>
                                                records per page</label>
                                        </div>
                                    </div>
                                    <div class="span6">
                                        <div class="dataTables_filter" id="sample_1_filter">
                                            <label>
                                                Search:
                                                    <asp:TextBox ID="txtsearch"  CssClass="input-medium" runat="server" AutoPostBack="true" OnTextChanged="txtsearch_TextChanged"></asp:TextBox></label>
                                        </div>
                                    </div>
                                </div>
                                <table width="100%" class="table table-striped table-hover table-bordered dataTable" id="sample_1" aria-describedby="sample_1_info" style="width: 100%;">
                                    <thead>
                                        <tr role="row">
                                            <th height="25" colspan="7" align="center" style="text-align: center; vertical-align: middle;" rowspan="1">Personal Details</th>
                                            <th colspan="3" align="center" valign="middle" style="text-align: center; vertical-align: middle;" rowspan="1">Agent Commission %</th>
                                            <th colspan="3" align="center" valign="middle" style="text-align: center; vertical-align: middle;" rowspan="1">Client Commission %</th>
                                            <th colspan="2" align="center" valign="middle" style="text-align: center; vertical-align: middle;" rowspan="1">Share %</th>
                                            <th colspan="2" align="center" style="text-align: center; vertical-align: middle;" rowspan="1">Other</th>
                                        </tr>
                                        <% foreach (System.Data.DataRow row in MatchesDataTable.Rows)
                                            { %>
                                       
                                        <tr role="row">
                                            <td width="2%" align="center" class="sorting_disabled" role="columnheader" rowspan="1" colspan="1" aria-label=" " style="width: 24px;">
                                                <div class="checker" id="uniform-undefined">
                                                    <span>
                                                        <asp:CheckBox ID="CheckboxID" runat="server"  OnCheckedChanged="CheckboxID_CheckedChanged" />
                                                    </span>
                                                </div>
                                            </td>
                                            <td align="left" class=" ">
                                                <div class="btn-group">
                                                    <a class="btn btn-primary dropdown-toggle" data-toggle="dropdown" href="#"><span class="icon-caret-down"></span></a>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="ClientDetailsModify.aspx?id=<%: row ["ClientID"] %>"><i class="icon-pencil"></i>Edit</a></li>
                                                        <li><a href="<%=delete(Convert.ToInt16(row["clientID"]))%>"><i class="icon-trash"></i>Delete</a></li>
                                                        <li><a href="javascript:ChangeStatus('118','Inactive');"><i class="icon-ban-circle"></i>
                                                            Inactive		                      </a></li>
                                                        <li><a href="javascript:SendLoginDetails('118');"><i class="icon-film"></i>Send Mobile Login Details</a></li>
                                                    </ul>
                                                </div>
                                            </td>
                                            

                                            <th height="25" align="left" class="sorting" role="columnheader" tabindex="0" aria-controls="sample_1" rowspan="1" colspan="1" aria-label="SNo.: activate to sort column ascending" style="width: 30px;"><%:row["ClientID"] %></th>
                                            <th align="left" class="FontText" role="columnheader" tabindex="0" aria-controls="sample_1" rowspan="1" colspan="1" aria-label="Code: activate to sort column ascending" style="width: 33px;"><%:row["ClientID"] %></th>
                                            <th align="left" class="sorting" role="columnheader" tabindex="0" aria-controls="sample_1" rowspan="1" colspan="1" aria-label=" Name: activate to sort column ascending" style="width: 79px;"><%:row["name"] %></th>
                                            <th width="60" align="left" class="sorting" role="columnheader" tabindex="0" aria-controls="sample_1" rowspan="1" colspan="1" aria-label="Contact: activate to sort column ascending" style="width: 73px;"><%:row["Contact_No"] %></th>
                                            <th width="60" align="left" class="sorting" role="columnheader" tabindex="0" aria-controls="sample_1" rowspan="1" colspan="1" aria-label="Password: activate to sort column ascending" style="width: 63px;"><%:row["Password"] %></th>
                                            <th align="right" class="sorting" role="columnheader" tabindex="0" aria-controls="sample_1" rowspan="1" colspan="1" aria-label=" Type: activate to sort column ascending" style="width: 41px;"></th>
                                            <th align="right" style="text-align: right; width: 38px;" class="sorting" role="columnheader" tabindex="0" aria-controls="sample_1" rowspan="1" colspan="1" aria-label="Match: activate to sort column ascending"></th>
                                            <th align="right" style="text-align: right; width: 50px;" class="sorting" role="columnheader" tabindex="0" aria-controls="sample_1" rowspan="1" colspan="1" aria-label="Session: activate to sort column ascending"></th>
                                            <th align="right" class="sorting" role="columnheader" tabindex="0" aria-controls="sample_1" rowspan="1" colspan="1" aria-label=" Type: activate to sort column ascending" style="width: 40px;"><%:row["Session_Commision_Type"] %></th>
                                            <th align="right" style="text-align: right; width: 38px;" class="sorting" role="columnheader" tabindex="0" aria-controls="sample_1" rowspan="1" colspan="1" aria-label="Match: activate to sort column ascending"></th>
                                            <th align="right" style="text-align: right; width: 50px;" class="sorting" role="columnheader" tabindex="0" aria-controls="sample_1" rowspan="1" colspan="1" aria-label="Session: activate to sort column ascending"></th>
                                            <th align="right" style="text-align: right; width: 37px;" class="sorting" role="columnheader" tabindex="0" aria-controls="sample_1" rowspan="1" colspan="1" aria-label="Agent: activate to sort column ascending"><%:row["Agent_Share"] %></th>
                                            <th align="right" style="text-align: right; width: 37px;" class="sorting" role="columnheader" tabindex="0" aria-controls="sample_1" rowspan="1" colspan="1" aria-label="Client: activate to sort column ascending"><%:row["client_Share"] %></th>
                                            <th align="right" style="text-align: right; width: 50px;" class="sorting" role="columnheader" tabindex="0" aria-controls="sample_1" rowspan="1" colspan="1" aria-label="Limit: activate to sort column ascending"><%:row["client_limit"] %></th>
                                            <th width="50" align="right" class="sorting" role="columnheader" tabindex="0" aria-controls="sample_1" rowspan="1" colspan="1" aria-label="Status: activate to sort column ascending" style="width: 50px;"><%:row["Status"] %></th>
                                        </tr>
                                        <% } //foreach %>
                                    </thead>
                                    <tbody role="alert" aria-live="polite" aria-relevant="all">

                                        <tr bgcolor="#FFFFFF" class="even">
                                            <td align="center" class="  sorting_1">
                                                <div class="checker" id="uniform-2">
                                                    <span>
                                                        <input type="checkbox" class="checkboxes" name="2" id="2" value="118" style="opacity: 0;"></span>
                                                </div>
                                            </td>
                                            <td align="left" class=" ">
                                                <div class="btn-group">
                                                    <a class="btn btn-primary dropdown-toggle" data-toggle="dropdown" href="#"><span class="icon-caret-down"></span></a>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="ClientDetailsModify.php?id=118"><i class="icon-pencil"></i>Edit</a></li>
                                                        <li><a href="ClientDetailsDelete.php?id=118"><i class="icon-trash"></i>Delete</a></li>
                                                        <li><a href="javascript:ChangeStatus('118','Inactive');"><i class="icon-ban-circle"></i>
                                                            Inactive		                      </a></li>
                                                        <li><a href="javascript:SendLoginDetails('118');"><i class="icon-film"></i>Send Mobile Login Details</a></li>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td height="20" align="left" class="FontText ">2</td>
                                            <td align="left" class="FontText ">C118</td>
                                            <td align="left" class="FontText ">118 Puran</td>
                                            <td align="left" class="FontText ">9628371118</td>
                                            <td align="left" class="FontText ">123</td>
                                            <td align="right" class="FontText ">Bet By Bet</td>
                                            <td align="right" class="FontText " style="text-align: right;">2.00</td>
                                            <td align="right" class="FontText " style="text-align: right;">2.50</td>
                                            <td align="right" class="FontText ">No Comm</td>
                                            <td align="right" class="FontText " style="text-align: right;">0.00</td>
                                            <td align="right" class="FontText " style="text-align: right;">0.00</td>
                                            <td align="right" class="FontText " style="text-align: right;">50.00</td>
                                            <td align="right" class="FontText " style="text-align: right;">0.00</td>
                                            <td align="right" class="FontText " style="text-align: right;">30700.00</td>
                                            <td align="right" class="FontText ">Active</td>
                                        </tr>
                                        <tr bgcolor="#FFFFFF" class="odd">
                                            <td align="center" class="  sorting_1">
                                                <div class="checker" id="uniform-3">
                                                    <span>
                                                        <input type="checkbox" class="checkboxes" name="3" id="3" value="130" style="opacity: 0;"></span>
                                                </div>
                                            </td>
                                            <td align="left" class=" ">
                                                <div class="btn-group">
                                                    <a class="btn btn-primary dropdown-toggle" data-toggle="dropdown" href="#"><span class="icon-caret-down"></span></a>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="ClientDetailsModify.php?id=130"><i class="icon-pencil"></i>Edit</a></li>
                                                        <li><a href="ClientDetailsDelete.php?id=130"><i class="icon-trash"></i>Delete</a></li>
                                                        <li><a href="javascript:ChangeStatus('130','Active');"><i class="icon-ban-circle"></i>
                                                            Active		                      </a></li>
                                                        <li><a href="javascript:SendLoginDetails('130');"><i class="icon-film"></i>Send Mobile Login Details</a></li>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td height="20" align="left" class="FontText ">3</td>
                                            <td align="left" class="FontText ">C130</td>
                                            <td align="left" class="FontText ">130 Ashad</td>
                                            <td align="left" class="FontText ">7317295256</td>
                                            <td align="left" class="FontText ">1122</td>
                                            <td align="right" class="FontText ">Bet By Bet</td>
                                            <td align="right" class="FontText " style="text-align: right;">2.00</td>
                                            <td align="right" class="FontText " style="text-align: right;">2.50</td>
                                            <td align="right" class="FontText ">No Comm</td>
                                            <td align="right" class="FontText " style="text-align: right;">0.00</td>
                                            <td align="right" class="FontText " style="text-align: right;">0.00</td>
                                            <td align="right" class="FontText " style="text-align: right;">50.00</td>
                                            <td align="right" class="FontText " style="text-align: right;">0.00</td>
                                            <td align="right" class="FontText " style="text-align: right;">50.00</td>
                                            <td align="right" class="FontText ">Inactive</td>
                                        </tr>

                                    </tbody>
                                </table>
                                <div class="row-fluid">
                                    <div class="span6">
                                        <div class="dataTables_info" id="sample_1_info">Showing 1 to 50 of 50 entries</div>
                                    </div>
                                    <div class="span6">
                                        <div class="dataTables_paginate paging_bootstrap pagination">
                                            <ul>
                                                <li class="prev disabled"><a href="#">← Prev</a></li>
                                                <li class="active"><a href="#">1</a></li>
                                                <li class="next disabled"><a href="#">Next → </a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input name="ID" type="hidden" id="">
                            <input name="Status" type="hidden" id="Status" readonly="">
                            <input name="StatusMultiple" type="hidden" id="StatusMultiple" readonly="">
                            <input name="ModifyStatusChk" type="hidden" id="ModifyStatusChk" readonly="">
                            <input name="ModifyStatusMultipleChk" type="hidden" id="ModifyStatusMultipleChk" readonly="">
                            <input name="TotalRecords" type="hidden" id="TotalRecords" value="">
                            <input name="AutoNo" type="hidden" id="AutoNo" value="">
                            <input name="GaddiChk" type="hidden" id="GaddiChk" value="">
                            <input name="LoginChk" type="hidden" id="LoginChk" value="">

                            <!-- END FORM-->

                        </div>
                    </div>
                    <!-- END EXAMPLE TABLE widget-->
                </div>
            </div>
            <!-- END ADVANCED TABLE widget-->
            <!-- END PAGE CONTENT-->
        </div>
        <!-- END PAGE CONTAINER-->
    </div>

</asp:Content>

