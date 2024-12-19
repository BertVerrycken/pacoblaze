/*
 * auto_pwm_rom generated by KCAsm at Wed Dec 18 10:03:21 UTC 2024
 */

module auto_pwm_rom(address, instruction, clk);
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
	init_00 = "E013E012E0110000E010000100FB00C7C001400281015007410CF01001010000"
	init_01 = "5025400060105C15C2015C16C1015C17C00100FF01FF0203E017E016E015E014"
	init_02 = "403E00045430410B6110E10100A7E0105023410461114028800180205028C020"
	init_03 = "00A7E0115036410461125036410B6110403E80018010503EC010503840006011"
	init_04 = "E012504741046113504741046111404F80018010504FC010504940006012E102"
	init_05 = "5058410461145058410461124060800180105060C010505A40006013E10300A7"
	init_06 = "410461155069410461134071800180105071C010506B40006014E10400A7E013"
	init_07 = "6116507A410461144082800180105082C010507C40006015E10500A7E0145069"
	init_08 = "80105095C01050924000601640950004548A410B6117E10600A7E015507A4104"
	init_09 = "40A38001802050A3C02050A040006017E10700A7E01650904104611540958001"
	init_0A = "40AB58B00106B000C0010101B000400001004014E10800A7E017509E41046116"
	init_0B = "CF2040BB50BF20024000A0004F0140B554B92004400040B1010EB000C0010140"
	init_0C = "0F6F00BB0F6300BB0F6900BB0F5000C100C1A00000BB0F20A00000BB0F0DA000"
	init_0D = "00BB0F7500BB0F4100C400BB0F6500BB0F7A00BB0F6100BB0F6C00BB0F4200BB"
	init_0E = "00BB0F6300BB0F4100C400BB0F4D00BB0F5700BB0F5000C400BB0F6F00BB0F74"
	init_0F = "00BB0F4B00BB0F4F00C1A00000C100C100BB0F6500BB0F7600BB0F6900BB0F74"
	init_10 = "02005100600A02005100600B02005100600CE10081016100E20FE10EE00D40C1"
	init_11 = "020051006005020051006006020051006007020051006008C240020051006009"
	init_12 = "620F610E600DC280020051006001020051006002020051006003020051006004"
	init_13 = "0000000000000000000000000000000000000000000000000000000000008001"
	init_14 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_15 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_16 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_17 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_18 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_19 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_1A = "0000000000000000000000000000000000000000000000000000000000000000"
	init_1B = "0000000000000000000000000000000000000000000000000000000000000000"
	init_1C = "0000000000000000000000000000000000000000000000000000000000000000"
	init_1D = "0000000000000000000000000000000000000000000000000000000000000000"
	init_1E = "0000000000000000000000000000000000000000000000000000000000000000"
	init_1F = "0000000000000000000000000000000000000000000000000000000000000000"
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
	init_3F = "4101000000000000000000000000000000000000000000000000000000000000"
	initp_00 = "34D774BB4D35DD2ED34D774BB4D35DD2ED34D774CD2ED35DD37740AAA88FF760"
	initp_01 = "CCEFCCCCCCF333CCCCF333333333ECB2BD23D3A4FA493BB4D774BB4D774CD2ED"
	initp_02 = "000000000000000000000000000000000000000302924924924924A4924924AB"
	initp_03 = "0000000000000000000000000000000000000000000000000000000000000000"
	initp_04 = "0000000000000000000000000000000000000000000000000000000000000000"
	initp_05 = "0000000000000000000000000000000000000000000000000000000000000000"
	initp_06 = "0000000000000000000000000000000000000000000000000000000000000000"
	initp_07 = "C000000000000000000000000000000000000000000000000000000000000000"
