﻿<%@ Page Language="C#" MasterPageFile="~/Client/Menu.Master" AutoEventWireup="true" CodeBehind="inplay.aspx.cs" Inherits="betplayer.Client.inplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <% foreach (System.Data.DataRow row in MatchesDataTable.Rows)
        { %>
    <div>
    </div>

    <div class="TeamName">
        <a  style="color:black" href="#"><%: row["teamA"] %> VS <%: row["teamB"] %></a>
    </div>
    <div class="profile-details">
        <a href="BetDetails.aspx?id=<%: row["apiID"] %>&fk=<%: row["firebasekey"] %>">
            <table width="100%" border="0" cellspacing="2" cellpadding="2">
                <tbody>
                    <tr style="color:black">
                        <td width="1%">&nbsp;</td>
                        <td align="center" style="vertical-align: middle; text-align: center">

                            <div class="profile_picture">
                                <p align="center">
                                    <img src="<%=TeamtoImgpath(row["TeamA"].ToString()) %>" alt="team image" style="height:100px"/>
                                </p>
                            </div>

                        </td>
                        <td class="GameList" style="vertical-align: top;">

                            <table width="99%" border="0" cellspacing="0" cellpadding="0">
                                <tbody>
                                    <tr >
                                        <td class="GameList" align="center"><%: row["DateTime"] %> </td>
                                    </tr>
                                    <tr>
                                        <td class="GameList" align="center">Match Bets : 0</td>
                                    </tr>
                                    <tr>
                                        <td class="GameList" align="center">Session Bets : 0</td>
                                    </tr>
                                    <tr>
                                        <td class="GameList" align="center">Declared : </td>
                                    </tr>
                                    <tr>
                                        <td class="GameList" align="center">Won By : <%: row["winnerTeam"] %></td>
                                    </tr>
                                </tbody>
                            </table>

                        </td>
                        <td align="center" style="vertical-align: middle;">
                            <p align="center">
                                <img src="<%=TeamtoImgpath(row["TeamB"].ToString()) %>" alt="team image" style="height:100px"/>
                            </p>
                        </td>
                        <td width="1%">&nbsp;</td>
                    </tr>
                </tbody>
            </table>
        </a>
    </div>
    <br/>
    &nbsp;<br/>

    <% } //foreach %>


    <div class="content_bottom">
        <div class="clear"></div>
    </div>


</asp:Content>
