using System;
using System.IO;
using Microsoft.EntityFrameworkCore.Migrations;

namespace BoutiqueManagement.Migrations
{
    public partial class BoutiqueManagement : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Staff",
                columns: table => new
                {
                    Staff_ID = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    StaffName = table.Column<string>(nullable: true),
                    StaffEmail = table.Column<string>(nullable: true),
                    StaffMobile = table.Column<string>(nullable: true),
                    Address = table.Column<string>(nullable: true),
                    JionningDate = table.Column<DateTime>(nullable: false),
                    Visa_Finshing_Date = table.Column<DateTime>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Staff", x => x.Staff_ID);
                });

            migrationBuilder.CreateTable(
                name: "CustomerDetail",
                columns: table => new
                {
                    Customer_ID = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CustomerName = table.Column<string>(nullable: true),
                    CustomerEmail = table.Column<string>(nullable: true),
                    CustomerMobile = table.Column<string>(nullable: true),
                    Purpose = table.Column<string>(nullable: true),
                    ArrivedDate = table.Column<DateTime>(nullable: false),
                    Staff_ID = table.Column<int>(nullable: false),
                    Staff_objStaff_ID = table.Column<int>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CustomerDetail", x => x.Customer_ID);
                    table.ForeignKey(
                        name: "FK_CustomerDetail_Staff_Staff_objStaff_ID",
                        column: x => x.Staff_objStaff_ID,
                        principalTable: "Staff",
                        principalColumn: "Staff_ID",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Services",
                columns: table => new
                {
                    Service_ID = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    DressName = table.Column<string>(nullable: true),
                    Price = table.Column<string>(nullable: true),
                    Size = table.Column<string>(nullable: true),
                    DressId = table.Column<string>(nullable: true),
                    Item = table.Column<string>(nullable: true),
                    Customer_ID = table.Column<int>(nullable: false),
                    Customer_objCustomer_ID = table.Column<int>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Services", x => x.Service_ID);
                    table.ForeignKey(
                        name: "FK_Services_CustomerDetail_Customer_objCustomer_ID",
                        column: x => x.Customer_objCustomer_ID,
                        principalTable: "CustomerDetail",
                        principalColumn: "Customer_ID",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "OnlineOrder",
                columns: table => new
                {
                    OnlineOrder_ID = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    NewOrder = table.Column<string>(nullable: true),
                    Purchaser_Name = table.Column<string>(nullable: true),
                    Delivery_Address = table.Column<string>(nullable: true),
                    Estimate_Delivery = table.Column<DateTime>(nullable: false),
                    Service_ID = table.Column<int>(nullable: false),
                    Service_objService_ID = table.Column<int>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_OnlineOrder", x => x.OnlineOrder_ID);
                    table.ForeignKey(
                        name: "FK_OnlineOrder_Services_Service_objService_ID",
                        column: x => x.Service_objService_ID,
                        principalTable: "Services",
                        principalColumn: "Service_ID",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateIndex(
                name: "IX_CustomerDetail_Staff_objStaff_ID",
                table: "CustomerDetail",
                column: "Staff_objStaff_ID");

            migrationBuilder.CreateIndex(
                name: "IX_OnlineOrder_Service_objService_ID",
                table: "OnlineOrder",
                column: "Service_objService_ID");

            migrationBuilder.CreateIndex(
                name: "IX_Services_Customer_objCustomer_ID",
                table: "Services",
                column: "Customer_objCustomer_ID");

            var sqlFile = Path.Combine(".\\DataScript", @"Q.sql");
            migrationBuilder.Sql(File.ReadAllText(sqlFile));
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "OnlineOrder");

            migrationBuilder.DropTable(
                name: "Services");

            migrationBuilder.DropTable(
                name: "CustomerDetail");

            migrationBuilder.DropTable(
                name: "Staff");
        }
    }
}