*/
// synthesis translate_off
defparam ram_1024_x_18.INIT_00 = 256'hE013E012E0110000E010000100FB00C7C001400281015007410CF01001010000;
defparam ram_1024_x_18.INIT_01 = 256'h5025400060105C15C2015C16C1015C17C00100FF01FF0203E017E016E015E014;
defparam ram_1024_x_18.INIT_02 = 256'h403E00045430410B6110E10100A7E0105023410461114028800180205028C020;
defparam ram_1024_x_18.INIT_03 = 256'h00A7E0115036410461125036410B6110403E80018010503EC010503840006011;
defparam ram_1024_x_18.INIT_04 = 256'hE012504741046113504741046111404F80018010504FC010504940006012E102;
defparam ram_1024_x_18.INIT_05 = 256'h5058410461145058410461124060800180105060C010505A40006013E10300A7;
defparam ram_1024_x_18.INIT_06 = 256'h410461155069410461134071800180105071C010506B40006014E10400A7E013;
defparam ram_1024_x_18.INIT_07 = 256'h6116507A410461144082800180105082C010507C40006015E10500A7E0145069;
defparam ram_1024_x_18.INIT_08 = 256'h80105095C01050924000601640950004548A410B6117E10600A7E015507A4104;
defparam ram_1024_x_18.INIT_09 = 256'h40A38001802050A3C02050A040006017E10700A7E01650904104611540958001;
defparam ram_1024_x_18.INIT_0A = 256'h40AB58B00106B000C0010101B000400001004014E10800A7E017509E41046116;
defparam ram_1024_x_18.INIT_0B = 256'hCF2040BB50BF20024000A0004F0140B554B92004400040B1010EB000C0010140;
defparam ram_1024_x_18.INIT_0C = 256'h0F6F00BB0F6300BB0F6900BB0F5000C100C1A00000BB0F20A00000BB0F0DA000;
defparam ram_1024_x_18.INIT_0D = 256'h00BB0F7500BB0F4100C400BB0F6500BB0F7A00BB0F6100BB0F6C00BB0F4200BB;
defparam ram_1024_x_18.INIT_0E = 256'h00BB0F6300BB0F4100C400BB0F4D00BB0F5700BB0F5000C400BB0F6F00BB0F74;
defparam ram_1024_x_18.INIT_0F = 256'h00BB0F4B00BB0F4F00C1A00000C100C100BB0F6500BB0F7600BB0F6900BB0F74;
defparam ram_1024_x_18.INIT_10 = 256'h02005100600A02005100600B02005100600CE10081016100E20FE10EE00D40C1;
defparam ram_1024_x_18.INIT_11 = 256'h020051006005020051006006020051006007020051006008C240020051006009;
defparam ram_1024_x_18.INIT_12 = 256'h620F610E600DC280020051006001020051006002020051006003020051006004;
defparam ram_1024_x_18.INIT_13 = 256'h0000000000000000000000000000000000000000000000000000000000008001;
defparam ram_1024_x_18.INIT_14 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_15 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_16 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_17 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_18 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_19 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_1A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_1B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_1C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_1D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_1E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_1F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
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
defparam ram_1024_x_18.INIT_3F = 256'h4101000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INITP_00 = 256'h34D774BB4D35DD2ED34D774BB4D35DD2ED34D774CD2ED35DD37740AAA88FF760;
defparam ram_1024_x_18.INITP_01 = 256'hCCEFCCCCCCF333CCCCF333333333ECB2BD23D3A4FA493BB4D774BB4D774CD2ED;
defparam ram_1024_x_18.INITP_02 = 256'h000000000000000000000000000000000000000302924924924924A4924924AB;
defparam ram_1024_x_18.INITP_03 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INITP_04 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INITP_05 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INITP_06 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INITP_07 = 256'hC000000000000000000000000000000000000000000000000000000000000000;
// synthesis translate_on
// synthesis attribute INIT_00 of ram_1024_x_18 is "E013E012E0110000E010000100FB00C7C001400281015007410CF01001010000"
// synthesis attribute INIT_01 of ram_1024_x_18 is "5025400060105C15C2015C16C1015C17C00100FF01FF0203E017E016E015E014"
// synthesis attribute INIT_02 of ram_1024_x_18 is "403E00045430410B6110E10100A7E0105023410461114028800180205028C020"
// synthesis attribute INIT_03 of ram_1024_x_18 is "00A7E0115036410461125036410B6110403E80018010503EC010503840006011"
// synthesis attribute INIT_04 of ram_1024_x_18 is "E012504741046113504741046111404F80018010504FC010504940006012E102"
// synthesis attribute INIT_05 of ram_1024_x_18 is "5058410461145058410461124060800180105060C010505A40006013E10300A7"
// synthesis attribute INIT_06 of ram_1024_x_18 is "410461155069410461134071800180105071C010506B40006014E10400A7E013"
// synthesis attribute INIT_07 of ram_1024_x_18 is "6116507A410461144082800180105082C010507C40006015E10500A7E0145069"
// synthesis attribute INIT_08 of ram_1024_x_18 is "80105095C01050924000601640950004548A410B6117E10600A7E015507A4104"
// synthesis attribute INIT_09 of ram_1024_x_18 is "40A38001802050A3C02050A040006017E10700A7E01650904104611540958001"
// synthesis attribute INIT_0A of ram_1024_x_18 is "40AB58B00106B000C0010101B000400001004014E10800A7E017509E41046116"
// synthesis attribute INIT_0B of ram_1024_x_18 is "CF2040BB50BF20024000A0004F0140B554B92004400040B1010EB000C0010140"
// synthesis attribute INIT_0C of ram_1024_x_18 is "0F6F00BB0F6300BB0F6900BB0F5000C100C1A00000BB0F20A00000BB0F0DA000"
// synthesis attribute INIT_0D of ram_1024_x_18 is "00BB0F7500BB0F4100C400BB0F6500BB0F7A00BB0F6100BB0F6C00BB0F4200BB"
// synthesis attribute INIT_0E of ram_1024_x_18 is "00BB0F6300BB0F4100C400BB0F4D00BB0F5700BB0F5000C400BB0F6F00BB0F74"
// synthesis attribute INIT_0F of ram_1024_x_18 is "00BB0F4B00BB0F4F00C1A00000C100C100BB0F6500BB0F7600BB0F6900BB0F74"
// synthesis attribute INIT_10 of ram_1024_x_18 is "02005100600A02005100600B02005100600CE10081016100E20FE10EE00D40C1"
// synthesis attribute INIT_11 of ram_1024_x_18 is "020051006005020051006006020051006007020051006008C240020051006009"
// synthesis attribute INIT_12 of ram_1024_x_18 is "620F610E600DC280020051006001020051006002020051006003020051006004"
// synthesis attribute INIT_13 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000008001"
// synthesis attribute INIT_14 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_15 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_16 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_17 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_18 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_19 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_1A of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_1B of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_1C of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_1D of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_1E of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_1F of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
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
// synthesis attribute INIT_3F of ram_1024_x_18 is "4101000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INITP_00 of ram_1024_x_18 is "34D774BB4D35DD2ED34D774BB4D35DD2ED34D774CD2ED35DD37740AAA88FF760"
// synthesis attribute INITP_01 of ram_1024_x_18 is "CCEFCCCCCCF333CCCCF333333333ECB2BD23D3A4FA493BB4D774BB4D774CD2ED"
// synthesis attribute INITP_02 of ram_1024_x_18 is "000000000000000000000000000000000000000302924924924924A4924924AB"
// synthesis attribute INITP_03 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INITP_04 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INITP_05 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INITP_06 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INITP_07 of ram_1024_x_18 is "C000000000000000000000000000000000000000000000000000000000000000"
endmodule
