/*
 * uclock_rom generated by KCAsm at Wed Dec 18 10:03:23 UTC 2024
 */

module uclock_rom(address, instruction, clk);
input [9:0] address;
output [17:0] instruction;
input clk;
RAMB16_S18 ram_1024_x_18(
	.DI (16'b0),
	.DIP (2'b0),
	.EN (1'b1),
	.WE (1'b0),
	.SSR (1'b0),
	.CLK (clk),
	.ADDR (address),
	.DO (instruction[15:0]),
	.DOP (instruction[17:16])
);
// synthesis translate_off
/*	synthesis
	init_00 = "0D0000A4E00CE00BE00AE009E008E007E006E005E004E003E002E001E0000000"
	init_01 = "40490091501200ED50374041501E40545012400D0091012000C30115C0010C00"
	init_02 = "5812006D541C4020401200A8542C400D0091541C40450091541C404D0091541C"
	init_03 = "541C40520091541C40410091541C404C0091401200A8E005E004E408E507E606"
	init_04 = "5812006DC1015055404F0091541C4020401200AC5448400D0091541C404D0091"
	init_05 = "401200ACE00CC002600C541C400D00915460404E0091401200ACE40BE50AE609"
	init_06 = "1620588B01EC401200AC00A4E00C0000541C400D0091541C40460091541C4046"
	init_07 = "009181011420588B01EC548B403A009181011520588B01EC548B403A00918101"
	init_08 = "000E0001013400E70125A000000E00005C8B443C5C8B453C5C8B4618548B400D"
	init_09 = "50A220024000A000009D4F0140950185549A20104000A000810101E27010A000"
	init_0A = "013D00BC01600E09A00000BC01600E06A000C000A001600CA000CF01409D0185"
	init_0B = "4F0D009D7F100120A0000148A000014E50BA2002A000015350B62001600C00E7"
	init_0C = "810150D34F08B0004F0DFF10009554DB2008400082101210012040BD8101B000"
	init_0D = "400000E400FAEF2000E440C3012240C600EA00E758D94120C10100EA54C65120"
	init_0E = "0F79009D0F53A000009D0F08A000009D0F20A000009D0F0D40DF4F01B0002010"
	init_0F = "009D0F65009D0F76009D0F4F410A009D0F78009D0F61009D0F74009D0F6E009D"
	init_10 = "009D009D0F72009D0F4500E7009D0F77009D0F6F009D0F6C009D0F66009D0F72"
	init_11 = "009D0F4D009D0F53009D0F50009D0F43009D0F4B00E4A000009D0F72009D0F6F"
	init_12 = "0F69009D0F6C009D0F61009D0F76009D0F6E009D0F49A000009D0F3E009D0F33"
	init_13 = "0F6C009D0F41A000009D0F65009D0F6D009D0F69009D0F54A000009D0F64009D"
	init_14 = "009D0F4FA000009D009D0F46009D0F4FA000009D0F6D009D0F72009D0F61009D"
	init_15 = "A000009D0F65009D0F76009D0F69009D0F74009D0F63009D0F41A000009D0F4E"
	init_16 = "F0208201F120017E70E08E018201F020003A8201F0208201F120017E70E00220"
	init_17 = "81010130A000F020000D8201F0208201F120017E70E08E018201F020003A8201"
	init_18 = "EC01ED00C00063016200E515E414E313E212E111E010A000803AC1015D7FC00A"
	init_19 = "82E8419A8001599FE303C2E80000B350924063036202F530D42065016400C001"
	init_1A = "E204A30382E841AF800159ADE303C2E80000A300920063056204E303E202A303"
	init_1B = "010041C9E10751BF413C81016107E108010041C9E10851B7413C91006108E305"
	init_1C = "5010610A600755DB501061096006E106010041C9E10651C7411881016106E107"
	init_1D = "6414631362126111601000A4E00CC00151DB2002600C55DB5010610B600855DB"
	init_1E = "1200B80001E87010A000C0F6B80080C6A000A0DFBC00407BB8004061A0006515"
	init_1F = "000000000000000000000000A0009200B80001E8701081010206920002060206"
	init_20 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_21 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_22 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_23 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_24 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_25 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_26 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_27 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_28 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_29 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_2A = "0000000000000000000000000000000000000000000000000000000000000000"
	init_2B = "0000000000000000000000000000000000000000000000000000000000000000"
	init_2C = "0000000000000000000000000000000000000000000000000000000000000000"
	init_2D = "0000000000000000000000000000000000000000000000000000000000000000"
	init_2E = "0000000000000000000000000000000000000000000000000000000000000000"
	init_2F = "0000000000000000000000000000000000000000000000000000000000000000"
	init_30 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_31 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_32 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_33 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_34 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_35 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_36 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_37 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_38 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_39 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_3A = "0000000000000000000000000000000000000000000000000000000000000000"
	init_3B = "0000000000000000000000000000000000000000000000000000000000000000"
	init_3C = "0000000000000000000000000000000000000000000000000000000000000000"
	init_3D = "0000000000000000000000000000000000000000000000000000000000000000"
	init_3E = "0000000000000000000000000000000000000000000000000000000000000000"
	init_3F = "43FC8001AC008D01000000000000000000000000000000000000000000000000"
	initp_00 = "D3F74FDD3FF8DF7DF837DFEAF77DFDF7DF7DFEAAFDFDF7DF7FDDDCFC3AAAAAA8"
	initp_01 = "CCCF333332CB2CC93EFFFD7D766F443670BBDBD3FCBCA0AFD2CFD2728FE8DDDD"
	initp_02 = "4A19B1619B1619B0B333332CCBCCB33332CCCCB3333332CCCCCCCECCF33CCCCC"
	initp_03 = "0009B19A2C9989980038D34343423B523B523B529775142977514143AC2AAA5D"
	initp_04 = "0000000000000000000000000000000000000000000000000000000000000000"
	initp_05 = "0000000000000000000000000000000000000000000000000000000000000000"
	initp_06 = "0000000000000000000000000000000000000000000000000000000000000000"
	initp_07 = "F500000000000000000000000000000000000000000000000000000000000000"
*/
// synthesis translate_off
defparam ram_1024_x_18.INIT_00 = 256'h0D0000A4E00CE00BE00AE009E008E007E006E005E004E003E002E001E0000000;
defparam ram_1024_x_18.INIT_01 = 256'h40490091501200ED50374041501E40545012400D0091012000C30115C0010C00;
defparam ram_1024_x_18.INIT_02 = 256'h5812006D541C4020401200A8542C400D0091541C40450091541C404D0091541C;
defparam ram_1024_x_18.INIT_03 = 256'h541C40520091541C40410091541C404C0091401200A8E005E004E408E507E606;
defparam ram_1024_x_18.INIT_04 = 256'h5812006DC1015055404F0091541C4020401200AC5448400D0091541C404D0091;
defparam ram_1024_x_18.INIT_05 = 256'h401200ACE00CC002600C541C400D00915460404E0091401200ACE40BE50AE609;
defparam ram_1024_x_18.INIT_06 = 256'h1620588B01EC401200AC00A4E00C0000541C400D0091541C40460091541C4046;
defparam ram_1024_x_18.INIT_07 = 256'h009181011420588B01EC548B403A009181011520588B01EC548B403A00918101;
defparam ram_1024_x_18.INIT_08 = 256'h000E0001013400E70125A000000E00005C8B443C5C8B453C5C8B4618548B400D;
defparam ram_1024_x_18.INIT_09 = 256'h50A220024000A000009D4F0140950185549A20104000A000810101E27010A000;
defparam ram_1024_x_18.INIT_0A = 256'h013D00BC01600E09A00000BC01600E06A000C000A001600CA000CF01409D0185;
defparam ram_1024_x_18.INIT_0B = 256'h4F0D009D7F100120A0000148A000014E50BA2002A000015350B62001600C00E7;
defparam ram_1024_x_18.INIT_0C = 256'h810150D34F08B0004F0DFF10009554DB2008400082101210012040BD8101B000;
defparam ram_1024_x_18.INIT_0D = 256'h400000E400FAEF2000E440C3012240C600EA00E758D94120C10100EA54C65120;
defparam ram_1024_x_18.INIT_0E = 256'h0F79009D0F53A000009D0F08A000009D0F20A000009D0F0D40DF4F01B0002010;
defparam ram_1024_x_18.INIT_0F = 256'h009D0F65009D0F76009D0F4F410A009D0F78009D0F61009D0F74009D0F6E009D;
defparam ram_1024_x_18.INIT_10 = 256'h009D009D0F72009D0F4500E7009D0F77009D0F6F009D0F6C009D0F66009D0F72;
defparam ram_1024_x_18.INIT_11 = 256'h009D0F4D009D0F53009D0F50009D0F43009D0F4B00E4A000009D0F72009D0F6F;
defparam ram_1024_x_18.INIT_12 = 256'h0F69009D0F6C009D0F61009D0F76009D0F6E009D0F49A000009D0F3E009D0F33;
defparam ram_1024_x_18.INIT_13 = 256'h0F6C009D0F41A000009D0F65009D0F6D009D0F69009D0F54A000009D0F64009D;
defparam ram_1024_x_18.INIT_14 = 256'h009D0F4FA000009D009D0F46009D0F4FA000009D0F6D009D0F72009D0F61009D;
defparam ram_1024_x_18.INIT_15 = 256'hA000009D0F65009D0F76009D0F69009D0F74009D0F63009D0F41A000009D0F4E;
defparam ram_1024_x_18.INIT_16 = 256'hF0208201F120017E70E08E018201F020003A8201F0208201F120017E70E00220;
defparam ram_1024_x_18.INIT_17 = 256'h81010130A000F020000D8201F0208201F120017E70E08E018201F020003A8201;
defparam ram_1024_x_18.INIT_18 = 256'hEC01ED00C00063016200E515E414E313E212E111E010A000803AC1015D7FC00A;
defparam ram_1024_x_18.INIT_19 = 256'h82E8419A8001599FE303C2E80000B350924063036202F530D42065016400C001;
defparam ram_1024_x_18.INIT_1A = 256'hE204A30382E841AF800159ADE303C2E80000A300920063056204E303E202A303;
defparam ram_1024_x_18.INIT_1B = 256'h010041C9E10751BF413C81016107E108010041C9E10851B7413C91006108E305;
defparam ram_1024_x_18.INIT_1C = 256'h5010610A600755DB501061096006E106010041C9E10651C7411881016106E107;
defparam ram_1024_x_18.INIT_1D = 256'h6414631362126111601000A4E00CC00151DB2002600C55DB5010610B600855DB;
defparam ram_1024_x_18.INIT_1E = 256'h1200B80001E87010A000C0F6B80080C6A000A0DFBC00407BB8004061A0006515;
defparam ram_1024_x_18.INIT_1F = 256'h000000000000000000000000A0009200B80001E8701081010206920002060206;
defparam ram_1024_x_18.INIT_20 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_21 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_22 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_23 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_24 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_25 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_26 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_27 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_28 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_29 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_2A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_2B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_2C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_2D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_2E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_2F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_30 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_31 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_32 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_33 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_34 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_35 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_36 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_37 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_38 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_39 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_3A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_3B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_3C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_3D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_3E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_3F = 256'h43FC8001AC008D01000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INITP_00 = 256'hD3F74FDD3FF8DF7DF837DFEAF77DFDF7DF7DFEAAFDFDF7DF7FDDDCFC3AAAAAA8;
defparam ram_1024_x_18.INITP_01 = 256'hCCCF333332CB2CC93EFFFD7D766F443670BBDBD3FCBCA0AFD2CFD2728FE8DDDD;
defparam ram_1024_x_18.INITP_02 = 256'h4A19B1619B1619B0B333332CCBCCB33332CCCCB3333332CCCCCCCECCF33CCCCC;
defparam ram_1024_x_18.INITP_03 = 256'h0009B19A2C9989980038D34343423B523B523B529775142977514143AC2AAA5D;
defparam ram_1024_x_18.INITP_04 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INITP_05 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INITP_06 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INITP_07 = 256'hF500000000000000000000000000000000000000000000000000000000000000;
// synthesis translate_on
// synthesis attribute INIT_00 of ram_1024_x_18 is "0D0000A4E00CE00BE00AE009E008E007E006E005E004E003E002E001E0000000"
// synthesis attribute INIT_01 of ram_1024_x_18 is "40490091501200ED50374041501E40545012400D0091012000C30115C0010C00"
// synthesis attribute INIT_02 of ram_1024_x_18 is "5812006D541C4020401200A8542C400D0091541C40450091541C404D0091541C"
// synthesis attribute INIT_03 of ram_1024_x_18 is "541C40520091541C40410091541C404C0091401200A8E005E004E408E507E606"
// synthesis attribute INIT_04 of ram_1024_x_18 is "5812006DC1015055404F0091541C4020401200AC5448400D0091541C404D0091"
// synthesis attribute INIT_05 of ram_1024_x_18 is "401200ACE00CC002600C541C400D00915460404E0091401200ACE40BE50AE609"
// synthesis attribute INIT_06 of ram_1024_x_18 is "1620588B01EC401200AC00A4E00C0000541C400D0091541C40460091541C4046"
// synthesis attribute INIT_07 of ram_1024_x_18 is "009181011420588B01EC548B403A009181011520588B01EC548B403A00918101"
// synthesis attribute INIT_08 of ram_1024_x_18 is "000E0001013400E70125A000000E00005C8B443C5C8B453C5C8B4618548B400D"
// synthesis attribute INIT_09 of ram_1024_x_18 is "50A220024000A000009D4F0140950185549A20104000A000810101E27010A000"
// synthesis attribute INIT_0A of ram_1024_x_18 is "013D00BC01600E09A00000BC01600E06A000C000A001600CA000CF01409D0185"
// synthesis attribute INIT_0B of ram_1024_x_18 is "4F0D009D7F100120A0000148A000014E50BA2002A000015350B62001600C00E7"
// synthesis attribute INIT_0C of ram_1024_x_18 is "810150D34F08B0004F0DFF10009554DB2008400082101210012040BD8101B000"
// synthesis attribute INIT_0D of ram_1024_x_18 is "400000E400FAEF2000E440C3012240C600EA00E758D94120C10100EA54C65120"
// synthesis attribute INIT_0E of ram_1024_x_18 is "0F79009D0F53A000009D0F08A000009D0F20A000009D0F0D40DF4F01B0002010"
// synthesis attribute INIT_0F of ram_1024_x_18 is "009D0F65009D0F76009D0F4F410A009D0F78009D0F61009D0F74009D0F6E009D"
// synthesis attribute INIT_10 of ram_1024_x_18 is "009D009D0F72009D0F4500E7009D0F77009D0F6F009D0F6C009D0F66009D0F72"
// synthesis attribute INIT_11 of ram_1024_x_18 is "009D0F4D009D0F53009D0F50009D0F43009D0F4B00E4A000009D0F72009D0F6F"
// synthesis attribute INIT_12 of ram_1024_x_18 is "0F69009D0F6C009D0F61009D0F76009D0F6E009D0F49A000009D0F3E009D0F33"
// synthesis attribute INIT_13 of ram_1024_x_18 is "0F6C009D0F41A000009D0F65009D0F6D009D0F69009D0F54A000009D0F64009D"
// synthesis attribute INIT_14 of ram_1024_x_18 is "009D0F4FA000009D009D0F46009D0F4FA000009D0F6D009D0F72009D0F61009D"
// synthesis attribute INIT_15 of ram_1024_x_18 is "A000009D0F65009D0F76009D0F69009D0F74009D0F63009D0F41A000009D0F4E"
// synthesis attribute INIT_16 of ram_1024_x_18 is "F0208201F120017E70E08E018201F020003A8201F0208201F120017E70E00220"
// synthesis attribute INIT_17 of ram_1024_x_18 is "81010130A000F020000D8201F0208201F120017E70E08E018201F020003A8201"
// synthesis attribute INIT_18 of ram_1024_x_18 is "EC01ED00C00063016200E515E414E313E212E111E010A000803AC1015D7FC00A"
// synthesis attribute INIT_19 of ram_1024_x_18 is "82E8419A8001599FE303C2E80000B350924063036202F530D42065016400C001"
// synthesis attribute INIT_1A of ram_1024_x_18 is "E204A30382E841AF800159ADE303C2E80000A300920063056204E303E202A303"
// synthesis attribute INIT_1B of ram_1024_x_18 is "010041C9E10751BF413C81016107E108010041C9E10851B7413C91006108E305"
// synthesis attribute INIT_1C of ram_1024_x_18 is "5010610A600755DB501061096006E106010041C9E10651C7411881016106E107"
// synthesis attribute INIT_1D of ram_1024_x_18 is "6414631362126111601000A4E00CC00151DB2002600C55DB5010610B600855DB"
// synthesis attribute INIT_1E of ram_1024_x_18 is "1200B80001E87010A000C0F6B80080C6A000A0DFBC00407BB8004061A0006515"
// synthesis attribute INIT_1F of ram_1024_x_18 is "000000000000000000000000A0009200B80001E8701081010206920002060206"
// synthesis attribute INIT_20 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_21 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_22 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_23 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_24 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_25 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_26 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_27 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_28 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_29 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_2A of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_2B of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_2C of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_2D of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_2E of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_2F of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_30 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_31 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_32 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_33 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_34 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_35 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_36 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_37 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_38 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_39 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_3A of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_3B of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_3C of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_3D of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_3E of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_3F of ram_1024_x_18 is "43FC8001AC008D01000000000000000000000000000000000000000000000000"
// synthesis attribute INITP_00 of ram_1024_x_18 is "D3F74FDD3FF8DF7DF837DFEAF77DFDF7DF7DFEAAFDFDF7DF7FDDDCFC3AAAAAA8"
// synthesis attribute INITP_01 of ram_1024_x_18 is "CCCF333332CB2CC93EFFFD7D766F443670BBDBD3FCBCA0AFD2CFD2728FE8DDDD"
// synthesis attribute INITP_02 of ram_1024_x_18 is "4A19B1619B1619B0B333332CCBCCB33332CCCCB3333332CCCCCCCECCF33CCCCC"
// synthesis attribute INITP_03 of ram_1024_x_18 is "0009B19A2C9989980038D34343423B523B523B529775142977514143AC2AAA5D"
// synthesis attribute INITP_04 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INITP_05 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INITP_06 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INITP_07 of ram_1024_x_18 is "F500000000000000000000000000000000000000000000000000000000000000"
endmodule
