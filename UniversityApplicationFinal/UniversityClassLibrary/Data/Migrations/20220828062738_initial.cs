using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace UniversityClassLibrary.Data.Migrations
{
    public partial class initial : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "roleMasters",
                columns: table => new
                {
                    RoleId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    RoleName = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_roleMasters", x => x.RoleId);
                });

            migrationBuilder.CreateTable(
                name: "Universities",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    UniversityName = table.Column<string>(type: "Varchar(50)", nullable: false),
                    Location = table.Column<string>(type: "Varchar(50)", nullable: false),
                    AffiliatedUnder = table.Column<string>(type: "Varchar(50)", nullable: false),
                    EstablishedYear = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Universities", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "users",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Email = table.Column<string>(type: "Varchar(50)", nullable: false),
                    PanNo = table.Column<string>(type: "Varchar(15)", nullable: false),
                    Password = table.Column<string>(type: "Varchar(20)", nullable: false),
                    ConfirmPassword = table.Column<string>(type: "Varchar(20)", nullable: false),
                    IsApproved = table.Column<bool>(type: "bit", nullable: false),
                    Status = table.Column<string>(type: "Varchar(20)", nullable: false),
                    RoleId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_users", x => x.Id);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Universities_UniversityName",
                table: "Universities",
                column: "UniversityName",
                unique: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "roleMasters");

            migrationBuilder.DropTable(
                name: "Universities");

            migrationBuilder.DropTable(
                name: "users");
        }
    }
}
