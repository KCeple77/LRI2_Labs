/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *SIMPRIM_P_0947159679;
char *IEEE_P_2717149903;
char *STD_STANDARD;
char *IEEE_P_2592010699;
char *STD_TEXTIO;
char *IEEE_P_1367372525;
char *SIMPRIM_P_4208868169;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    std_textio_init();
    ieee_p_2717149903_init();
    simprim_p_0947159679_init();
    ieee_p_1367372525_init();
    simprim_p_4208868169_init();
    simprim_a_3156740924_4150518722_3771526814_init();
    simprim_a_3156740924_4150518722_0205944396_init();
    simprim_a_3156740924_4150518722_1560147273_init();
    simprim_a_3156740924_4150518722_0089952040_init();
    simprim_a_3156740924_4150518722_2853851430_init();
    simprim_a_3156740924_4150518722_3040377630_init();
    simprim_a_3156740924_4150518722_3194240035_init();
    simprim_a_3156740924_4150518722_0039135220_init();
    simprim_a_3156740924_4150518722_0342750376_init();
    simprim_a_0915285367_2431929443_0116247414_init();
    simprim_a_0915285367_2431929443_2929143188_init();
    simprim_a_0915285367_2431929443_3139353238_init();
    simprim_a_4181367278_3380326129_0433961640_init();
    simprim_a_2155285624_1178295121_0433961640_init();
    work_a_3959351695_0632001823_init();
    work_a_3728875776_2372691052_init();


    xsi_register_tops("work_a_3728875776_2372691052");

    SIMPRIM_P_0947159679 = xsi_get_engine_memory("simprim_p_0947159679");
    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");
    SIMPRIM_P_4208868169 = xsi_get_engine_memory("simprim_p_4208868169");

    return xsi_run_simulation(argc, argv);

}
