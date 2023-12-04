library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.runtime.all;


entity main is
  
  port(signal clk    : in std_logic;
       signal reset  : in std_logic;
       signal run    : in std_logic;
       signal rdy    : out value(0 to 0);
       signal argument : in value(0 to 11);
       signal result : out value(0 to 57));
       
end entity;
architecture rtl of main is

  type t_state is (compute1902);
  signal state: t_state;
  type t_state_var4546 is (compute2596, pause_setI2597, pause_setI2598, pause_setI2599, pause_setI2600, pause_setI2601, pause_setI2602, pause_setI2603, pause_setI2604, pause_setI2605, pause_setI2606, pause_setI2607, pause_setI2608, pause_setI2609, pause_setI2610, pause_setI2611, pause_setI2612, pause_setI2613, pause_setI2614, pause_setI2615, pause_setI2616, pause_setI2617, pause_setI2618, pause_setI2619, pause_setI2620, pause_setI2621, pause_setI2622, pause_setI2623, pause_setI2624, pause_setI2625, pause_setI2626, pause_setI2627, pause_setI2628, pause_setI2629, pause_setI2630, pause_setI2631, pause_setI2632);
  signal state_var4546: t_state_var4546;
  type t_state_var4545 is (compute4152, \$709_loop\, \$710_copy_root_in_ram\, \$711_loop\, \$712_aux\, \$713\, \$714_apply\, \$715_offsetclosure_n\, \$716_binop_int\, \$717_compare\, \$718_binop_compare\, \$719_make_block_n\, \$720_branch_if\, \$721_loop_push\, \$722_compbranch\, \$723_w\, \$724_w\, \$725_fill\, \$726_fill\, \$727_w0\, \$728_w1\, \$729_w3\, pause_getI4281, pause_getI4283, pause_getI4285, pause_getI4287, pause_getI4289, pause_getI4291, pause_getI4293, pause_getI4295, pause_getI4299, pause_getI4302, pause_getI4305, pause_getI4308, pause_getI4311, pause_getI4314, pause_getI4317, pause_getI4320, pause_getI4322, pause_getI4324, pause_getI4326, pause_getI4328, pause_getI4331, pause_getI4334, pause_getI4337, pause_getI4340, pause_getI4342, pause_getI4348, pause_getI4350, pause_getI4352, pause_getI4354, pause_getI4357, pause_getI4360, pause_getI4363, pause_getI4366, pause_getI4368, pause_getI4370, pause_getI4372, pause_getI4375, pause_getI4377, pause_getI4379, pause_getI4381, pause_getI4384, pause_getI4386, pause_getI4388, pause_getI4390, pause_getI4392, pause_getI4394, pause_getI4396, pause_getI4402, pause_getI4404, pause_getI4408, pause_getI4410, pause_getI4416, pause_getI4418, pause_getI4420, pause_getI4422, pause_getI4424, pause_getI4427, pause_getI4429, pause_getI4431, pause_getI4437, pause_getI4439, pause_getI4444, pause_getI4447, pause_getI4449, pause_getI4451, pause_getI4458, pause_getI4462, pause_getI4466, pause_getI4468, pause_getI4472, pause_getI4474, pause_getI4476, pause_getI4480, pause_getI4482, pause_getI4484, pause_getI4486, pause_getI4490, pause_getI4492, pause_getI4494, pause_getI4496, pause_getI4500, pause_getI4502, pause_getI4507, pause_getI4509, pause_getI4511, pause_getI4513, pause_getI4521, pause_getI4524, pause_getI4527, pause_getI4530, pause_getI4533, pause_getII4282, pause_getII4284, pause_getII4286, pause_getII4288, pause_getII4290, pause_getII4292, pause_getII4294, pause_getII4296, pause_getII4300, pause_getII4303, pause_getII4306, pause_getII4309, pause_getII4312, pause_getII4315, pause_getII4318, pause_getII4321, pause_getII4323, pause_getII4325, pause_getII4327, pause_getII4329, pause_getII4332, pause_getII4335, pause_getII4338, pause_getII4341, pause_getII4343, pause_getII4349, pause_getII4351, pause_getII4353, pause_getII4355, pause_getII4358, pause_getII4361, pause_getII4364, pause_getII4367, pause_getII4369, pause_getII4371, pause_getII4373, pause_getII4376, pause_getII4378, pause_getII4380, pause_getII4382, pause_getII4385, pause_getII4387, pause_getII4389, pause_getII4391, pause_getII4393, pause_getII4395, pause_getII4397, pause_getII4403, pause_getII4405, pause_getII4409, pause_getII4411, pause_getII4417, pause_getII4419, pause_getII4421, pause_getII4423, pause_getII4425, pause_getII4428, pause_getII4430, pause_getII4432, pause_getII4438, pause_getII4440, pause_getII4445, pause_getII4448, pause_getII4450, pause_getII4452, pause_getII4459, pause_getII4463, pause_getII4467, pause_getII4469, pause_getII4473, pause_getII4475, pause_getII4477, pause_getII4481, pause_getII4483, pause_getII4485, pause_getII4487, pause_getII4491, pause_getII4493, pause_getII4495, pause_getII4497, pause_getII4501, pause_getII4503, pause_getII4508, pause_getII4510, pause_getII4512, pause_getII4514, pause_getII4522, pause_getII4525, pause_getII4528, pause_getII4531, pause_getII4534, pause_setI4297, pause_setI4298, pause_setI4301, pause_setI4304, pause_setI4307, pause_setI4310, pause_setI4313, pause_setI4316, pause_setI4319, pause_setI4330, pause_setI4333, pause_setI4336, pause_setI4339, pause_setI4344, pause_setI4345, pause_setI4346, pause_setI4347, pause_setI4356, pause_setI4359, pause_setI4362, pause_setI4365, pause_setI4374, pause_setI4383, pause_setI4398, pause_setI4399, pause_setI4400, pause_setI4401, pause_setI4406, pause_setI4407, pause_setI4412, pause_setI4413, pause_setI4414, pause_setI4415, pause_setI4433, pause_setI4434, pause_setI4436, pause_setI4441, pause_setI4442, pause_setI4443, pause_setI4446, pause_setI4454, pause_setI4455, pause_setI4456, pause_setI4457, pause_setI4461, pause_setI4465, pause_setI4471, pause_setI4479, pause_setI4489, pause_setI4498, pause_setI4499, pause_setI4504, pause_setI4505, pause_setI4515, pause_setI4516, pause_setI4517, pause_setI4518, pause_setI4519, pause_getI4154, pause_getII4155, pause_setI4153, pause_getI4161, pause_getI4164, pause_getI4167, pause_getII4162, pause_getII4165, pause_getII4168, pause_setI4157, pause_setI4158, pause_setI4159, pause_setI4160, pause_getI4174, pause_getI4177, pause_getI4180, pause_getII4175, pause_getII4178, pause_getII4181, pause_setI4170, pause_setI4171, pause_setI4172, pause_setI4173, pause_getI4183, pause_getII4184, pause_getI4187, pause_getI4192, pause_getI4195, pause_getI4201, pause_getI4204, pause_getII4188, pause_getII4193, pause_getII4196, pause_getII4202, pause_getII4205, pause_setI4186, pause_setI4189, pause_setI4190, pause_setI4191, pause_setI4198, pause_setI4199, pause_setI4200, pause_getI4209, pause_getI4221, pause_getI4224, pause_getI4227, pause_getII4210, pause_getII4222, pause_getII4225, pause_getII4228, pause_setI4211, pause_setI4213, pause_setI4215, pause_setI4217, pause_setI4218, pause_setI4219, pause_getI4232, pause_getII4233, pause_getI4235, pause_getII4236, pause_getI4238, pause_getI4242, pause_getII4239, pause_getII4243, pause_setI4237, pause_setI4241, pause_setI4245, pause_getI4247, pause_getII4248, pause_getI4251, pause_getII4252, pause_setI4250, pause_getI4255, pause_getII4256, pause_setI4254, pause_getI4259, pause_getII4260, pause_setI4258, pause_getI4263, pause_getII4264, pause_setI4262, pause_getI4267, pause_getII4268, pause_setI4266, pause_getI4271, pause_getII4272, pause_setI4270, pause_getI4275, pause_getII4276, pause_setI4274, pause_setI4277, pause_setI4279);
  signal state_var4545: t_state_var4545;
  type array_value_16 is array (natural range <>) of value(0 to 15);
  type array_value_31 is array (natural range <>) of value(0 to 30);
  type array_value_32 is array (natural range <>) of value(0 to 31);
  signal ram : array_value_32(0 to 16383);
  signal \$ram_value\ : value(0 to 31);
  signal \$ram_ptr\ : natural range 0 to 16383;
  signal \$ram_ptr_write\ : natural range 0 to 16383;
  signal \$ram_write\ : value(0 to 31);
  signal \$ram_write_request\ : std_logic := '0';
  signal global_end : array_value_16(0 to 0);
  signal \$global_end_value\ : value(0 to 15);
  signal \$global_end_ptr\ : natural range 0 to 0;
  signal \$global_end_ptr_write\ : natural range 0 to 0;
  signal \$global_end_write\ : value(0 to 15);
  signal \$global_end_write_request\ : std_logic := '0';
  signal code : array_value_31(0 to 34);
  signal \$code_value\ : value(0 to 30);
  signal \$code_ptr\ : natural range 0 to 34;
  signal \$code_ptr_write\ : natural range 0 to 34;
  signal \$code_write\ : value(0 to 30);
  signal \$code_write_request\ : std_logic := '0';
  
  begin
    process (clk)
            begin
            if (rising_edge(clk)) then
                 -- if \$ram_write_request\ = '1' then
                    ram(\$ram_ptr_write\) <= \$ram_write\;
                 -- else
                   \$ram_value\ <= ram(\$ram_ptr\);
                 -- end if;
            end if;
        end process;
    
    process (clk)
            begin
            if (rising_edge(clk)) then
                 -- if \$global_end_write_request\ = '1' then
                    global_end(\$global_end_ptr_write\) <= \$global_end_write\;
                 -- else
                   \$global_end_value\ <= global_end(\$global_end_ptr\);
                 -- end if;
            end if;
        end process;
    
    process (clk)
            begin
            if (rising_edge(clk)) then
                 -- if \$code_write_request\ = '1' then
                    code(\$code_ptr_write\) <= \$code_write\;
                 -- else
                   \$code_value\ <= code(\$code_ptr\);
                 -- end if;
            end if;
        end process;
    
    process(clk)
      variable \$716_binop_int_arg\
               : value(0 to 154) := (others => '0');
      variable \$v1829\, \$v1534\
               : value(0 to 1) := (others => '0');
      variable \$720_branch_if_arg\
               : value(0 to 138) := (others => '0');
      variable \$713_result\, \$v2764\, \$v2812\, \$727_w0_arg\, \$v2806\, 
               \$v2828\, \$710_copy_root_in_ram_arg\, \$v2813\, \$v2817\
               : value(0 to 95) := (others => '0');
      variable \$717_compare_arg\
               : value(0 to 93) := (others => '0');
      variable \$721_loop_push_arg\, \$709_loop_arg\, \$724_w_arg\, 
               \$723_w_arg\
               : value(0 to 63) := (others => '0');
      variable \$v2762\, \$v2854\, \$v2768\, \$v2783\, \$v2931\, \$v2873\, 
               \$v2923\, \$v2704\, \$v2879\, \$v2833\, \$v2780\, \$v2933\, 
               \$v2870\, \$v2926\, \$v2766\, \$v2932\, \$v2869\, \$v2930\, 
               \$v2860\, \$v2861\, \$v2927\, \$v2644\, \$v2832\, \$v2917\, 
               \$v2831\, \$v2826\, \$v2759\, \$v2746\, \$v2913\, \$v2745\, 
               \$v2871\, \$v2881\, \$v2880\, \$v2863\, \$v2929\, \$v2703\, 
               \$v2663\, \$v2925\, \$v2915\, \$v2852\, \$v2839\, \$v2922\, 
               \$v2884\, \$v2919\, \$v2846\, \$v2825\, \$v2786\, \$v2747\, 
               \$v2827\, \$v2921\, \$1099\, \$v2775\, \$v2882\
               : value(0 to 47) := (others => '0');
      variable \$v4529\, \$v4523\, \$v4526\, \$v4532\
               : value(0 to 7) := (others => '0');
      variable \$v188\, \$v1824\, \$v1827\, \$v1526\, \$v1522\
               : value(0 to 122) := (others => '0');
      variable \$5255_sp\, \$1310_sp\, \$5312_sp\, \$950_sp\, \$5305_sp\, 
               \$755_sp\, \$817_sp\, \$965\, \$886_ofs\, \$1528_next\, 
               \$795_sp\, \$1526_next\, \$1542_next\, \$806_sp\, \$5250_sp\, 
               \$974\, \$5444_sp\, \$5435_sp\, \$765_sp\, \$897_sp\, 
               \$766_sp\, \$710_copy_root_in_ram_result\, \$726_fill_result\, 
               \$1540\, \$906_sp\, \$914_sp\, \$1137_sp\, \$5319_sp\, 
               \$1036_sp\, \$862_sp\, \$5260_sp\, \$4959\, \$727_w0_result\, 
               \$5265_sp\, \$1527\, \$5326_sp\, \$723_w_result\, \$905_sp\, 
               \$823_sp\, \$1330_sp\, \$1177_sp\, \$904_sp\, \$5341_sp\, 
               \$767_sp\, \$1529_next\, \$1274_sp\, \$721_loop_push_result\, 
               \$1241_sp\, \$1295_sp\, \$1178_sp\, \$5337_sp\, \$1273_sp\, 
               \$5339_sp\, \$781_sp\, \$936_sp\, \$1282_sp\, \$891_idx\, 
               \$5248_sp\, \$5275_sp\, \$1286_sp\, \$5280_sp\, \$882_sp\, 
               \$878_sp\, \$822_sp\, \$1275_sp\, \$5270_sp\, \$788_sp\, 
               \$973_sp\, \$4988\, \$896_sp\, \$1581\, \$1276_sp\, \$924_sp\, 
               \$711_loop_result\, \$729_w3_result\, \$1283_sp\, \$1303_sp\, 
               \$968_sp\, \$712_aux_result\, \$725_fill_result\, \$5441_sp\, 
               \$5438_sp\, \$5015\
               : value(0 to 15) := (others => '0');
      variable \$711_loop_arg\
               : value(0 to 111) := (others => '0');
      variable \$v2862\, \$v2872\, \$v2853\, \$v2883\, \$v2845\
               : value(0 to 33) := (others => '0');
      variable \$v1813\
               : value(0 to 2) := (others => '0');
      variable \$713_arg\
               : value(0 to 167) := (others => '0');
      variable result1900
               : value(0 to 57) := (others => '0');
      variable \$v1507\, \$v1819\, \$v451\
               : value(0 to 3) := (others => '0');
      variable \$729_w3_id\, \$725_fill_id\, \$712_aux_id\, \$724_w_id\, 
               \$727_w0_id\, \$715_offsetclosure_n_id\, 
               \$710_copy_root_in_ram_id\, \$709_loop_id\, 
               \$719_make_block_n_id\, \$713_id\, \$714_apply_id\, 
               \$728_w1_id\, \$711_loop_id\, \$717_compare_id\, 
               \$726_fill_id\, \$722_compbranch_id\, \$718_binop_compare_id\, 
               \$721_loop_push_id\, \$723_w_id\, \$720_branch_if_id\, 
               \$716_binop_int_id\
               : value(0 to 11) := (others => '0');
      variable \$1053\, \$v4478\, \$1216_res\, \$v4488\, \$888\, 
               \$747_argument1\, \$v4464\, \$748_argument2\, \$743\, 
               \$1150_arg\, \$750\, \$v4470\, \$749_argument3\, \$v4460\
               : value(0 to 30) := (others => '0');
      variable \$715_offsetclosure_n_arg\
               : value(0 to 137) := (others => '0');
      variable \$719_make_block_n_arg\
               : value(0 to 235) := (others => '0');
      variable \$728_w1_arg\
               : value(0 to 103) := (others => '0');
      variable \$v2636\, \$1491\, \$v2694\
               : value(0 to 127) := (others => '0');
      variable \$v4169\, \$v2769\, \$v2928\, \$v2820\, \$v2868\, \$v2580\, 
               \$v2748\, \$v2809\, \$v4244\, \$v2935\, \$v4246\, \$v2781\, 
               \$1125_b\, \$v2660\, \$v1522_init\, \$v4207\, rdy1901, 
               \$v2934\, \$v1828\, \$551_rdy\, \$v14\, \$v2581\, \$v2818\, 
               \$v4229\, \$v2897\, \$v2844\, \$v4194\, \$v2837\, \$v2564\, 
               \$v2914\, \$v4543\, \$v2900\, \$v4249\, \$v2901\, \$v2894\, 
               \$v4197\, \$v2776\, \$v2566\, \$v2674\, \$v2589\, \$v2789\, 
               \$v4216\, \$v2790\, \$v2937\, \$v2664\, \$v1903\, \$v2579\, 
               \$v4230\, \$v2573\, \$v2920\, \$v2824\, \$v2834\, \$v2905\, 
               \$v4273\, \$v2904\, \$v4544\, \$v2723\, \$v4220\, \$v2889\, 
               \$v4166\, \$v2823\, \$v4240\, \$v1814\, \$v2563\, \$v2765\, 
               \$v1534_init\, \$561_b\, \$v2565\, \$v4212\, \$v2721\, 
               \$v2720\, \$v2578\, \$v2568\, \$v2908\, result2594, \$v4226\, 
               \$v4156\, \$v2676\, \$v4182\, \$v2570\, \$724_w_result\, 
               \$v2586\, \$v2575\, \$v2554\, \$1194_res\, \$v2896\, \$v4257\, 
               \$v2577\, \$v4506\, \$v2892\, \$v2841\, \$v1507_init\, 
               \$v2767\, \$v1905\, \$v2895\, \$v4280\, \$v2636_init\, 
               \$v4261\, \$v2843\, \$v2807\, \$v2924\, \$v2645\, \$v4176\, 
               \$v2830\, \$v2572\, \$v2661\, \$v2815\, \$v2903\, \$v4542\, 
               \$v2784\, \$728_w1_result\, \$v2561\, \$v2906\, \$v2851\, 
               \$v2659\, \$v1825\, \$v2840\, rdy4151, \$v2810\, 
               \$709_loop_result\, \$v2571\, \$v1831\, \$v2878\, \$v4265\, 
               \$v2677\, \$v1540_init\, \$v1832\, \$v2816\, \$v2576\, 
               \$v2559\, \$v2814\, \$v2819\, \$v4426\, \$v4269\, \$v2778\, 
               \$v2555\, \$v2859\, \$v4163\, result4150, \$v1526_init\, 
               \$v2821\, \$v4223\, \$v4179\, \$v2736\, \$v4435\, 
               \$v1500_init\, \$v4253\, \$v1830\, \$v2902\, \$v2753\, 
               \$v2918\, \$v2749\, \$v4208\, \$v4214\, \$v2793\, 
               \$717_compare_result\, \$v2560\, \$v1904\, \$v4203\, \$v2584\, 
               \$v4539\, \$v2893\, \$v4185\, \$v2675\, \$v2695\, \$v2907\, 
               \$v2898\, \$v1533_init\, \$v2811\, \$v2733\, \$v2772\, 
               \$v2808\, \$v2936\, \$v1533\, \$v1820\, \$v2567\, \$v2556\, 
               \$v4538\, \$v2639\, \$v2582\, \$v2829\, \$v2792\, \$v2916\, 
               \$v2750\, \$v2658\, \$v2891\, \$v2835\, \$v4535\, \$v2722\, 
               rdy2595, \$v2562\, \$v2752\, \$v2787\, \$v2557\, \$v2751\, 
               \$v2899\, \$v2588\, \$v4206\, \$v4520\, \$v2822\, \$v4540\, 
               \$v2553\, \$v2583\, \$v4541\, \$v2842\, \$v2689\, \$v2735\, 
               \$v4278\, \$v1815\, \$v2890\, \$v4453\, \$v2734\, \$v2569\, 
               \$v2574\, \$v2587\, \$v2836\, \$v4536\, \$v2634\, \$v2558\, 
               \$v2585\
               : value(0 to 0) := (others => '0');
      variable \$714_apply_arg\
               : value(0 to 165) := (others => '0');
      variable \$1050\, \$v2696\, \$726_fill_arg\, \$725_fill_arg\, \$v2685\, 
               \$712_aux_arg\, \$729_w3_arg\, \$1048\
               : value(0 to 79) := (others => '0');
      variable \$718_binop_compare_arg\
               : value(0 to 153) := (others => '0');
      variable \$722_compbranch_arg\
               : value(0 to 231) := (others => '0');
      variable \$4955_w\, \$5232_v\, \$5296\, \$981_v\, \$1579_hd\, 
               \$969_next_env\, \$5355_v\, \$5013_hd\, \$5256_v\, \$799_v\, 
               \$5076_v\, \$793_v\, \$v455\, \$5430_v\, \$774\, \$5276_v\, 
               \$4984_w\, \$5370_v\, \$v1500\, \$5192_v\, \$877_v\, 
               \$5194_v\, \$1277\, \$5391_v\, \$5117_v\, \$5428_v\, \$1564\, 
               \$959_f0\, \$5226_v\, \$5261_v\, \$5328\, \$5314\, \$5345_v\, 
               cy, \$880_v\, \$5066_v\, \$5291\, \$5418_v\, \$v4234\, 
               \$5408_v\, \$5146_v\, \$5137_v\, \$5148_v\, \$5190_v\, 
               \$5177_v\, \$5238_v\, \$1628_hd\, \$5214_v\, \$4986_hd\, 
               \$5301\, \$5401_v\, \$4957_hd\, \$5210_v\, \$5413_v\, \$849\, 
               \$v1540\, \$5241_v\, \$5047_v\, \$5139_v\, \$5251_v\, 
               \$1624_hd\, \$5071_v\, \$5202_v\, \$5054_v\, \$5424_v\, 
               \$5150_v\, \$5125\, \$5169_v\, \$5377_v\, \$5384_v\, 
               \$5266_v\, \$5406_v\, \$5081_v\, \$v4231\, \$5223_v\, \$791\, 
               \$1577_w\, \$5350_v\, \$5040_v\, \$1102\, \$5229_v\, 
               \$1783_v\, \$1537\, \$992_next_acc\, \$5422_v\, \$5212_v\, 
               \$1233_v\, \$5360_v\, \$5208_v\, \$824\, \$797\, \$5204_v\, 
               \$1553\, \$5393_hd\, \$5141_v\, \$5011_w\, compute1902_id, 
               \$5281_v\, \$5321\, \$5286\, \$1136\, \$5271_v\, \$5307\, 
               \$5426_v\, \$5042_v\, \$5180_v\, \$5049_v\, \$5200_v\, 
               \$5198_v\, \$5235_v\, \$1597\, \$5420_v\, \$5184_v\, 
               \$5186_v\, \$1324\, \$5045_v\, \$5244_v\, \$1336_v\
               : value(0 to 31) := (others => '0');
      variable \$720_branch_if_result\, \$715_offsetclosure_n_result\, 
               \$714_apply_result\, \$718_binop_compare_result\, 
               \$722_compbranch_result\, \$719_make_block_n_result\, 
               \$716_binop_int_result\, \$v8\
               : value(0 to 121) := (others => '0');
      
    begin
      
      if rising_edge(clk) then
        if (reset = '1') then
          default_zero(\$5015\); default_zero(\$v2882\); 
          default_zero(\$v2585\); default_zero(\$v2558\); 
          default_zero(\$1336_v\); default_zero(\$v2634\); 
          default_zero(\$5438_sp\); default_zero(\$v2694\); 
          default_zero(\$v4536\); default_zero(\$v2775\); 
          default_zero(\$v4460\); default_zero(\$v2836\); 
          default_zero(\$v2587\); default_zero(\$v2574\); 
          default_zero(\$716_binop_int_id\); default_zero(\$5244_v\); 
          default_zero(\$5045_v\); default_zero(\$v1813\); 
          default_zero(\$v1522\); default_zero(\$715_offsetclosure_n_arg\); 
          default_zero(\$v1526\); default_zero(\$v1534\); 
          default_zero(\$v2569\); default_zero(\$749_argument3\); 
          default_zero(\$1324\); default_zero(\$5186_v\); 
          default_zero(\$v2734\); default_zero(\$v4453\); 
          default_zero(\$5184_v\); default_zero(\$5420_v\); 
          default_zero(\$v2890\); default_zero(\$5441_sp\); 
          default_zero(\$v2845\); default_zero(\$v1815\); 
          default_zero(\$v4278\); default_zero(\$v2735\); 
          default_zero(\$v2689\); default_zero(\$1099\); 
          default_zero(\$v2842\); default_zero(\$v2921\); 
          default_zero(\$1597\); default_zero(\$5235_v\); 
          default_zero(\$v4541\); default_zero(\$1048\); 
          default_zero(\$5198_v\); default_zero(\$v2583\); 
          default_zero(\$5200_v\); default_zero(\$725_fill_result\); 
          default_zero(\$712_aux_result\); default_zero(\$v2827\); 
          default_zero(\$v2883\); default_zero(\$v4470\); 
          default_zero(\$968_sp\); default_zero(\$5049_v\); 
          default_zero(\$5180_v\); default_zero(\$1303_sp\); 
          default_zero(\$v2747\); default_zero(\$v2553\); 
          default_zero(\$729_w3_arg\); default_zero(\$1283_sp\); 
          default_zero(\$720_branch_if_id\); default_zero(\$v4540\); 
          default_zero(\$v2822\); default_zero(\$v4520\); 
          default_zero(\$750\); default_zero(\$729_w3_result\); 
          default_zero(\$v1827\); default_zero(\$v2786\); 
          default_zero(\$5042_v\); default_zero(\$5426_v\); 
          default_zero(\$5307\); default_zero(\$722_compbranch_arg\); 
          default_zero(\$5271_v\); default_zero(\$v4206\); 
          default_zero(\$v2588\); default_zero(\$728_w1_arg\); 
          default_zero(\$1136\); default_zero(\$711_loop_result\); 
          default_zero(\$v2899\); default_zero(\$v2825\); 
          default_zero(\$v2751\); default_zero(\$924_sp\); 
          default_zero(\$1276_sp\); default_zero(\$712_aux_arg\); 
          default_zero(\$v2557\); default_zero(\$5286\); 
          default_zero(\$5321\); default_zero(\$5281_v\); 
          default_zero(compute1902_id); default_zero(\$1581\); 
          default_zero(\$896_sp\); default_zero(\$1150_arg\); 
          default_zero(\$4988\); default_zero(\$5011_w\); 
          default_zero(\$v2787\); default_zero(\$973_sp\); 
          default_zero(\$719_make_block_n_arg\); default_zero(\$v2752\); 
          default_zero(\$5141_v\); default_zero(\$v2562\); 
          default_zero(\$v451\); default_zero(rdy2595); 
          default_zero(\$v2722\); default_zero(\$v4535\); 
          default_zero(\$v2846\); default_zero(\$v1819\); 
          default_zero(\$v2835\); default_zero(\$v2891\); 
          default_zero(\$v2658\); default_zero(\$v2919\); 
          default_zero(\$v2750\); default_zero(\$788_sp\); 
          default_zero(\$743\); default_zero(\$v2884\); 
          default_zero(\$5270_sp\); default_zero(\$v2817\); 
          default_zero(\$v2916\); default_zero(\$1275_sp\); 
          default_zero(\$v1824\); default_zero(\$822_sp\); 
          default_zero(\$5393_hd\); default_zero(\$v2792\); 
          default_zero(\$878_sp\); default_zero(\$v2829\); 
          default_zero(\$v2922\); default_zero(\$v2582\); 
          default_zero(\$v2639\); default_zero(\$1553\); 
          default_zero(\$v4538\); default_zero(\$882_sp\); 
          default_zero(\$5204_v\); default_zero(\$5280_sp\); 
          default_zero(\$1286_sp\); default_zero(\$v2556\); 
          default_zero(\$v2567\); default_zero(\$5275_sp\); 
          default_zero(\$v4532\); default_zero(\$797\); 
          default_zero(\$5248_sp\); default_zero(\$824\); 
          default_zero(\$v1820\); default_zero(\$v1533\); 
          default_zero(\$v2936\); default_zero(\$v2808\); 
          default_zero(\$v2772\); default_zero(\$v2733\); 
          default_zero(\$v2811\); default_zero(\$v8\); 
          default_zero(\$v1533_init\); default_zero(\$v4526\); 
          default_zero(\$891_idx\); default_zero(\$v2898\); 
          default_zero(\$v2907\); default_zero(\$v2695\); 
          default_zero(\$v2675\); default_zero(\$1282_sp\); 
          default_zero(\$v4185\); default_zero(\$5208_v\); 
          default_zero(\$v2893\); default_zero(\$5360_v\); 
          default_zero(\$1233_v\); default_zero(\$936_sp\); 
          default_zero(\$v4539\); default_zero(\$781_sp\); 
          default_zero(\$v2584\); default_zero(\$5212_v\); 
          default_zero(\$5422_v\); default_zero(\$v4203\); 
          default_zero(\$992_next_acc\); default_zero(\$v1904\); 
          default_zero(\$5339_sp\); default_zero(\$1273_sp\); 
          default_zero(\$1537\); default_zero(\$v2560\); 
          default_zero(\$717_compare_result\); default_zero(\$v2793\); 
          default_zero(\$v4214\); default_zero(\$v4208\); 
          default_zero(\$v2749\); default_zero(\$1783_v\); 
          default_zero(\$5337_sp\); default_zero(\$1178_sp\); 
          default_zero(\$v2813\); default_zero(\$v2839\); 
          default_zero(\$5229_v\); default_zero(\$v2918\); 
          default_zero(\$748_argument2\); default_zero(\$v2852\); 
          default_zero(\$1295_sp\); default_zero(\$v2753\); 
          default_zero(\$v2902\); default_zero(\$1241_sp\); 
          default_zero(\$v2915\); default_zero(\$v1830\); 
          default_zero(\$v4253\); default_zero(\$1102\); 
          default_zero(\$v1500_init\); default_zero(\$723_w_id\); 
          default_zero(\$v4435\); default_zero(\$v2736\); 
          default_zero(\$721_loop_push_result\); default_zero(\$v4179\); 
          default_zero(\$v4223\); default_zero(\$v2821\); 
          default_zero(\$1274_sp\); default_zero(\$5040_v\); 
          default_zero(\$710_copy_root_in_ram_arg\); 
          default_zero(\$v1526_init\); default_zero(\$5350_v\); 
          default_zero(result4150); default_zero(\$v2925\); 
          default_zero(\$720_branch_if_arg\); default_zero(\$1529_next\); 
          default_zero(\$v4163\); default_zero(\$1577_w\); 
          default_zero(\$v2859\); default_zero(\$v2685\); 
          default_zero(\$718_binop_compare_arg\); default_zero(\$v2555\); 
          default_zero(\$v2778\); default_zero(\$791\); 
          default_zero(\$v4269\); default_zero(\$v4426\); 
          default_zero(\$5223_v\); default_zero(\$v4231\); 
          default_zero(\$v2853\); default_zero(\$767_sp\); 
          default_zero(\$5081_v\); default_zero(\$v2819\); 
          default_zero(\$v2663\); default_zero(\$5341_sp\); 
          default_zero(\$716_binop_int_arg\); default_zero(\$v2814\); 
          default_zero(\$v2703\); default_zero(\$v2559\); 
          default_zero(\$v4523\); default_zero(\$v2929\); 
          default_zero(\$v2576\); default_zero(\$v2863\); 
          default_zero(\$716_binop_int_result\); default_zero(\$v2816\); 
          default_zero(\$v1832\); default_zero(\$v1540_init\); 
          default_zero(\$v2677\); default_zero(\$721_loop_push_id\); 
          default_zero(\$5406_v\); default_zero(\$v1507\); 
          default_zero(\$719_make_block_n_result\); default_zero(\$v2880\); 
          default_zero(\$5266_v\); default_zero(\$v4265\); 
          default_zero(\$5384_v\); default_zero(\$904_sp\); 
          default_zero(\$5377_v\); default_zero(\$723_w_arg\); 
          default_zero(\$v2878\); default_zero(\$v2881\); 
          default_zero(\$v1831\); default_zero(\$v2571\); 
          default_zero(\$1177_sp\); default_zero(\$1330_sp\); 
          default_zero(\$v188\); default_zero(\$709_loop_result\); 
          default_zero(\$v2810\); default_zero(\$v4464\); 
          default_zero(rdy4151); default_zero(\$v2840\); 
          default_zero(\$5169_v\); default_zero(\$v2828\); 
          default_zero(\$v1825\); default_zero(\$823_sp\); 
          default_zero(\$v2659\); default_zero(\$v2851\); 
          default_zero(\$v2871\); default_zero(\$905_sp\); 
          default_zero(\$v2906\); default_zero(\$v2561\); 
          default_zero(\$5125\); default_zero(\$728_w1_result\); 
          default_zero(\$v2784\); default_zero(\$v2745\); 
          default_zero(\$v4542\); default_zero(\$714_apply_arg\); 
          default_zero(\$723_w_result\); default_zero(\$v2913\); 
          default_zero(\$v2903\); default_zero(\$5326_sp\); 
          default_zero(\$v2815\); default_zero(\$v2746\); 
          default_zero(\$v2661\); default_zero(\$5150_v\); 
          default_zero(\$5424_v\); default_zero(\$5054_v\); 
          default_zero(\$v2572\); default_zero(\$v2830\); 
          default_zero(\$v2759\); default_zero(\$v4176\); 
          default_zero(\$5202_v\); default_zero(\$v2826\); 
          default_zero(\$718_binop_compare_id\); 
          default_zero(\$722_compbranch_id\); default_zero(\$v2645\); 
          default_zero(\$v2924\); default_zero(\$5071_v\); 
          default_zero(\$v2807\); default_zero(\$v2843\); 
          default_zero(\$v4261\); default_zero(\$v2636_init\); 
          default_zero(\$1527\); default_zero(\$5265_sp\); 
          default_zero(\$v4280\); default_zero(\$1491\); 
          default_zero(\$v2895\); default_zero(\$727_w0_result\); 
          default_zero(\$1624_hd\); default_zero(\$5251_v\); 
          default_zero(\$722_compbranch_result\); default_zero(\$v1905\); 
          default_zero(\$v2767\); default_zero(\$v1507_init\); 
          default_zero(\$v2841\); default_zero(\$v2892\); 
          default_zero(\$v4506\); default_zero(\$v2831\); 
          default_zero(\$v2917\); default_zero(\$v2577\); 
          default_zero(\$v4257\); default_zero(\$v2896\); 
          default_zero(\$v2832\); default_zero(\$1194_res\); 
          default_zero(\$v2554\); default_zero(\$4959\); 
          default_zero(\$725_fill_arg\); default_zero(\$5139_v\); 
          default_zero(\$5047_v\); default_zero(\$v2575\); 
          default_zero(\$v2644\); default_zero(\$718_binop_compare_result\); 
          default_zero(\$724_w_arg\); default_zero(\$5260_sp\); 
          default_zero(\$5241_v\); default_zero(\$862_sp\); 
          default_zero(\$v2586\); default_zero(\$724_w_result\); 
          default_zero(\$v2570\); default_zero(\$v4182\); 
          default_zero(\$726_fill_id\); default_zero(\$v2872\); 
          default_zero(\$v1540\); default_zero(\$v2676\); 
          default_zero(\$717_compare_id\); default_zero(\$849\); 
          default_zero(\$5413_v\); default_zero(\$v4156\); 
          default_zero(\$v2927\); default_zero(\$v4226\); 
          default_zero(result2594); default_zero(\$v2908\); 
          default_zero(\$5210_v\); default_zero(\$v2568\); 
          default_zero(\$v2578\); default_zero(\$v2720\); 
          default_zero(\$v2721\); default_zero(\$v4212\); 
          default_zero(\$1036_sp\); default_zero(\$v2861\); 
          default_zero(\$747_argument1\); default_zero(\$711_loop_id\); 
          default_zero(\$v2565\); default_zero(\$4957_hd\); 
          default_zero(\$561_b\); default_zero(\$5319_sp\); 
          default_zero(\$717_compare_arg\); default_zero(\$v2860\); 
          default_zero(\$v1534_init\); default_zero(\$714_apply_result\); 
          default_zero(\$v2765\); default_zero(\$v2563\); 
          default_zero(\$728_w1_id\); default_zero(\$v1814\); 
          default_zero(\$715_offsetclosure_n_result\); 
          default_zero(\$714_apply_id\); default_zero(\$713_id\); 
          default_zero(\$v2862\); default_zero(\$5401_v\); 
          default_zero(\$v2930\); default_zero(\$726_fill_arg\); 
          default_zero(\$v4240\); default_zero(\$v2823\); 
          default_zero(\$1137_sp\); default_zero(\$914_sp\); 
          default_zero(\$709_loop_arg\); default_zero(\$v4166\); 
          default_zero(\$5301\); default_zero(\$v2869\); 
          default_zero(\$4986_hd\); default_zero(\$v2889\); 
          default_zero(\$v4220\); default_zero(\$v2723\); 
          default_zero(\$906_sp\); default_zero(\$v4544\); 
          default_zero(\$719_make_block_n_id\); default_zero(\$v1829\); 
          default_zero(\$v2904\); default_zero(\$v4273\); 
          default_zero(\$v2905\); default_zero(\$5214_v\); 
          default_zero(\$709_loop_id\); default_zero(\$v2696\); 
          default_zero(\$v2834\); default_zero(\$v2824\); 
          default_zero(\$1540\); default_zero(\$1628_hd\); 
          default_zero(\$v2920\); default_zero(\$726_fill_result\); 
          default_zero(\$v2573\); default_zero(\$5238_v\); 
          default_zero(\$710_copy_root_in_ram_result\); 
          default_zero(\$5177_v\); default_zero(\$5190_v\); 
          default_zero(\$5148_v\); default_zero(\$5137_v\); 
          default_zero(\$v4230\); default_zero(\$v2579\); 
          default_zero(\$5146_v\); default_zero(\$v2932\); 
          default_zero(\$v2806\); default_zero(\$v1903\); 
          default_zero(\$v2664\); default_zero(\$5408_v\); 
          default_zero(\$v4234\); default_zero(\$v2766\); 
          default_zero(\$v2937\); default_zero(\$v2636\); 
          default_zero(\$v2790\); default_zero(\$v4216\); 
          default_zero(\$888\); default_zero(\$v2926\); 
          default_zero(\$5418_v\); default_zero(\$v2789\); 
          default_zero(\$5291\); default_zero(\$5066_v\); 
          default_zero(\$880_v\); default_zero(cy); default_zero(result1900); 
          default_zero(\$713_arg\); default_zero(\$v2589\); 
          default_zero(\$v2674\); default_zero(\$v2566\); 
          default_zero(\$v2776\); default_zero(\$v2870\); 
          default_zero(\$5345_v\); default_zero(\$5314\); 
          default_zero(\$727_w0_arg\); default_zero(\$5328\); 
          default_zero(\$710_copy_root_in_ram_id\); default_zero(\$766_sp\); 
          default_zero(\$715_offsetclosure_n_id\); default_zero(\$897_sp\); 
          default_zero(\$5261_v\); default_zero(\$v4197\); 
          default_zero(\$720_branch_if_result\); default_zero(\$v2894\); 
          default_zero(\$5226_v\); default_zero(\$765_sp\); 
          default_zero(\$5435_sp\); default_zero(\$959_f0\); 
          default_zero(\$v2901\); default_zero(\$v2933\); 
          default_zero(\$v2780\); default_zero(\$v4249\); 
          default_zero(\$1564\); default_zero(\$v2833\); 
          default_zero(\$v4488\); default_zero(\$5444_sp\); 
          default_zero(\$v2900\); default_zero(\$5428_v\); 
          default_zero(\$v2879\); default_zero(\$5117_v\); 
          default_zero(\$974\); default_zero(\$v4543\); 
          default_zero(\$1050\); default_zero(\$5391_v\); 
          default_zero(\$5250_sp\); default_zero(\$v2704\); 
          default_zero(\$v2914\); default_zero(\$v2923\); 
          default_zero(\$v2564\); default_zero(\$1277\); 
          default_zero(\$v4529\); default_zero(\$v2837\); 
          default_zero(\$5194_v\); default_zero(\$v4194\); 
          default_zero(\$727_w0_id\); default_zero(\$877_v\); 
          default_zero(\$806_sp\); default_zero(\$v2844\); 
          default_zero(\$v2897\); default_zero(\$v4229\); 
          default_zero(\$v2818\); default_zero(\$1542_next\); 
          default_zero(\$5192_v\); default_zero(\$v2873\); 
          default_zero(\$v2581\); default_zero(\$721_loop_push_arg\); 
          default_zero(\$1526_next\); default_zero(\$795_sp\); 
          default_zero(\$v2931\); default_zero(\$v14\); 
          default_zero(\$551_rdy\); default_zero(\$1216_res\); 
          default_zero(\$1528_next\); default_zero(\$v1828\); 
          default_zero(\$886_ofs\); default_zero(\$v1500\); 
          default_zero(\$5370_v\); default_zero(\$v2934\); 
          default_zero(rdy1901); default_zero(\$4984_w\); 
          default_zero(\$5276_v\); default_zero(\$v4207\); 
          default_zero(\$724_w_id\); default_zero(\$774\); 
          default_zero(\$5430_v\); default_zero(\$965\); 
          default_zero(\$711_loop_arg\); default_zero(\$v1522_init\); 
          default_zero(\$v455\); default_zero(\$817_sp\); 
          default_zero(\$793_v\); default_zero(\$712_aux_id\); 
          default_zero(\$5076_v\); default_zero(\$799_v\); 
          default_zero(\$755_sp\); default_zero(\$v2660\); 
          default_zero(\$1125_b\); default_zero(\$v2781\); 
          default_zero(\$5256_v\); default_zero(\$5013_hd\); 
          default_zero(\$5305_sp\); default_zero(\$v4246\); 
          default_zero(\$950_sp\); default_zero(\$v2783\); 
          default_zero(\$5312_sp\); default_zero(\$725_fill_id\); 
          default_zero(\$v4478\); default_zero(\$5355_v\); 
          default_zero(\$1053\); default_zero(\$v2768\); 
          default_zero(\$v2854\); default_zero(\$1310_sp\); 
          default_zero(\$v2762\); default_zero(\$v2812\); 
          default_zero(\$v2935\); default_zero(\$v2764\); 
          default_zero(\$v4244\); default_zero(\$v2809\); 
          default_zero(\$969_next_env\); default_zero(\$v2748\); 
          default_zero(\$729_w3_id\); default_zero(\$5255_sp\); 
          default_zero(\$713_result\); default_zero(\$1579_hd\); 
          default_zero(\$981_v\); default_zero(\$v2580\); 
          default_zero(\$v2868\); default_zero(\$5296\); 
          default_zero(\$5232_v\); default_zero(\$v2820\); 
          default_zero(\$v2928\); default_zero(\$v2769\); 
          default_zero(\$4955_w\); default_zero(\$v4169\); 
          rdy <= "1";
          rdy1901 := "0";
          state <= compute1902;
          state_var4546 <= compute2596;
          state_var4545 <= compute4152;
          
        else if run = '1' then
          case state is
          when compute1902 =>
            rdy1901 := eclat_false;
            \$v4544\ := eclat_not(""&argument(10));
            if \$v4544\(0) = '1' then
              result1900 := ""&argument(11) & ""&argument(11) & ""&argument(11) & ""&argument(11) & ""&argument(11) & ""&argument(11) & ""&argument(11) & ""&argument(11) & ""&argument(11) & ""&argument(11) & X"63" & X"0" & X"3" & X"71" & X"71" & X"61" & X"61";
              rdy1901 := eclat_true;
              case compute1902_id is
              when others =>
                
              end case;
            else
              \$v4543\ := eclat_not(\$v1540_init\);
              if \$v4543\(0) = '1' then
                \$v1540\ := X"0000000" & X"0";
                \$v1540_init\ := eclat_true;
              end if;
              \$v1540\ := eclat_if(""&argument(11) & X"0000000" & X"0" & eclat_add(\$v1540\ & X"0000000" & X"1"));
              \$v1832\ := eclat_unit;
              cy := \$v1540\;
              \$v4542\ := eclat_not(\$v1507_init\);
              if \$v4542\(0) = '1' then
                \$v1507\ := eclat_false & eclat_false & eclat_false & eclat_false;
                \$v1507_init\ := eclat_true;
              end if;
              \$v4541\ := eclat_not(""&\$v1507\(2));
              if \$v4541\(0) = '1' then
                \$v2634\ := eclat_not(\$v1534_init\);
                if \$v2634\(0) = '1' then
                  \$v1534\ := eclat_unit & eclat_false;
                  \$v1534_init\ := eclat_true;
                end if;
                case state_var4546 is
                when pause_setI2597 =>
                  \$code_write_request\ <= '0';
                  \$v2589\ := eclat_unit;
                  \$v14\ := eclat_unit;
                  \$v1534\ := \$v14\ & eclat_true;
                  result2594 := eclat_unit;
                  rdy2595 := eclat_true;
                  state_var4546 <= compute2596;
                when pause_setI2598 =>
                  \$code_write_request\ <= '0';
                  \$v2588\ := eclat_unit;
                  \$code_ptr_write\ <= 34;
                  \$code_write_request\ <= '1';
                  \$code_write\ <= "000"& X"00000" & X"8f";
                  state_var4546 <= pause_setI2597;
                when pause_setI2599 =>
                  \$code_write_request\ <= '0';
                  \$v2587\ := eclat_unit;
                  \$code_ptr_write\ <= 33;
                  \$code_write_request\ <= '1';
                  \$code_write\ <= "000"& X"000000" & X"1";
                  state_var4546 <= pause_setI2598;
                when pause_setI2600 =>
                  \$code_write_request\ <= '0';
                  \$v2586\ := eclat_unit;
                  \$code_ptr_write\ <= 32;
                  \$code_write_request\ <= '1';
                  \$code_write\ <= "000"& X"00000" & X"13";
                  state_var4546 <= pause_setI2599;
                when pause_setI2601 =>
                  \$code_write_request\ <= '0';
                  \$v2585\ := eclat_unit;
                  \$code_ptr_write\ <= 31;
                  \$code_write_request\ <= '1';
                  \$code_write\ <= "000"& X"000000" & X"0";
                  state_var4546 <= pause_setI2600;
                when pause_setI2602 =>
                  \$code_write_request\ <= '0';
                  \$v2584\ := eclat_unit;
                  \$code_ptr_write\ <= 30;
                  \$code_write_request\ <= '1';
                  \$code_write\ <= "000"& X"00000" & X"5d";
                  state_var4546 <= pause_setI2601;
                when pause_setI2603 =>
                  \$code_write_request\ <= '0';
                  \$v2583\ := eclat_unit;
                  \$code_ptr_write\ <= 29;
                  \$code_write_request\ <= '1';
                  \$code_write\ <= "000"& X"00000" & X"21";
                  state_var4546 <= pause_setI2602;
                when pause_setI2604 =>
                  \$code_write_request\ <= '0';
                  \$v2582\ := eclat_unit;
                  \$code_ptr_write\ <= 28;
                  \$code_write_request\ <= '1';
                  \$code_write\ <= "000"& X"000000" & X"b";
                  state_var4546 <= pause_setI2603;
                when pause_setI2605 =>
                  \$code_write_request\ <= '0';
                  \$v2581\ := eclat_unit;
                  \$code_ptr_write\ <= 27;
                  \$code_write_request\ <= '1';
                  \$code_write\ <= "000"& X"000000" & X"b";
                  state_var4546 <= pause_setI2604;
                when pause_setI2606 =>
                  \$code_write_request\ <= '0';
                  \$v2580\ := eclat_unit;
                  \$code_ptr_write\ <= 26;
                  \$code_write_request\ <= '1';
                  \$code_write\ <= "000"& X"00000" & X"67";
                  state_var4546 <= pause_setI2605;
                when pause_setI2607 =>
                  \$code_write_request\ <= '0';
                  \$v2579\ := eclat_unit;
                  \$code_ptr_write\ <= 25;
                  \$code_write_request\ <= '1';
                  \$code_write\ <= eclat_sub("000"& X"000000" & X"0" & "000"& X"00000" & X"17");
                  state_var4546 <= pause_setI2606;
                when pause_setI2608 =>
                  \$code_write_request\ <= '0';
                  \$v2578\ := eclat_unit;
                  \$code_ptr_write\ <= 24;
                  \$code_write_request\ <= '1';
                  \$code_write\ <= "000"& X"000000" & X"0";
                  state_var4546 <= pause_setI2607;
                when pause_setI2609 =>
                  \$code_write_request\ <= '0';
                  \$v2577\ := eclat_unit;
                  \$code_ptr_write\ <= 23;
                  \$code_write_request\ <= '1';
                  \$code_write\ <= "000"& X"000000" & X"1";
                  state_var4546 <= pause_setI2608;
                when pause_setI2610 =>
                  \$code_write_request\ <= '0';
                  \$v2576\ := eclat_unit;
                  \$code_ptr_write\ <= 22;
                  \$code_write_request\ <= '1';
                  \$code_write\ <= "000"& X"00000" & X"2c";
                  state_var4546 <= pause_setI2609;
                when pause_setI2611 =>
                  \$code_write_request\ <= '0';
                  \$v2575\ := eclat_unit;
                  \$code_ptr_write\ <= 21;
                  \$code_write_request\ <= '1';
                  \$code_write\ <= "000"& X"000000" & X"1";
                  state_var4546 <= pause_setI2610;
                when pause_setI2612 =>
                  \$code_write_request\ <= '0';
                  \$v2574\ := eclat_unit;
                  \$code_ptr_write\ <= 20;
                  \$code_write_request\ <= '1';
                  \$code_write\ <= "000"& X"00000" & X"28";
                  state_var4546 <= pause_setI2611;
                when pause_setI2613 =>
                  \$code_write_request\ <= '0';
                  \$v2573\ := eclat_unit;
                  \$code_ptr_write\ <= 19;
                  \$code_write_request\ <= '1';
                  \$code_write\ <= "000"& X"00000" & X"6e";
                  state_var4546 <= pause_setI2612;
                when pause_setI2614 =>
                  \$code_write_request\ <= '0';
                  \$v2572\ := eclat_unit;
                  \$code_ptr_write\ <= 18;
                  \$code_write_request\ <= '1';
                  \$code_write\ <= "000"& X"00000" & X"21";
                  state_var4546 <= pause_setI2613;
                when pause_setI2615 =>
                  \$code_write_request\ <= '0';
                  \$v2571\ := eclat_unit;
                  \$code_ptr_write\ <= 17;
                  \$code_write_request\ <= '1';
                  \$code_write\ <= "000"& X"00000" & X"32";
                  state_var4546 <= pause_setI2614;
                when pause_setI2616 =>
                  \$code_write_request\ <= '0';
                  \$v2570\ := eclat_unit;
                  \$code_ptr_write\ <= 16;
                  \$code_write_request\ <= '1';
                  \$code_write\ <= eclat_sub("000"& X"000000" & X"0" & "000"& X"000000" & X"1");
                  state_var4546 <= pause_setI2615;
                when pause_setI2617 =>
                  \$code_write_request\ <= '0';
                  \$v2569\ := eclat_unit;
                  \$code_ptr_write\ <= 15;
                  \$code_write_request\ <= '1';
                  \$code_write\ <= "000"& X"00000" & X"7f";
                  state_var4546 <= pause_setI2616;
                when pause_setI2618 =>
                  \$code_write_request\ <= '0';
                  \$v2568\ := eclat_unit;
                  \$code_ptr_write\ <= 14;
                  \$code_write_request\ <= '1';
                  \$code_write\ <= "000"& X"000000" & X"b";
                  state_var4546 <= pause_setI2617;
                when pause_setI2619 =>
                  \$code_write_request\ <= '0';
                  \$v2567\ := eclat_unit;
                  \$code_ptr_write\ <= 13;
                  \$code_write_request\ <= '1';
                  \$code_write\ <= "000"& X"00000" & X"21";
                  state_var4546 <= pause_setI2618;
                when pause_setI2620 =>
                  \$code_write_request\ <= '0';
                  \$v2566\ := eclat_unit;
                  \$code_ptr_write\ <= 12;
                  \$code_write_request\ <= '1';
                  \$code_write\ <= "000"& X"00000" & X"32";
                  state_var4546 <= pause_setI2619;
                when pause_setI2621 =>
                  \$code_write_request\ <= '0';
                  \$v2565\ := eclat_unit;
                  \$code_ptr_write\ <= 11;
                  \$code_write_request\ <= '1';
                  \$code_write\ <= eclat_sub("000"& X"000000" & X"0" & "000"& X"000000" & X"2");
                  state_var4546 <= pause_setI2620;
                when pause_setI2622 =>
                  \$code_write_request\ <= '0';
                  \$v2564\ := eclat_unit;
                  \$code_ptr_write\ <= 10;
                  \$code_write_request\ <= '1';
                  \$code_write\ <= "000"& X"00000" & X"7f";
                  state_var4546 <= pause_setI2621;
                when pause_setI2623 =>
                  \$code_write_request\ <= '0';
                  \$v2563\ := eclat_unit;
                  \$code_ptr_write\ <= 9;
                  \$code_write_request\ <= '1';
                  \$code_write\ <= "000"& X"000000" & X"0";
                  state_var4546 <= pause_setI2622;
                when pause_setI2624 =>
                  \$code_write_request\ <= '0';
                  \$v2562\ := eclat_unit;
                  \$code_ptr_write\ <= 8;
                  \$code_write_request\ <= '1';
                  \$code_write\ <= "000"& X"000000" & X"1";
                  state_var4546 <= pause_setI2623;
                when pause_setI2625 =>
                  \$code_write_request\ <= '0';
                  \$v2561\ := eclat_unit;
                  \$code_ptr_write\ <= 7;
                  \$code_write_request\ <= '1';
                  \$code_write\ <= "000"& X"00000" & X"28";
                  state_var4546 <= pause_setI2624;
                when pause_setI2626 =>
                  \$code_write_request\ <= '0';
                  \$v2560\ := eclat_unit;
                  \$code_ptr_write\ <= 6;
                  \$code_write_request\ <= '1';
                  \$code_write\ <= "000"& X"00000" & X"64";
                  state_var4546 <= pause_setI2625;
                when pause_setI2627 =>
                  \$code_write_request\ <= '0';
                  \$v2559\ := eclat_unit;
                  \$code_ptr_write\ <= 5;
                  \$code_write_request\ <= '1';
                  \$code_write\ <= "000"& X"000000" & X"4";
                  state_var4546 <= pause_setI2626;
                when pause_setI2628 =>
                  \$code_write_request\ <= '0';
                  \$v2558\ := eclat_unit;
                  \$code_ptr_write\ <= 4;
                  \$code_write_request\ <= '1';
                  \$code_write\ <= "000"& X"000000" & X"2";
                  state_var4546 <= pause_setI2627;
                when pause_setI2629 =>
                  \$code_write_request\ <= '0';
                  \$v2557\ := eclat_unit;
                  \$code_ptr_write\ <= 3;
                  \$code_write_request\ <= '1';
                  \$code_write\ <= "000"& X"00000" & X"86";
                  state_var4546 <= pause_setI2628;
                when pause_setI2630 =>
                  \$code_write_request\ <= '0';
                  \$v2556\ := eclat_unit;
                  \$code_ptr_write\ <= 2;
                  \$code_write_request\ <= '1';
                  \$code_write\ <= "000"& X"000000" & X"0";
                  state_var4546 <= pause_setI2629;
                when pause_setI2631 =>
                  \$code_write_request\ <= '0';
                  \$v2555\ := eclat_unit;
                  \$code_ptr_write\ <= 1;
                  \$code_write_request\ <= '1';
                  \$code_write\ <= "000"& X"00000" & X"15";
                  state_var4546 <= pause_setI2630;
                when pause_setI2632 =>
                  \$global_end_write_request\ <= '0';
                  \$v2554\ := eclat_unit;
                  \$code_ptr_write\ <= 0;
                  \$code_write_request\ <= '1';
                  \$code_write\ <= "000"& X"00000" & X"54";
                  state_var4546 <= pause_setI2631;
                when compute2596 =>
                  rdy2595 := eclat_false;
                  \$v1534\ := eclat_unit & eclat_false;
                  \$v2553\ := eclat_unit;
                  \$global_end_ptr_write\ <= 0;
                  \$global_end_write_request\ <= '1';
                  \$global_end_write\ <= eclat_add(X"3e80" & X"000" & X"c");
                  state_var4546 <= pause_setI2632;
                end case;
                \$v1831\ := result2594;
                \$v1829\ := \$v1534\;
                \$v1905\ := eclat_not(\$v1533_init\);
                if \$v1905\(0) = '1' then
                  \$v1533\ := eclat_false;
                  \$v1533_init\ := eclat_true;
                end if;
                \$v1533\ := eclat_and(eclat_if(\$v1533\ & eclat_true & ""&\$v1829\(1)) & eclat_not(eclat_false));
                \$v1830\ := eclat_unit;
                \$551_rdy\ := \$v1533\;
                \$v451\ := eclat_false & eclat_true & \$551_rdy\ & ""&\$v1507\(3);
                \$v1507\ := \$v451\;
                \$v1820\ := eclat_unit;
                \$v1819\ := \$v1507\;
                \$v1813\ := ""&\$v1819\(0) & eclat_not(""&\$v1819\(1)) & ""&\$v1819\(3);
                \$v1904\ := ""&\$v1813\(0);
                if \$v1904\(0) = '1' then
                  eclat_print_string(of_string("(cy="));
                  
                  eclat_print_int(cy);
                  
                  eclat_print_string(of_string(")"));
                  
                  eclat_print_newline(eclat_unit);
                  
                  \$v1903\ := eclat_not(\$v1500_init\);
                  if \$v1903\(0) = '1' then
                    \$v1500\ := X"0000000" & X"0";
                    \$v1500_init\ := eclat_true;
                  end if;
                  \$v1500\ := eclat_if(eclat_eq(\$v1500\ & eclat_add(X"00" & X"989680" & X"00" & X"989680")) & X"0000000" & X"0" & eclat_add(\$v1500\ & X"0000000" & X"1"));
                  \$v1815\ := eclat_unit;
                  \$v455\ := \$v1500\;
                  \$561_b\ := eclat_gt(\$v455\ & X"00" & X"989680");
                  result1900 := ""&\$v1813\(0) & ""&\$v1813\(1) & \$561_b\ & ""&\$v1813\(2) & eclat_false & eclat_false & eclat_false & eclat_false & eclat_false & eclat_false & X"0" & X"3" & X"0" & X"3" & X"0" & X"3" & X"0" & X"3" & X"0" & X"3" & X"0" & X"3";
                  rdy1901 := eclat_true;
                  case compute1902_id is
                  when others =>
                    
                  end case;
                else
                  \$v1814\ := eclat_unit;
                  \$v1903\ := eclat_not(\$v1500_init\);
                  if \$v1903\(0) = '1' then
                    \$v1500\ := X"0000000" & X"0";
                    \$v1500_init\ := eclat_true;
                  end if;
                  \$v1500\ := eclat_if(eclat_eq(\$v1500\ & eclat_add(X"00" & X"989680" & X"00" & X"989680")) & X"0000000" & X"0" & eclat_add(\$v1500\ & X"0000000" & X"1"));
                  \$v1815\ := eclat_unit;
                  \$v455\ := \$v1500\;
                  \$561_b\ := eclat_gt(\$v455\ & X"00" & X"989680");
                  result1900 := ""&\$v1813\(0) & ""&\$v1813\(1) & \$561_b\ & ""&\$v1813\(2) & eclat_false & eclat_false & eclat_false & eclat_false & eclat_false & eclat_false & X"0" & X"3" & X"0" & X"3" & X"0" & X"3" & X"0" & X"3" & X"0" & X"3" & X"0" & X"3";
                  rdy1901 := eclat_true;
                  case compute1902_id is
                  when others =>
                    
                  end case;
                end if;
              else
                \$v4540\ := eclat_not(\$v1522_init\);
                if \$v4540\(0) = '1' then
                  \$v1522\ := X"000" & X"0" & "000"& X"000000" & X"1" & eclat_true & X"0" & X"3e8" & "000"& X"000000" & X"1" & eclat_true & X"0" & X"0" & X"000" & X"0" & eclat_false & eclat_false & eclat_true;
                  \$v1522_init\ := eclat_true;
                end if;
                \$v4539\ := eclat_not(""&\$v1507\(2));
                if \$v4539\(0) = '1' then
                  \$v188\ := \$v1522\(0 to 121) & eclat_true;
                  \$v1522\ := \$v188\;
                  \$v1825\ := eclat_unit;
                  \$v1824\ := \$v1522\;
                  \$v451\ := ""&\$v1824\(120) & ""&\$v1824\(122) & ""&\$v1507\(2) & ""&\$v1824\(121);
                  \$v1507\ := \$v451\;
                  \$v1820\ := eclat_unit;
                  \$v1819\ := \$v1507\;
                  \$v1813\ := ""&\$v1819\(0) & eclat_not(""&\$v1819\(1)) & ""&\$v1819\(3);
                  \$v1904\ := ""&\$v1813\(0);
                  if \$v1904\(0) = '1' then
                    eclat_print_string(of_string("(cy="));
                    
                    eclat_print_int(cy);
                    
                    eclat_print_string(of_string(")"));
                    
                    eclat_print_newline(eclat_unit);
                    
                    \$v1903\ := eclat_not(\$v1500_init\);
                    if \$v1903\(0) = '1' then
                      \$v1500\ := X"0000000" & X"0";
                      \$v1500_init\ := eclat_true;
                    end if;
                    \$v1500\ := eclat_if(eclat_eq(\$v1500\ & eclat_add(X"00" & X"989680" & X"00" & X"989680")) & X"0000000" & X"0" & eclat_add(\$v1500\ & X"0000000" & X"1"));
                    \$v1815\ := eclat_unit;
                    \$v455\ := \$v1500\;
                    \$561_b\ := eclat_gt(\$v455\ & X"00" & X"989680");
                    result1900 := ""&\$v1813\(0) & ""&\$v1813\(1) & \$561_b\ & ""&\$v1813\(2) & eclat_false & eclat_false & eclat_false & eclat_false & eclat_false & eclat_false & X"0" & X"3" & X"0" & X"3" & X"0" & X"3" & X"0" & X"3" & X"0" & X"3" & X"0" & X"3";
                    rdy1901 := eclat_true;
                    case compute1902_id is
                    when others =>
                      
                    end case;
                  else
                    \$v1814\ := eclat_unit;
                    \$v1903\ := eclat_not(\$v1500_init\);
                    if \$v1903\(0) = '1' then
                      \$v1500\ := X"0000000" & X"0";
                      \$v1500_init\ := eclat_true;
                    end if;
                    \$v1500\ := eclat_if(eclat_eq(\$v1500\ & eclat_add(X"00" & X"989680" & X"00" & X"989680")) & X"0000000" & X"0" & eclat_add(\$v1500\ & X"0000000" & X"1"));
                    \$v1815\ := eclat_unit;
                    \$v455\ := \$v1500\;
                    \$561_b\ := eclat_gt(\$v455\ & X"00" & X"989680");
                    result1900 := ""&\$v1813\(0) & ""&\$v1813\(1) & \$561_b\ & ""&\$v1813\(2) & eclat_false & eclat_false & eclat_false & eclat_false & eclat_false & eclat_false & X"0" & X"3" & X"0" & X"3" & X"0" & X"3" & X"0" & X"3" & X"0" & X"3" & X"0" & X"3";
                    rdy1901 := eclat_true;
                    case compute1902_id is
                    when others =>
                      
                    end case;
                  end if;
                else
                  \$v4538\ := eclat_not(\$v1526_init\);
                  if \$v4538\(0) = '1' then
                    \$v1526\ := \$v1522\(0 to 121) & eclat_false;
                    \$v1526_init\ := eclat_true;
                  end if;
                  case state_var4545 is
                  when \$709_loop\ =>
                    \$v4156\ := eclat_ge(\$709_loop_arg\(0 to 15) & \$709_loop_arg\(32 to 47));
                    if \$v4156\(0) = '1' then
                      \$709_loop_result\ := eclat_unit;
                      case \$709_loop_id\ is
                      when X"00" & X"1" =>
                        \$v2659\ := \$709_loop_result\;
                        \$ram_ptr_write\ <= to_integer(unsigned(eclat_resize(\$1564\(0 to 30),16)));
                        \$ram_write_request\ <= '1';
                        \$ram_write\ <= eclat_resize(\$710_copy_root_in_ram_arg\(32 to 47),31) & eclat_false;
                        state_var4545 <= pause_setI4159;
                      when X"00" & X"2" =>
                        \$v2675\ := \$709_loop_result\;
                        \$ram_ptr_write\ <= to_integer(unsigned(eclat_resize(\$1553\(0 to 30),16)));
                        \$ram_write_request\ <= '1';
                        \$ram_write\ <= eclat_resize(\$711_loop_arg\(16 to 31),31) & eclat_false;
                        state_var4545 <= pause_setI4172;
                      when X"00" & X"7" =>
                        \$v2721\ := \$709_loop_result\;
                        \$ram_ptr_write\ <= to_integer(unsigned(eclat_resize(\$713_arg\(48 to 78),16)));
                        \$ram_write_request\ <= '1';
                        \$ram_write\ <= eclat_resize(\$v2703\(32 to 47),31) & eclat_false;
                        state_var4545 <= pause_setI4190;
                      when X"00" & X"8" =>
                        \$v2734\ := \$709_loop_result\;
                        \$ram_ptr_write\ <= to_integer(unsigned(eclat_resize(\$713_arg\(16 to 46),16)));
                        \$ram_write_request\ <= '1';
                        \$ram_write\ <= eclat_resize(\$v2636\(112 to 127),31) & eclat_false;
                        state_var4545 <= pause_setI4199;
                      when others =>
                        
                      end case;
                    else
                      \$ram_ptr\ <= to_integer(unsigned(eclat_add(\$709_loop_arg\(16 to 31) & \$709_loop_arg\(0 to 15))));
                      state_var4545 <= pause_getI4154;
                    end if;
                  when \$710_copy_root_in_ram\ =>
                    \$v4169\ := eclat_ge(\$710_copy_root_in_ram_arg\(0 to 15) & \$710_copy_root_in_ram_arg\(16 to 31));
                    if \$v4169\(0) = '1' then
                      \$710_copy_root_in_ram_result\ := \$710_copy_root_in_ram_arg\(32 to 47);
                      case \$710_copy_root_in_ram_id\ is
                      when X"00" & X"5" =>
                        \$1528_next\ := \$710_copy_root_in_ram_result\;
                        eclat_print_string(of_string("======================================="));
                        
                        eclat_print_newline(eclat_unit);
                        
                        \$712_aux_id\ := X"00" & X"4";
                        \$712_aux_arg\ := \$v2636\(112 to 127) & \$1528_next\ & \$v2636\(96 to 111) & \$v2636\(112 to 127) & \$713_arg\(104 to 119);
                        state_var4545 <= \$712_aux\;
                      when X"00" & X"6" =>
                        \$1526_next\ := \$710_copy_root_in_ram_result\;
                        \$global_end_ptr\ <= 0;
                        state_var4545 <= pause_getI4187;
                      when others =>
                        
                      end case;
                    else
                      eclat_print_string(of_string("racine:"));
                      
                      eclat_print_int(\$710_copy_root_in_ram_arg\(0 to 15));
                      
                      eclat_print_newline(eclat_unit);
                      
                      \$ram_ptr\ <= to_integer(unsigned(\$710_copy_root_in_ram_arg\(0 to 15)));
                      state_var4545 <= pause_getI4167;
                    end if;
                  when \$711_loop\ =>
                    \$v4182\ := eclat_ge(\$711_loop_arg\(0 to 15) & \$711_loop_arg\(32 to 47));
                    if \$v4182\(0) = '1' then
                      \$711_loop_result\ := \$711_loop_arg\(16 to 31);
                      \$1542_next\ := \$711_loop_result\;
                      \$712_aux_arg\ := eclat_add(\$712_aux_arg\(0 to 15) & eclat_add(\$1540\ & X"000" & X"1")) & \$1542_next\ & \$712_aux_arg\(32 to 47) & \$712_aux_arg\(48 to 63) & \$712_aux_arg\(64 to 79);
                      state_var4545 <= \$712_aux\;
                    else
                      \$ram_ptr\ <= to_integer(unsigned(eclat_add(\$711_loop_arg\(80 to 95) & \$711_loop_arg\(0 to 15))));
                      state_var4545 <= pause_getI4180;
                    end if;
                  when \$712_aux\ =>
                    eclat_print_string(of_string("     scan="));
                    
                    eclat_print_int(\$712_aux_arg\(0 to 15));
                    
                    eclat_print_string(of_string(" | next="));
                    
                    eclat_print_int(\$712_aux_arg\(16 to 31));
                    
                    eclat_print_newline(eclat_unit);
                    
                    \$v4185\ := eclat_ge(\$712_aux_arg\(0 to 15) & \$712_aux_arg\(16 to 31));
                    if \$v4185\(0) = '1' then
                      \$712_aux_result\ := \$712_aux_arg\(16 to 31);
                      \$1529_next\ := \$712_aux_result\;
                      eclat_print_string(of_string("memory copied in to_space : "));
                      
                      eclat_print_int(eclat_sub(\$1529_next\ & \$v2636\(112 to 127)));
                      
                      eclat_print_string(of_string(" words"));
                      
                      eclat_print_newline(eclat_unit);
                      
                      \$v2696\ := \$v2703\(0 to 31) & \$v2704\(0 to 31) & \$1529_next\;
                      eclat_print_newline(eclat_unit);
                      
                      eclat_print_newline(eclat_unit);
                      
                      eclat_print_string(of_string("[================= GC END ======================]"));
                      
                      eclat_print_newline(eclat_unit);
                      
                      eclat_print_newline(eclat_unit);
                      
                      \$1491\ := \$v2696\(0 to 31) & \$v2696\(32 to 63) & \$v2696\(64 to 79) & eclat_add(\$v2696\(64 to 79) & eclat_add(
                      eclat_if(eclat_eq(\$713_arg\(88 to 103) & X"000" & X"0") & X"000" & X"1" & \$713_arg\(88 to 103)) & X"000" & X"1")) & \$v2636\(112 to 127) & \$v2636\(96 to 111);
                      \$v2636\ := \$1491\;
                      \$v2695\ := eclat_unit;
                      \$v2694\ := \$v2636\;
                      \$v2685\ := \$v2694\(0 to 31) & \$v2694\(32 to 63) & \$v2694\(64 to 79);
                      eclat_print_string(of_string("size:"));
                      
                      eclat_print_int(eclat_if(eclat_eq(\$713_arg\(88 to 103) & X"000" & X"0") & X"000" & X"1" & \$713_arg\(88 to 103)));
                      
                      eclat_print_newline(eclat_unit);
                      
                      \$ram_ptr_write\ <= to_integer(unsigned(\$v2685\(64 to 79)));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= eclat_lor(eclat_lsl(eclat_resize(\$713_arg\(80 to 87),31) & "000"& X"00000" & X"18") & eclat_lsl(eclat_resize(
                      eclat_if(eclat_eq(\$713_arg\(88 to 103) & X"000" & X"0") & X"000" & X"1" & \$713_arg\(88 to 103)),31) & "000"& X"000000" & X"2")) & eclat_true;
                      state_var4545 <= pause_setI4186;
                    else
                      \$ram_ptr\ <= to_integer(unsigned(\$712_aux_arg\(0 to 15)));
                      state_var4545 <= pause_getI4183;
                    end if;
                  when \$713\ =>
                    eclat_print_string(of_string("GC-ALLOC:(size="));
                    
                    eclat_print_int(eclat_add(eclat_if(eclat_eq(\$713_arg\(88 to 103) & X"000" & X"0") & X"000" & X"1" & \$713_arg\(88 to 103)) & X"000" & X"1"));
                    
                    eclat_print_string(of_string(")"));
                    
                    eclat_print_newline(eclat_unit);
                    
                    \$v4208\ := eclat_not(\$v2636_init\);
                    if \$v4208\(0) = '1' then
                      \$v2636\ := \$713_arg\(16 to 47) & \$713_arg\(48 to 79) & \$713_arg\(120 to 135) & \$713_arg\(120 to 135) & \$713_arg\(120 to 135) & eclat_add(\$713_arg\(120 to 135) & \$713_arg\(104 to 119));
                      \$v2636_init\ := eclat_true;
                    end if;
                    \$v4207\ := eclat_gt(eclat_add(\$v2636\(80 to 95) & eclat_add(
                    eclat_if(eclat_eq(\$713_arg\(88 to 103) & X"000" & X"0") & X"000" & X"1" & \$713_arg\(88 to 103)) & X"000" & X"1")) & eclat_add(\$v2636\(96 to 111) & \$713_arg\(104 to 119)));
                    if \$v4207\(0) = '1' then
                      eclat_print_newline(eclat_unit);
                      
                      eclat_print_newline(eclat_unit);
                      
                      eclat_print_string(of_string("[================= GC START ======================]"));
                      
                      eclat_print_newline(eclat_unit);
                      
                      eclat_print_newline(eclat_unit);
                      
                      \$v4206\ := eclat_not(eclat_if(eclat_not(""&\$713_arg\(47)) & 
                                            eclat_if(eclat_le(\$v2636\(96 to 111) & eclat_resize(\$713_arg\(16 to 46),16)) & eclat_lt(eclat_resize(\$713_arg\(16 to 46),16) & eclat_add(\$v2636\(96 to 111) & \$713_arg\(104 to 119))) & eclat_false) & eclat_false));
                      if \$v4206\(0) = '1' then
                        \$v2703\ := \$713_arg\(16 to 47) & \$v2636\(112 to 127);
                        \$v4197\ := eclat_not(eclat_if(eclat_not(""&\$713_arg\(79)) & 
                                              eclat_if(eclat_le(\$v2636\(96 to 111) & eclat_resize(\$713_arg\(48 to 78),16)) & eclat_lt(eclat_resize(\$713_arg\(48 to 78),16) & eclat_add(\$v2636\(96 to 111) & \$713_arg\(104 to 119))) & eclat_false) & eclat_false));
                        if \$v4197\(0) = '1' then
                          \$v2704\ := \$713_arg\(48 to 79) & \$v2703\(32 to 47);
                          \$710_copy_root_in_ram_id\ := X"00" & X"6";
                          \$710_copy_root_in_ram_arg\ := \$713_arg\(152 to 167) & \$713_arg\(0 to 15) & \$v2704\(32 to 47) & \$v2636\(96 to 111) & \$v2636\(112 to 127) & \$713_arg\(104 to 119);
                          state_var4545 <= \$710_copy_root_in_ram\;
                        else
                          \$ram_ptr\ <= to_integer(unsigned(eclat_add(eclat_resize(\$713_arg\(48 to 78),16) & X"000" & X"1")));
                          state_var4545 <= pause_getI4195;
                        end if;
                      else
                        \$ram_ptr\ <= to_integer(unsigned(eclat_add(eclat_resize(\$713_arg\(16 to 46),16) & X"000" & X"1")));
                        state_var4545 <= pause_getI4204;
                      end if;
                    else
                      \$1491\ := \$713_arg\(16 to 47) & \$713_arg\(48 to 79) & \$v2636\(80 to 95) & eclat_add(\$v2636\(80 to 95) & eclat_add(
                      eclat_if(eclat_eq(\$713_arg\(88 to 103) & X"000" & X"0") & X"000" & X"1" & \$713_arg\(88 to 103)) & X"000" & X"1")) & \$v2636\(96 to 111) & \$v2636\(112 to 127);
                      \$v2636\ := \$1491\;
                      \$v2695\ := eclat_unit;
                      \$v2694\ := \$v2636\;
                      \$v2685\ := \$v2694\(0 to 31) & \$v2694\(32 to 63) & \$v2694\(64 to 79);
                      eclat_print_string(of_string("size:"));
                      
                      eclat_print_int(eclat_if(eclat_eq(\$713_arg\(88 to 103) & X"000" & X"0") & X"000" & X"1" & \$713_arg\(88 to 103)));
                      
                      eclat_print_newline(eclat_unit);
                      
                      \$ram_ptr_write\ <= to_integer(unsigned(\$v2685\(64 to 79)));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= eclat_lor(eclat_lsl(eclat_resize(\$713_arg\(80 to 87),31) & "000"& X"00000" & X"18") & eclat_lsl(eclat_resize(
                      eclat_if(eclat_eq(\$713_arg\(88 to 103) & X"000" & X"0") & X"000" & X"1" & \$713_arg\(88 to 103)),31) & "000"& X"000000" & X"2")) & eclat_true;
                      state_var4545 <= pause_setI4186;
                    end if;
                  when \$714_apply\ =>
                    eclat_print_string(of_string("ENV:"));
                    
                    eclat_print_int(\$714_apply_arg\(92 to 122));
                    
                    eclat_print_string(of_string("<"));
                    
                    \$v4230\ := ""&\$714_apply_arg\(123);
                    if \$v4230\(0) = '1' then
                      eclat_print_string(of_string("int"));
                      
                      eclat_print_string(of_string(">"));
                      
                      eclat_print_newline(eclat_unit);
                      
                      \$v4229\ := ""&\$714_apply_arg\(0);
                      if \$v4229\(0) = '1' then
                        \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$714_apply_arg\(76 to 91) & X"000" & X"1")));
                        state_var4545 <= pause_getI4227;
                      else
                        \$v2745\ := "000"& X"000000" & X"1" & eclat_true & \$714_apply_arg\(76 to 91);
                        \$v4226\ := ""&\$714_apply_arg\(1);
                        if \$v4226\(0) = '1' then
                          \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$v2745\(32 to 47) & X"000" & X"1")));
                          state_var4545 <= pause_getI4224;
                        else
                          \$v2746\ := "000"& X"000000" & X"1" & eclat_true & \$v2745\(32 to 47);
                          \$v4223\ := ""&\$714_apply_arg\(2);
                          if \$v4223\(0) = '1' then
                            \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$v2746\(32 to 47) & X"000" & X"1")));
                            state_var4545 <= pause_getI4221;
                          else
                            \$v2747\ := "000"& X"000000" & X"1" & eclat_true & \$v2746\(32 to 47);
                            \$v4220\ := ""&\$714_apply_arg\(11);
                            if \$v4220\(0) = '1' then
                              \$1273_sp\ := eclat_add(eclat_sub(\$v2747\(32 to 47) & \$714_apply_arg\(12 to 27)) & \$714_apply_arg\(28 to 43));
                              \$v4216\ := ""&\$714_apply_arg\(2);
                              if \$v4216\(0) = '1' then
                                \$ram_ptr_write\ <= to_integer(unsigned(\$1273_sp\));
                                \$ram_write_request\ <= '1';
                                \$ram_write\ <= \$v2747\(0 to 31);
                                state_var4545 <= pause_setI4215;
                              else
                                \$1274_sp\ := \$1273_sp\;
                                \$v4214\ := ""&\$714_apply_arg\(1);
                                if \$v4214\(0) = '1' then
                                  \$ram_ptr_write\ <= to_integer(unsigned(\$1274_sp\));
                                  \$ram_write_request\ <= '1';
                                  \$ram_write\ <= \$v2746\(0 to 31);
                                  state_var4545 <= pause_setI4213;
                                else
                                  \$1275_sp\ := \$1274_sp\;
                                  \$v4212\ := ""&\$714_apply_arg\(0);
                                  if \$v4212\(0) = '1' then
                                    \$ram_ptr_write\ <= to_integer(unsigned(\$1275_sp\));
                                    \$ram_write_request\ <= '1';
                                    \$ram_write\ <= \$v2745\(0 to 31);
                                    state_var4545 <= pause_setI4211;
                                  else
                                    \$1276_sp\ := \$1275_sp\;
                                    \$ram_ptr\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$714_apply_arg\(44 to 74),16) & X"000" & X"0") & X"000" & X"1")));
                                    state_var4545 <= pause_getI4209;
                                  end if;
                                end if;
                              end if;
                            else
                              \$ram_ptr_write\ <= to_integer(unsigned(\$v2747\(32 to 47)));
                              \$ram_write_request\ <= '1';
                              \$ram_write\ <= eclat_resize(\$714_apply_arg\(124 to 131),31) & eclat_true;
                              state_var4545 <= pause_setI4219;
                            end if;
                          end if;
                        end if;
                      end if;
                    else
                      eclat_print_string(of_string("ptr"));
                      
                      eclat_print_string(of_string(">"));
                      
                      eclat_print_newline(eclat_unit);
                      
                      \$v4229\ := ""&\$714_apply_arg\(0);
                      if \$v4229\(0) = '1' then
                        \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$714_apply_arg\(76 to 91) & X"000" & X"1")));
                        state_var4545 <= pause_getI4227;
                      else
                        \$v2745\ := "000"& X"000000" & X"1" & eclat_true & \$714_apply_arg\(76 to 91);
                        \$v4226\ := ""&\$714_apply_arg\(1);
                        if \$v4226\(0) = '1' then
                          \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$v2745\(32 to 47) & X"000" & X"1")));
                          state_var4545 <= pause_getI4224;
                        else
                          \$v2746\ := "000"& X"000000" & X"1" & eclat_true & \$v2745\(32 to 47);
                          \$v4223\ := ""&\$714_apply_arg\(2);
                          if \$v4223\(0) = '1' then
                            \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$v2746\(32 to 47) & X"000" & X"1")));
                            state_var4545 <= pause_getI4221;
                          else
                            \$v2747\ := "000"& X"000000" & X"1" & eclat_true & \$v2746\(32 to 47);
                            \$v4220\ := ""&\$714_apply_arg\(11);
                            if \$v4220\(0) = '1' then
                              \$1273_sp\ := eclat_add(eclat_sub(\$v2747\(32 to 47) & \$714_apply_arg\(12 to 27)) & \$714_apply_arg\(28 to 43));
                              \$v4216\ := ""&\$714_apply_arg\(2);
                              if \$v4216\(0) = '1' then
                                \$ram_ptr_write\ <= to_integer(unsigned(\$1273_sp\));
                                \$ram_write_request\ <= '1';
                                \$ram_write\ <= \$v2747\(0 to 31);
                                state_var4545 <= pause_setI4215;
                              else
                                \$1274_sp\ := \$1273_sp\;
                                \$v4214\ := ""&\$714_apply_arg\(1);
                                if \$v4214\(0) = '1' then
                                  \$ram_ptr_write\ <= to_integer(unsigned(\$1274_sp\));
                                  \$ram_write_request\ <= '1';
                                  \$ram_write\ <= \$v2746\(0 to 31);
                                  state_var4545 <= pause_setI4213;
                                else
                                  \$1275_sp\ := \$1274_sp\;
                                  \$v4212\ := ""&\$714_apply_arg\(0);
                                  if \$v4212\(0) = '1' then
                                    \$ram_ptr_write\ <= to_integer(unsigned(\$1275_sp\));
                                    \$ram_write_request\ <= '1';
                                    \$ram_write\ <= \$v2745\(0 to 31);
                                    state_var4545 <= pause_setI4211;
                                  else
                                    \$1276_sp\ := \$1275_sp\;
                                    \$ram_ptr\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$714_apply_arg\(44 to 74),16) & X"000" & X"0") & X"000" & X"1")));
                                    state_var4545 <= pause_getI4209;
                                  end if;
                                end if;
                              end if;
                            else
                              \$ram_ptr_write\ <= to_integer(unsigned(\$v2747\(32 to 47)));
                              \$ram_write_request\ <= '1';
                              \$ram_write\ <= eclat_resize(\$714_apply_arg\(124 to 131),31) & eclat_true;
                              state_var4545 <= pause_setI4219;
                            end if;
                          end if;
                        end if;
                      end if;
                    end if;
                  when \$715_offsetclosure_n\ =>
                    \$715_offsetclosure_n_result\ := \$715_offsetclosure_n_arg\(0 to 15) & eclat_resize(eclat_add(eclat_resize(\$715_offsetclosure_n_arg\(48 to 78),16) & \$715_offsetclosure_n_arg\(32 to 47)),31) & eclat_false & \$715_offsetclosure_n_arg\(16 to 31) & \$715_offsetclosure_n_arg\(80 to 135) & \$715_offsetclosure_n_arg\(136 to 137);
                    \$v8\ := \$715_offsetclosure_n_result\;
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when \$716_binop_int\ =>
                    \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$716_binop_int_arg\(65 to 80) & X"000" & X"1")));
                    state_var4545 <= pause_getI4232;
                  when \$717_compare\ =>
                    \$v4234\ := \$717_compare_arg\(0 to 31);
                    case \$v4234\ is
                    when X"0000000" & X"0" =>
                      \$717_compare_result\ := eclat_eq(\$717_compare_arg\(32 to 62) & \$717_compare_arg\(63 to 93));
                      case \$717_compare_id\ is
                      when X"00" & X"9" =>
                        \$1194_res\ := \$717_compare_result\;
                        \$718_binop_compare_result\ := \$718_binop_compare_arg\(138 to 153) & 
                        eclat_if(\$1194_res\ & "000"& X"000000" & X"1" & "000"& X"000000" & X"0") & eclat_true & \$v2762\(32 to 47) & \$718_binop_compare_arg\(80 to 135) & \$718_binop_compare_arg\(136 to 137);
                        \$v8\ := \$718_binop_compare_result\;
                        \$v1526\ := \$v8\ & eclat_true;
                        result4150 := eclat_unit;
                        rdy4151 := eclat_true;
                        state_var4545 <= compute4152;
                      when X"00" & X"b" =>
                        \$1125_b\ := \$717_compare_result\;
                        \$722_compbranch_result\ := eclat_if(\$1125_b\ & eclat_add(\$722_compbranch_arg\(200 to 215) & eclat_resize(\$722_compbranch_arg\(63 to 93),16)) & \$722_compbranch_arg\(94 to 125) & \$722_compbranch_arg\(126 to 141) & \$722_compbranch_arg\(142 to 197) & \$722_compbranch_arg\(198 to 199) & \$722_compbranch_arg\(216 to 231) & \$722_compbranch_arg\(94 to 125) & \$722_compbranch_arg\(126 to 141) & \$722_compbranch_arg\(142 to 197) & \$722_compbranch_arg\(198 to 199));
                        \$v8\ := \$722_compbranch_result\;
                        \$v1526\ := \$v8\ & eclat_true;
                        result4150 := eclat_unit;
                        rdy4151 := eclat_true;
                        state_var4545 <= compute4152;
                      when others =>
                        
                      end case;
                    when X"0000000" & X"1" =>
                      \$717_compare_result\ := eclat_not(eclat_eq(\$717_compare_arg\(32 to 62) & \$717_compare_arg\(63 to 93)));
                      case \$717_compare_id\ is
                      when X"00" & X"9" =>
                        \$1194_res\ := \$717_compare_result\;
                        \$718_binop_compare_result\ := \$718_binop_compare_arg\(138 to 153) & 
                        eclat_if(\$1194_res\ & "000"& X"000000" & X"1" & "000"& X"000000" & X"0") & eclat_true & \$v2762\(32 to 47) & \$718_binop_compare_arg\(80 to 135) & \$718_binop_compare_arg\(136 to 137);
                        \$v8\ := \$718_binop_compare_result\;
                        \$v1526\ := \$v8\ & eclat_true;
                        result4150 := eclat_unit;
                        rdy4151 := eclat_true;
                        state_var4545 <= compute4152;
                      when X"00" & X"b" =>
                        \$1125_b\ := \$717_compare_result\;
                        \$722_compbranch_result\ := eclat_if(\$1125_b\ & eclat_add(\$722_compbranch_arg\(200 to 215) & eclat_resize(\$722_compbranch_arg\(63 to 93),16)) & \$722_compbranch_arg\(94 to 125) & \$722_compbranch_arg\(126 to 141) & \$722_compbranch_arg\(142 to 197) & \$722_compbranch_arg\(198 to 199) & \$722_compbranch_arg\(216 to 231) & \$722_compbranch_arg\(94 to 125) & \$722_compbranch_arg\(126 to 141) & \$722_compbranch_arg\(142 to 197) & \$722_compbranch_arg\(198 to 199));
                        \$v8\ := \$722_compbranch_result\;
                        \$v1526\ := \$v8\ & eclat_true;
                        result4150 := eclat_unit;
                        rdy4151 := eclat_true;
                        state_var4545 <= compute4152;
                      when others =>
                        
                      end case;
                    when X"0000000" & X"2" =>
                      \$717_compare_result\ := eclat_lt(\$717_compare_arg\(32 to 62) & \$717_compare_arg\(63 to 93));
                      case \$717_compare_id\ is
                      when X"00" & X"9" =>
                        \$1194_res\ := \$717_compare_result\;
                        \$718_binop_compare_result\ := \$718_binop_compare_arg\(138 to 153) & 
                        eclat_if(\$1194_res\ & "000"& X"000000" & X"1" & "000"& X"000000" & X"0") & eclat_true & \$v2762\(32 to 47) & \$718_binop_compare_arg\(80 to 135) & \$718_binop_compare_arg\(136 to 137);
                        \$v8\ := \$718_binop_compare_result\;
                        \$v1526\ := \$v8\ & eclat_true;
                        result4150 := eclat_unit;
                        rdy4151 := eclat_true;
                        state_var4545 <= compute4152;
                      when X"00" & X"b" =>
                        \$1125_b\ := \$717_compare_result\;
                        \$722_compbranch_result\ := eclat_if(\$1125_b\ & eclat_add(\$722_compbranch_arg\(200 to 215) & eclat_resize(\$722_compbranch_arg\(63 to 93),16)) & \$722_compbranch_arg\(94 to 125) & \$722_compbranch_arg\(126 to 141) & \$722_compbranch_arg\(142 to 197) & \$722_compbranch_arg\(198 to 199) & \$722_compbranch_arg\(216 to 231) & \$722_compbranch_arg\(94 to 125) & \$722_compbranch_arg\(126 to 141) & \$722_compbranch_arg\(142 to 197) & \$722_compbranch_arg\(198 to 199));
                        \$v8\ := \$722_compbranch_result\;
                        \$v1526\ := \$v8\ & eclat_true;
                        result4150 := eclat_unit;
                        rdy4151 := eclat_true;
                        state_var4545 <= compute4152;
                      when others =>
                        
                      end case;
                    when X"0000000" & X"3" =>
                      \$717_compare_result\ := eclat_if(eclat_lt(\$717_compare_arg\(32 to 62) & \$717_compare_arg\(63 to 93)) & eclat_true & eclat_eq(\$717_compare_arg\(32 to 62) & \$717_compare_arg\(63 to 93)));
                      case \$717_compare_id\ is
                      when X"00" & X"9" =>
                        \$1194_res\ := \$717_compare_result\;
                        \$718_binop_compare_result\ := \$718_binop_compare_arg\(138 to 153) & 
                        eclat_if(\$1194_res\ & "000"& X"000000" & X"1" & "000"& X"000000" & X"0") & eclat_true & \$v2762\(32 to 47) & \$718_binop_compare_arg\(80 to 135) & \$718_binop_compare_arg\(136 to 137);
                        \$v8\ := \$718_binop_compare_result\;
                        \$v1526\ := \$v8\ & eclat_true;
                        result4150 := eclat_unit;
                        rdy4151 := eclat_true;
                        state_var4545 <= compute4152;
                      when X"00" & X"b" =>
                        \$1125_b\ := \$717_compare_result\;
                        \$722_compbranch_result\ := eclat_if(\$1125_b\ & eclat_add(\$722_compbranch_arg\(200 to 215) & eclat_resize(\$722_compbranch_arg\(63 to 93),16)) & \$722_compbranch_arg\(94 to 125) & \$722_compbranch_arg\(126 to 141) & \$722_compbranch_arg\(142 to 197) & \$722_compbranch_arg\(198 to 199) & \$722_compbranch_arg\(216 to 231) & \$722_compbranch_arg\(94 to 125) & \$722_compbranch_arg\(126 to 141) & \$722_compbranch_arg\(142 to 197) & \$722_compbranch_arg\(198 to 199));
                        \$v8\ := \$722_compbranch_result\;
                        \$v1526\ := \$v8\ & eclat_true;
                        result4150 := eclat_unit;
                        rdy4151 := eclat_true;
                        state_var4545 <= compute4152;
                      when others =>
                        
                      end case;
                    when X"0000000" & X"4" =>
                      \$717_compare_result\ := eclat_not(eclat_if(eclat_lt(\$717_compare_arg\(32 to 62) & \$717_compare_arg\(63 to 93)) & eclat_true & eclat_eq(\$717_compare_arg\(32 to 62) & \$717_compare_arg\(63 to 93))));
                      case \$717_compare_id\ is
                      when X"00" & X"9" =>
                        \$1194_res\ := \$717_compare_result\;
                        \$718_binop_compare_result\ := \$718_binop_compare_arg\(138 to 153) & 
                        eclat_if(\$1194_res\ & "000"& X"000000" & X"1" & "000"& X"000000" & X"0") & eclat_true & \$v2762\(32 to 47) & \$718_binop_compare_arg\(80 to 135) & \$718_binop_compare_arg\(136 to 137);
                        \$v8\ := \$718_binop_compare_result\;
                        \$v1526\ := \$v8\ & eclat_true;
                        result4150 := eclat_unit;
                        rdy4151 := eclat_true;
                        state_var4545 <= compute4152;
                      when X"00" & X"b" =>
                        \$1125_b\ := \$717_compare_result\;
                        \$722_compbranch_result\ := eclat_if(\$1125_b\ & eclat_add(\$722_compbranch_arg\(200 to 215) & eclat_resize(\$722_compbranch_arg\(63 to 93),16)) & \$722_compbranch_arg\(94 to 125) & \$722_compbranch_arg\(126 to 141) & \$722_compbranch_arg\(142 to 197) & \$722_compbranch_arg\(198 to 199) & \$722_compbranch_arg\(216 to 231) & \$722_compbranch_arg\(94 to 125) & \$722_compbranch_arg\(126 to 141) & \$722_compbranch_arg\(142 to 197) & \$722_compbranch_arg\(198 to 199));
                        \$v8\ := \$722_compbranch_result\;
                        \$v1526\ := \$v8\ & eclat_true;
                        result4150 := eclat_unit;
                        rdy4151 := eclat_true;
                        state_var4545 <= compute4152;
                      when others =>
                        
                      end case;
                    when X"0000000" & X"5" =>
                      \$717_compare_result\ := eclat_not(eclat_lt(\$717_compare_arg\(32 to 62) & \$717_compare_arg\(63 to 93)));
                      case \$717_compare_id\ is
                      when X"00" & X"9" =>
                        \$1194_res\ := \$717_compare_result\;
                        \$718_binop_compare_result\ := \$718_binop_compare_arg\(138 to 153) & 
                        eclat_if(\$1194_res\ & "000"& X"000000" & X"1" & "000"& X"000000" & X"0") & eclat_true & \$v2762\(32 to 47) & \$718_binop_compare_arg\(80 to 135) & \$718_binop_compare_arg\(136 to 137);
                        \$v8\ := \$718_binop_compare_result\;
                        \$v1526\ := \$v8\ & eclat_true;
                        result4150 := eclat_unit;
                        rdy4151 := eclat_true;
                        state_var4545 <= compute4152;
                      when X"00" & X"b" =>
                        \$1125_b\ := \$717_compare_result\;
                        \$722_compbranch_result\ := eclat_if(\$1125_b\ & eclat_add(\$722_compbranch_arg\(200 to 215) & eclat_resize(\$722_compbranch_arg\(63 to 93),16)) & \$722_compbranch_arg\(94 to 125) & \$722_compbranch_arg\(126 to 141) & \$722_compbranch_arg\(142 to 197) & \$722_compbranch_arg\(198 to 199) & \$722_compbranch_arg\(216 to 231) & \$722_compbranch_arg\(94 to 125) & \$722_compbranch_arg\(126 to 141) & \$722_compbranch_arg\(142 to 197) & \$722_compbranch_arg\(198 to 199));
                        \$v8\ := \$722_compbranch_result\;
                        \$v1526\ := \$v8\ & eclat_true;
                        result4150 := eclat_unit;
                        rdy4151 := eclat_true;
                        state_var4545 <= compute4152;
                      when others =>
                        
                      end case;
                    when others =>
                      \$717_compare_result\ := eclat_false;
                      case \$717_compare_id\ is
                      when X"00" & X"9" =>
                        \$1194_res\ := \$717_compare_result\;
                        \$718_binop_compare_result\ := \$718_binop_compare_arg\(138 to 153) & 
                        eclat_if(\$1194_res\ & "000"& X"000000" & X"1" & "000"& X"000000" & X"0") & eclat_true & \$v2762\(32 to 47) & \$718_binop_compare_arg\(80 to 135) & \$718_binop_compare_arg\(136 to 137);
                        \$v8\ := \$718_binop_compare_result\;
                        \$v1526\ := \$v8\ & eclat_true;
                        result4150 := eclat_unit;
                        rdy4151 := eclat_true;
                        state_var4545 <= compute4152;
                      when X"00" & X"b" =>
                        \$1125_b\ := \$717_compare_result\;
                        \$722_compbranch_result\ := eclat_if(\$1125_b\ & eclat_add(\$722_compbranch_arg\(200 to 215) & eclat_resize(\$722_compbranch_arg\(63 to 93),16)) & \$722_compbranch_arg\(94 to 125) & \$722_compbranch_arg\(126 to 141) & \$722_compbranch_arg\(142 to 197) & \$722_compbranch_arg\(198 to 199) & \$722_compbranch_arg\(216 to 231) & \$722_compbranch_arg\(94 to 125) & \$722_compbranch_arg\(126 to 141) & \$722_compbranch_arg\(142 to 197) & \$722_compbranch_arg\(198 to 199));
                        \$v8\ := \$722_compbranch_result\;
                        \$v1526\ := \$v8\ & eclat_true;
                        result4150 := eclat_unit;
                        rdy4151 := eclat_true;
                        state_var4545 <= compute4152;
                      when others =>
                        
                      end case;
                    end case;
                  when \$718_binop_compare\ =>
                    \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$718_binop_compare_arg\(64 to 79) & X"000" & X"1")));
                    state_var4545 <= pause_getI4235;
                  when \$719_make_block_n\ =>
                    \$713_id\ := X"00" & X"a";
                    \$713_arg\ := \$719_make_block_n_arg\(16 to 31) & \$719_make_block_n_arg\(82 to 113) & \$719_make_block_n_arg\(114 to 145) & eclat_resize(\$719_make_block_n_arg\(35 to 65),8) & \$719_make_block_n_arg\(66 to 81) & \$719_make_block_n_arg\(172 to 187) & \$719_make_block_n_arg\(188 to 203) & \$719_make_block_n_arg\(204 to 219) & \$719_make_block_n_arg\(220 to 235);
                    state_var4545 <= \$713\;
                  when \$720_branch_if\ =>
                    \$v4249\ := eclat_if(""&\$720_branch_if_arg\(0) & eclat_not(eclat_neq(\$720_branch_if_arg\(1 to 31) & "000"& X"000000" & X"0")) & eclat_neq(\$720_branch_if_arg\(1 to 31) & "000"& X"000000" & X"0"));
                    if \$v4249\(0) = '1' then
                      \$code_ptr\ <= to_integer(unsigned(\$720_branch_if_arg\(107 to 122)));
                      state_var4545 <= pause_getI4247;
                    else
                      \$720_branch_if_result\ := \$720_branch_if_arg\(123 to 138) & \$720_branch_if_arg\(1 to 32) & \$720_branch_if_arg\(33 to 48) & \$720_branch_if_arg\(49 to 104) & \$720_branch_if_arg\(105 to 106);
                      \$v8\ := \$720_branch_if_result\;
                      \$v1526\ := \$v8\ & eclat_true;
                      result4150 := eclat_unit;
                      rdy4151 := eclat_true;
                      state_var4545 <= compute4152;
                    end if;
                  when \$721_loop_push\ =>
                    \$v4253\ := eclat_ge(\$721_loop_push_arg\(16 to 23) & \$721_loop_push_arg\(56 to 63));
                    if \$v4253\(0) = '1' then
                      \$721_loop_push_result\ := \$721_loop_push_arg\(0 to 15);
                      \$968_sp\ := \$721_loop_push_result\;
                      \$ram_ptr\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$v1522\(64 to 94),16) & X"000" & X"1") & X"000" & X"1")));
                      state_var4545 <= pause_getI4340;
                    else
                      \$ram_ptr\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$721_loop_push_arg\(24 to 54),16) & eclat_resize(eclat_add(\$721_loop_push_arg\(16 to 23) & X"0" & X"2"),16)) & X"000" & X"1")));
                      state_var4545 <= pause_getI4251;
                    end if;
                  when \$722_compbranch\ =>
                    \$717_compare_id\ := X"00" & X"b";
                    \$717_compare_arg\ := \$722_compbranch_arg\(0 to 31) & \$722_compbranch_arg\(32 to 62) & \$722_compbranch_arg\(94 to 124);
                    state_var4545 <= \$717_compare\;
                  when \$723_w\ =>
                    \$v4257\ := eclat_gt(\$723_w_arg\(0 to 7) & \$723_w_arg\(56 to 63));
                    if \$v4257\(0) = '1' then
                      \$723_w_result\ := \$723_w_arg\(8 to 23);
                      \$862_sp\ := \$723_w_result\;
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$862_sp\ & X"000" & X"1")));
                      state_var4545 <= pause_getI4431;
                    else
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$723_w_arg\(8 to 23) & X"000" & X"1")));
                      state_var4545 <= pause_getI4255;
                    end if;
                  when \$724_w\ =>
                    \$v4261\ := eclat_gt(\$724_w_arg\(0 to 15) & \$724_w_arg\(32 to 47));
                    if \$v4261\(0) = '1' then
                      \$724_w_result\ := eclat_unit;
                      \$v2811\ := \$724_w_result\;
                      \$ram_ptr\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$v1522\(16 to 46),16) & X"000" & X"0") & X"000" & X"1")));
                      state_var4545 <= pause_getI4502;
                    else
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$724_w_arg\(16 to 31) & \$724_w_arg\(0 to 15))));
                      state_var4545 <= pause_getI4259;
                    end if;
                  when \$725_fill\ =>
                    \$v4265\ := eclat_gt(\$725_fill_arg\(0 to 15) & \$725_fill_arg\(32 to 47));
                    if \$v4265\(0) = '1' then
                      \$725_fill_result\ := \$725_fill_arg\(16 to 31);
                      \$788_sp\ := \$725_fill_result\;
                      \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"3") & \$v2812\(64 to 95) & \$788_sp\ & \$v2812\(32 to 63) & \$v1522\(96 to 103) & \$v1522\(104 to 119) & \$v1522\(120 to 121);
                      \$v1526\ := \$v8\ & eclat_true;
                      result4150 := eclat_unit;
                      rdy4151 := eclat_true;
                      state_var4545 <= compute4152;
                    else
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$725_fill_arg\(16 to 31) & X"000" & X"1")));
                      state_var4545 <= pause_getI4263;
                    end if;
                  when \$726_fill\ =>
                    \$v4269\ := eclat_ge(\$726_fill_arg\(0 to 15) & \$726_fill_arg\(32 to 47));
                    if \$v4269\(0) = '1' then
                      \$726_fill_result\ := \$726_fill_arg\(16 to 31);
                      \$806_sp\ := \$726_fill_result\;
                      \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"3") & \$v2817\(64 to 95) & \$806_sp\ & \$v2817\(32 to 63) & \$v1522\(96 to 103) & \$v1522\(104 to 119) & \$v1522\(120 to 121);
                      \$v1526\ := \$v8\ & eclat_true;
                      result4150 := eclat_unit;
                      rdy4151 := eclat_true;
                      state_var4545 <= compute4152;
                    else
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$726_fill_arg\(16 to 31) & X"000" & X"1")));
                      state_var4545 <= pause_getI4267;
                    end if;
                  when \$727_w0\ =>
                    \$v4273\ := eclat_ge(\$727_w0_arg\(0 to 15) & \$727_w0_arg\(32 to 47));
                    if \$v4273\(0) = '1' then
                      \$727_w0_result\ := \$727_w0_arg\(16 to 31);
                      \$765_sp\ := \$727_w0_result\;
                      \$728_w1_id\ := X"0" & X"41";
                      \$728_w1_arg\ := X"000" & X"1" & \$v2806\(64 to 95) & eclat_resize(\$747_argument1\,16) & eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & eclat_add(\$v1522\(0 to 15) & X"000" & X"3") & X"f9";
                      state_var4545 <= \$728_w1\;
                    else
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$727_w0_arg\(16 to 31) & X"000" & X"1")));
                      state_var4545 <= pause_getI4271;
                    end if;
                  when \$728_w1\ =>
                    \$v4278\ := eclat_ge(\$728_w1_arg\(0 to 15) & \$728_w1_arg\(48 to 63));
                    if \$v4278\(0) = '1' then
                      \$728_w1_result\ := eclat_unit;
                      \$v2808\ := \$728_w1_result\;
                      \$ram_ptr_write\ <= to_integer(unsigned(\$765_sp\));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= \$v2806\(64 to 95);
                      state_var4545 <= pause_setI4517;
                    else
                      \$1048\ := \$728_w1_arg\(16 to 47) & eclat_sub(eclat_mult(X"000" & X"2" & \$728_w1_arg\(0 to 15)) & X"000" & X"1") & eclat_lor(eclat_lsl(eclat_resize(\$728_w1_arg\(96 to 103),31) & "000"& X"00000" & X"18") & eclat_lsl(eclat_resize(eclat_mult(X"000" & X"2" & \$728_w1_arg\(0 to 15)),31) & "000"& X"000000" & X"2")) & eclat_true;
                      \$ram_ptr_write\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$1048\(0 to 30),16) & \$1048\(32 to 47)) & X"000" & X"1")));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= \$1048\(48 to 79);
                      state_var4545 <= pause_setI4277;
                    end if;
                  when \$729_w3\ =>
                    \$v4280\ := eclat_ge(\$729_w3_arg\(0 to 15) & \$729_w3_arg\(64 to 79));
                    if \$v4280\(0) = '1' then
                      \$729_w3_result\ := \$729_w3_arg\(16 to 31);
                      \$767_sp\ := \$729_w3_result\;
                      \$v8\ := eclat_add(eclat_add(\$v1522\(0 to 15) & X"000" & X"3") & eclat_resize(\$747_argument1\,16)) & \$v2806\(64 to 95) & \$767_sp\ & \$v2806\(32 to 63) & \$v1522\(96 to 103) & \$v1522\(104 to 119) & \$v1522\(120 to 121);
                      \$v1526\ := \$v8\ & eclat_true;
                      result4150 := eclat_unit;
                      rdy4151 := eclat_true;
                      state_var4545 <= compute4152;
                    else
                      \$ram_ptr_write\ <= to_integer(unsigned(\$729_w3_arg\(16 to 31)));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= eclat_resize(eclat_add(eclat_resize(\$729_w3_arg\(32 to 62),16) & eclat_mult(X"000" & X"2" & \$729_w3_arg\(0 to 15))),31) & eclat_true;
                      state_var4545 <= pause_setI4279;
                    end if;
                  when pause_getI4281 =>
                    state_var4545 <= pause_getII4282;
                  when pause_getI4283 =>
                    state_var4545 <= pause_getII4284;
                  when pause_getI4285 =>
                    state_var4545 <= pause_getII4286;
                  when pause_getI4287 =>
                    state_var4545 <= pause_getII4288;
                  when pause_getI4289 =>
                    state_var4545 <= pause_getII4290;
                  when pause_getI4291 =>
                    state_var4545 <= pause_getII4292;
                  when pause_getI4293 =>
                    state_var4545 <= pause_getII4294;
                  when pause_getI4295 =>
                    state_var4545 <= pause_getII4296;
                  when pause_getI4299 =>
                    state_var4545 <= pause_getII4300;
                  when pause_getI4302 =>
                    state_var4545 <= pause_getII4303;
                  when pause_getI4305 =>
                    state_var4545 <= pause_getII4306;
                  when pause_getI4308 =>
                    state_var4545 <= pause_getII4309;
                  when pause_getI4311 =>
                    state_var4545 <= pause_getII4312;
                  when pause_getI4314 =>
                    state_var4545 <= pause_getII4315;
                  when pause_getI4317 =>
                    state_var4545 <= pause_getII4318;
                  when pause_getI4320 =>
                    state_var4545 <= pause_getII4321;
                  when pause_getI4322 =>
                    state_var4545 <= pause_getII4323;
                  when pause_getI4324 =>
                    state_var4545 <= pause_getII4325;
                  when pause_getI4326 =>
                    state_var4545 <= pause_getII4327;
                  when pause_getI4328 =>
                    state_var4545 <= pause_getII4329;
                  when pause_getI4331 =>
                    state_var4545 <= pause_getII4332;
                  when pause_getI4334 =>
                    state_var4545 <= pause_getII4335;
                  when pause_getI4337 =>
                    state_var4545 <= pause_getII4338;
                  when pause_getI4340 =>
                    state_var4545 <= pause_getII4341;
                  when pause_getI4342 =>
                    state_var4545 <= pause_getII4343;
                  when pause_getI4348 =>
                    state_var4545 <= pause_getII4349;
                  when pause_getI4350 =>
                    state_var4545 <= pause_getII4351;
                  when pause_getI4352 =>
                    state_var4545 <= pause_getII4353;
                  when pause_getI4354 =>
                    state_var4545 <= pause_getII4355;
                  when pause_getI4357 =>
                    state_var4545 <= pause_getII4358;
                  when pause_getI4360 =>
                    state_var4545 <= pause_getII4361;
                  when pause_getI4363 =>
                    state_var4545 <= pause_getII4364;
                  when pause_getI4366 =>
                    state_var4545 <= pause_getII4367;
                  when pause_getI4368 =>
                    state_var4545 <= pause_getII4369;
                  when pause_getI4370 =>
                    state_var4545 <= pause_getII4371;
                  when pause_getI4372 =>
                    state_var4545 <= pause_getII4373;
                  when pause_getI4375 =>
                    state_var4545 <= pause_getII4376;
                  when pause_getI4377 =>
                    state_var4545 <= pause_getII4378;
                  when pause_getI4379 =>
                    state_var4545 <= pause_getII4380;
                  when pause_getI4381 =>
                    state_var4545 <= pause_getII4382;
                  when pause_getI4384 =>
                    state_var4545 <= pause_getII4385;
                  when pause_getI4386 =>
                    state_var4545 <= pause_getII4387;
                  when pause_getI4388 =>
                    state_var4545 <= pause_getII4389;
                  when pause_getI4390 =>
                    state_var4545 <= pause_getII4391;
                  when pause_getI4392 =>
                    state_var4545 <= pause_getII4393;
                  when pause_getI4394 =>
                    state_var4545 <= pause_getII4395;
                  when pause_getI4396 =>
                    state_var4545 <= pause_getII4397;
                  when pause_getI4402 =>
                    state_var4545 <= pause_getII4403;
                  when pause_getI4404 =>
                    state_var4545 <= pause_getII4405;
                  when pause_getI4408 =>
                    state_var4545 <= pause_getII4409;
                  when pause_getI4410 =>
                    state_var4545 <= pause_getII4411;
                  when pause_getI4416 =>
                    state_var4545 <= pause_getII4417;
                  when pause_getI4418 =>
                    state_var4545 <= pause_getII4419;
                  when pause_getI4420 =>
                    state_var4545 <= pause_getII4421;
                  when pause_getI4422 =>
                    state_var4545 <= pause_getII4423;
                  when pause_getI4424 =>
                    state_var4545 <= pause_getII4425;
                  when pause_getI4427 =>
                    state_var4545 <= pause_getII4428;
                  when pause_getI4429 =>
                    state_var4545 <= pause_getII4430;
                  when pause_getI4431 =>
                    state_var4545 <= pause_getII4432;
                  when pause_getI4437 =>
                    state_var4545 <= pause_getII4438;
                  when pause_getI4439 =>
                    state_var4545 <= pause_getII4440;
                  when pause_getI4444 =>
                    state_var4545 <= pause_getII4445;
                  when pause_getI4447 =>
                    state_var4545 <= pause_getII4448;
                  when pause_getI4449 =>
                    state_var4545 <= pause_getII4450;
                  when pause_getI4451 =>
                    state_var4545 <= pause_getII4452;
                  when pause_getI4458 =>
                    state_var4545 <= pause_getII4459;
                  when pause_getI4462 =>
                    state_var4545 <= pause_getII4463;
                  when pause_getI4466 =>
                    state_var4545 <= pause_getII4467;
                  when pause_getI4468 =>
                    state_var4545 <= pause_getII4469;
                  when pause_getI4472 =>
                    state_var4545 <= pause_getII4473;
                  when pause_getI4474 =>
                    state_var4545 <= pause_getII4475;
                  when pause_getI4476 =>
                    state_var4545 <= pause_getII4477;
                  when pause_getI4480 =>
                    state_var4545 <= pause_getII4481;
                  when pause_getI4482 =>
                    state_var4545 <= pause_getII4483;
                  when pause_getI4484 =>
                    state_var4545 <= pause_getII4485;
                  when pause_getI4486 =>
                    state_var4545 <= pause_getII4487;
                  when pause_getI4490 =>
                    state_var4545 <= pause_getII4491;
                  when pause_getI4492 =>
                    state_var4545 <= pause_getII4493;
                  when pause_getI4494 =>
                    state_var4545 <= pause_getII4495;
                  when pause_getI4496 =>
                    state_var4545 <= pause_getII4497;
                  when pause_getI4500 =>
                    state_var4545 <= pause_getII4501;
                  when pause_getI4502 =>
                    state_var4545 <= pause_getII4503;
                  when pause_getI4507 =>
                    state_var4545 <= pause_getII4508;
                  when pause_getI4509 =>
                    state_var4545 <= pause_getII4510;
                  when pause_getI4511 =>
                    state_var4545 <= pause_getII4512;
                  when pause_getI4513 =>
                    state_var4545 <= pause_getII4514;
                  when pause_getI4521 =>
                    state_var4545 <= pause_getII4522;
                  when pause_getI4524 =>
                    state_var4545 <= pause_getII4525;
                  when pause_getI4527 =>
                    state_var4545 <= pause_getII4528;
                  when pause_getI4530 =>
                    state_var4545 <= pause_getII4531;
                  when pause_getI4533 =>
                    state_var4545 <= pause_getII4534;
                  when pause_getII4282 =>
                    \$5223_v\ := \$ram_value\;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$5223_v\ & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4284 =>
                    \$5226_v\ := \$ram_value\;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$5226_v\ & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4286 =>
                    \$5229_v\ := \$ram_value\;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$5229_v\ & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4288 =>
                    \$5232_v\ := \$ram_value\;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$5232_v\ & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4290 =>
                    \$5235_v\ := \$ram_value\;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$5235_v\ & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4292 =>
                    \$5238_v\ := \$ram_value\;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$5238_v\ & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4294 =>
                    \$5241_v\ := \$ram_value\;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$5241_v\ & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4296 =>
                    \$5244_v\ := \$ram_value\;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$5244_v\ & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4300 =>
                    \$5251_v\ := \$ram_value\;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$5251_v\ & \$5250_sp\ & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4303 =>
                    \$5256_v\ := \$ram_value\;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$5256_v\ & \$5255_sp\ & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4306 =>
                    \$5261_v\ := \$ram_value\;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$5261_v\ & \$5260_sp\ & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4309 =>
                    \$5266_v\ := \$ram_value\;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$5266_v\ & \$5265_sp\ & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4312 =>
                    \$5271_v\ := \$ram_value\;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$5271_v\ & \$5270_sp\ & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4315 =>
                    \$5276_v\ := \$ram_value\;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$5276_v\ & \$5275_sp\ & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4318 =>
                    \$5281_v\ := \$ram_value\;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$5281_v\ & \$5280_sp\ & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4321 =>
                    \$5286\ := \$ram_value\;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$5286\ & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4323 =>
                    \$5291\ := \$ram_value\;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$5291\ & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4325 =>
                    \$5296\ := \$ram_value\;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$5296\ & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4327 =>
                    \$5301\ := \$ram_value\;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$5301\ & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4329 =>
                    \$5307\ := \$ram_value\;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$5307\ & \$5305_sp\ & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4332 =>
                    \$5314\ := \$ram_value\;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$5314\ & \$5312_sp\ & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4335 =>
                    \$5321\ := \$ram_value\;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$5321\ & \$5319_sp\ & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4338 =>
                    \$5328\ := \$ram_value\;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$5328\ & \$5326_sp\ & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4341 =>
                    \$969_next_env\ := \$ram_value\;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$v1522\(16 to 47) & \$968_sp\ & \$969_next_env\ & eclat_add(\$v1522\(96 to 103) & eclat_sub(eclat_resize(\$965\,8) & X"0" & X"2")) & \$v1522\(104 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4343 =>
                    \$1628_hd\ := \$ram_value\;
                    \$965\ := eclat_resize(eclat_lsr(eclat_resize(eclat_resize(\$1628_hd\(0 to 30),16),31) & "000"& X"000000" & X"2"),16);
                    \$721_loop_push_id\ := X"00" & X"f";
                    \$721_loop_push_arg\ := \$v1522\(48 to 63) & X"0" & X"0" & \$v1522\(64 to 95) & eclat_sub(eclat_resize(\$965\,8) & X"0" & X"2");
                    state_var4545 <= \$721_loop_push\;
                  when pause_getII4349 =>
                    \$5345_v\ := \$ram_value\;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$5345_v\ & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4351 =>
                    \$5350_v\ := \$ram_value\;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$5350_v\ & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4353 =>
                    \$5355_v\ := \$ram_value\;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$5355_v\ & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4355 =>
                    \$5360_v\ := \$ram_value\;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$5360_v\ & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4358 =>
                    \$5370_v\ := \$ram_value\;
                    \$v2913\ := \$5370_v\ & eclat_sub(\$v1522\(48 to 63) & X"000" & X"1");
                    \$ram_ptr_write\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$v1522\(16 to 46),16) & X"000" & X"0") & X"000" & X"1")));
                    \$ram_write_request\ <= '1';
                    \$ram_write\ <= \$v2913\(0 to 31);
                    state_var4545 <= pause_setI4356;
                  when pause_getII4361 =>
                    \$5377_v\ := \$ram_value\;
                    \$v2915\ := \$5377_v\ & eclat_sub(\$v1522\(48 to 63) & X"000" & X"1");
                    \$ram_ptr_write\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$v1522\(16 to 46),16) & X"000" & X"1") & X"000" & X"1")));
                    \$ram_write_request\ <= '1';
                    \$ram_write\ <= \$v2915\(0 to 31);
                    state_var4545 <= pause_setI4359;
                  when pause_getII4364 =>
                    \$5384_v\ := \$ram_value\;
                    \$v2917\ := \$5384_v\ & eclat_sub(\$v1522\(48 to 63) & X"000" & X"1");
                    \$ram_ptr_write\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$v1522\(16 to 46),16) & X"000" & X"2") & X"000" & X"1")));
                    \$ram_write_request\ <= '1';
                    \$ram_write\ <= \$v2917\(0 to 31);
                    state_var4545 <= pause_setI4362;
                  when pause_getII4367 =>
                    \$5391_v\ := \$ram_value\;
                    \$v2919\ := \$5391_v\ & eclat_sub(\$v1522\(48 to 63) & X"000" & X"1");
                    \$ram_ptr_write\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$v1522\(16 to 46),16) & X"000" & X"3") & X"000" & X"1")));
                    \$ram_write_request\ <= '1';
                    \$ram_write\ <= \$v2919\(0 to 31);
                    state_var4545 <= pause_setI4365;
                  when pause_getII4369 =>
                    \$5393_hd\ := \$ram_value\;
                    \$974\ := eclat_resize(eclat_lsr(eclat_resize(eclat_resize(\$5393_hd\(0 to 30),16),31) & "000"& X"000000" & X"2"),16);
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & eclat_resize(\$974\,31) & eclat_true & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4371 =>
                    \$981_v\ := \$ram_value\;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$981_v\ & \$v2921\(32 to 47) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4373 =>
                    \$5401_v\ := \$ram_value\;
                    \$v2921\ := \$5401_v\ & eclat_sub(\$v1522\(48 to 63) & X"000" & X"1");
                    \$ram_ptr\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$v1522\(16 to 46),16) & eclat_resize(\$v2921\(0 to 30),16)) & X"000" & X"1")));
                    state_var4545 <= pause_getI4370;
                  when pause_getII4376 =>
                    \$5406_v\ := \$ram_value\;
                    \$v2923\ := \$5406_v\ & eclat_sub(\$v2922\(32 to 47) & X"000" & X"1");
                    \$ram_ptr_write\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$v1522\(16 to 46),16) & eclat_resize(\$v2922\(0 to 30),16)) & X"000" & X"1")));
                    \$ram_write_request\ <= '1';
                    \$ram_write\ <= \$v2923\(0 to 31);
                    state_var4545 <= pause_setI4374;
                  when pause_getII4378 =>
                    \$5408_v\ := \$ram_value\;
                    \$v2922\ := \$5408_v\ & eclat_sub(\$v1522\(48 to 63) & X"000" & X"1");
                    \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$v2922\(32 to 47) & X"000" & X"1")));
                    state_var4545 <= pause_getI4375;
                  when pause_getII4380 =>
                    \$992_next_acc\ := \$ram_value\;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$992_next_acc\ & \$v2925\(32 to 47) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4382 =>
                    \$5413_v\ := \$ram_value\;
                    \$v2925\ := \$5413_v\ & eclat_sub(\$v1522\(48 to 63) & X"000" & X"1");
                    \$ram_ptr\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$v1522\(16 to 46),16) & eclat_resize(\$v2925\(0 to 30),16)) & X"000" & X"1")));
                    state_var4545 <= pause_getI4379;
                  when pause_getII4385 =>
                    \$5418_v\ := \$ram_value\;
                    \$v2927\ := \$5418_v\ & eclat_sub(\$v2926\(32 to 47) & X"000" & X"1");
                    \$ram_ptr_write\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$v1522\(16 to 46),16) & eclat_resize(\$v2926\(0 to 30),16)) & X"000" & X"1")));
                    \$ram_write_request\ <= '1';
                    \$ram_write\ <= \$v2927\(0 to 31);
                    state_var4545 <= pause_setI4383;
                  when pause_getII4387 =>
                    \$5420_v\ := \$ram_value\;
                    \$v2926\ := \$5420_v\ & eclat_sub(\$v1522\(48 to 63) & X"000" & X"1");
                    \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$v2926\(32 to 47) & X"000" & X"1")));
                    state_var4545 <= pause_getI4384;
                  when pause_getII4389 =>
                    \$5422_v\ := \$ram_value\;
                    \$v2929\ := \$5422_v\ & eclat_sub(eclat_sub(\$v1522\(48 to 63) & X"000" & X"1") & X"000" & X"1");
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$v1522\(16 to 47) & eclat_sub(\$v2929\(32 to 47) & X"000" & X"2") & \$v1522\(64 to 95) & \$v1522\(96 to 103) & eclat_resize(\$v2929\(0 to 30),16) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4391 =>
                    \$5424_v\ := \$ram_value\;
                    \$v2933\ := \$5424_v\ & eclat_sub(\$v2932\(32 to 47) & X"000" & X"1");
                    \$v8\ := eclat_resize(\$v2930\(0 to 30),16) & \$v1522\(16 to 47) & \$v2933\(32 to 47) & \$v2932\(0 to 31) & eclat_resize(\$v2933\(0 to 30),8) & eclat_resize(\$v2931\(0 to 30),16) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4393 =>
                    \$5426_v\ := \$ram_value\;
                    \$v2932\ := \$5426_v\ & eclat_sub(\$v2931\(32 to 47) & X"000" & X"1");
                    \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$v2932\(32 to 47) & X"000" & X"1")));
                    state_var4545 <= pause_getI4390;
                  when pause_getII4395 =>
                    \$5428_v\ := \$ram_value\;
                    \$v2931\ := \$5428_v\ & eclat_sub(\$v2930\(32 to 47) & X"000" & X"1");
                    \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$v2931\(32 to 47) & X"000" & X"1")));
                    state_var4545 <= pause_getI4392;
                  when pause_getII4397 =>
                    \$5430_v\ := \$ram_value\;
                    \$v2930\ := \$5430_v\ & eclat_sub(\$v1522\(104 to 119) & X"000" & X"1");
                    \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$v2930\(32 to 47) & X"000" & X"1")));
                    state_var4545 <= pause_getI4394;
                  when pause_getII4403 =>
                    \$1336_v\ := \$ram_value\;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$1336_v\ & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4405 =>
                    \$5117_v\ := \$ram_value\;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & \$5117_v\ & \$1310_sp\ & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4409 =>
                    \$1324\ := \$ram_value\;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & \$1324\ & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4411 =>
                    \$5125\ := \$ram_value\;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & \$5125\ & \$1303_sp\ & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4417 =>
                    \$824\ := \$ram_value\;
                    \$v8\ := eclat_resize(\$824\(0 to 30),16) & \$v1522\(16 to 47) & \$v1522\(48 to 63) & \$v1522\(16 to 47) & eclat_sub(eclat_resize(\$747_argument1\,8) & X"0" & X"1") & \$v1522\(104 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4419 =>
                    \$849\ := \$ram_value\;
                    \$v8\ := eclat_resize(\$849\(0 to 30),16) & \$v1522\(16 to 47) & eclat_sub(\$v1522\(48 to 63) & eclat_resize(\$747_argument1\,16)) & \$v1522\(16 to 47) & eclat_sub(\$v1522\(96 to 103) & X"0" & X"1") & \$v1522\(104 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4421 =>
                    \$5137_v\ := \$ram_value\;
                    \$v2827\ := \$5137_v\ & eclat_sub(\$v2826\(32 to 47) & X"000" & X"1");
                    \$v8\ := eclat_resize(\$v2825\(0 to 30),16) & \$v1522\(16 to 47) & \$v2827\(32 to 47) & \$v2826\(0 to 31) & eclat_resize(\$v2827\(0 to 30),8) & \$v1522\(104 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4423 =>
                    \$5139_v\ := \$ram_value\;
                    \$v2826\ := \$5139_v\ & eclat_sub(\$v2825\(32 to 47) & X"000" & X"1");
                    \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$v2826\(32 to 47) & X"000" & X"1")));
                    state_var4545 <= pause_getI4420;
                  when pause_getII4425 =>
                    \$5141_v\ := \$ram_value\;
                    \$v2825\ := \$5141_v\ & eclat_sub(eclat_sub(\$v1522\(48 to 63) & eclat_resize(\$747_argument1\,16)) & X"000" & X"1");
                    \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$v2825\(32 to 47) & X"000" & X"1")));
                    state_var4545 <= pause_getI4422;
                  when pause_getII4428 =>
                    \$5146_v\ := \$ram_value\;
                    \$v2833\ := \$5146_v\ & eclat_sub(\$v2832\(32 to 47) & X"000" & X"1");
                    \$v8\ := eclat_resize(\$v2831\(0 to 30),16) & \$v2828\(64 to 95) & \$v2833\(32 to 47) & \$v2832\(0 to 31) & eclat_resize(\$v2833\(0 to 30),8) & \$v1522\(104 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4430 =>
                    \$5148_v\ := \$ram_value\;
                    \$v2832\ := \$5148_v\ & eclat_sub(\$v2831\(32 to 47) & X"000" & X"1");
                    \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$v2832\(32 to 47) & X"000" & X"1")));
                    state_var4545 <= pause_getI4427;
                  when pause_getII4432 =>
                    \$5150_v\ := \$ram_value\;
                    \$v2831\ := \$5150_v\ & eclat_sub(\$862_sp\ & X"000" & X"1");
                    \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$v2831\(32 to 47) & X"000" & X"1")));
                    state_var4545 <= pause_getI4429;
                  when pause_getII4438 =>
                    \$877_v\ := \$ram_value\;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & \$877_v\ & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4440 =>
                    \$880_v\ := \$ram_value\;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & \$880_v\ & eclat_add(\$v1522\(48 to 63) & X"000" & X"1") & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4445 =>
                    \$1233_v\ := \$ram_value\;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & \$1233_v\ & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4448 =>
                    \$5169_v\ := \$ram_value\;
                    \$v2839\ := \$5169_v\ & eclat_sub(\$v1522\(48 to 63) & X"000" & X"1");
                    \$ram_ptr_write\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$v1522\(16 to 46),16) & eclat_resize(\$747_argument1\,16)) & X"000" & X"1")));
                    \$ram_write_request\ <= '1';
                    \$ram_write\ <= \$v2839\(0 to 31);
                    state_var4545 <= pause_setI4446;
                  when pause_getII4450 =>
                    \$888\ := \$code_value\;
                    \$v8\ := eclat_add(eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & eclat_resize(\$888\,16)) & \$v1522\(16 to 47) & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4452 =>
                    \$1624_hd\ := \$ram_value\;
                    \$891_idx\ := eclat_lsr(eclat_resize(\$1624_hd\(0 to 30),16) & X"00" & X"18");
                    \$886_ofs\ := eclat_add(eclat_resize(\$747_argument1\,16) & \$891_idx\);
                    \$code_ptr\ <= to_integer(unsigned(eclat_add(eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & \$886_ofs\)));
                    state_var4545 <= pause_getI4449;
                  when pause_getII4459 =>
                    \$5177_v\ := \$ram_value\;
                    \$v2846\ := \$5177_v\ & eclat_sub(\$906_sp\ & X"000" & X"1");
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & \$v2845\(0 to 31) & \$v2846\(32 to 47) & \$v2846\(0 to 31) & \$v1522\(96 to 103) & \$v1522\(104 to 119) & \$v2845\(32 to 33);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4463 =>
                    \$5180_v\ := \$ram_value\;
                    \$v2854\ := \$5180_v\ & eclat_sub(\$914_sp\ & X"000" & X"1");
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & \$v2853\(0 to 31) & \$v2854\(32 to 47) & \$v2854\(0 to 31) & \$v1522\(96 to 103) & \$v1522\(104 to 119) & \$v2853\(32 to 33);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4467 =>
                    \$5184_v\ := \$ram_value\;
                    \$v2852\ := \$5184_v\ & eclat_sub(\$v1522\(48 to 63) & X"000" & X"1");
                    \$ram_ptr_write\ <= to_integer(unsigned(\$v2852\(32 to 47)));
                    \$ram_write_request\ <= '1';
                    \$ram_write\ <= \$v1522\(64 to 95);
                    state_var4545 <= pause_setI4465;
                  when pause_getII4469 =>
                    \$5186_v\ := \$ram_value\;
                    \$v2863\ := \$5186_v\ & eclat_sub(\$924_sp\ & X"000" & X"1");
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & \$v2862\(0 to 31) & \$v2863\(32 to 47) & \$v2863\(0 to 31) & \$v1522\(96 to 103) & \$v1522\(104 to 119) & \$v2862\(32 to 33);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4473 =>
                    \$5190_v\ := \$ram_value\;
                    \$v2861\ := \$5190_v\ & eclat_sub(\$v2860\(32 to 47) & X"000" & X"1");
                    \$ram_ptr_write\ <= to_integer(unsigned(\$v2861\(32 to 47)));
                    \$ram_write_request\ <= '1';
                    \$ram_write\ <= \$v1522\(64 to 95);
                    state_var4545 <= pause_setI4471;
                  when pause_getII4475 =>
                    \$5192_v\ := \$ram_value\;
                    \$v2860\ := \$5192_v\ & eclat_sub(\$v1522\(48 to 63) & X"000" & X"1");
                    \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$v2860\(32 to 47) & X"000" & X"1")));
                    state_var4545 <= pause_getI4472;
                  when pause_getII4477 =>
                    \$5194_v\ := \$ram_value\;
                    \$v2873\ := \$5194_v\ & eclat_sub(\$936_sp\ & X"000" & X"1");
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & \$v2872\(0 to 31) & \$v2873\(32 to 47) & \$v2873\(0 to 31) & \$v1522\(96 to 103) & \$v1522\(104 to 119) & \$v2872\(32 to 33);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4481 =>
                    \$5198_v\ := \$ram_value\;
                    \$v2871\ := \$5198_v\ & eclat_sub(\$v2870\(32 to 47) & X"000" & X"1");
                    \$ram_ptr_write\ <= to_integer(unsigned(\$v2871\(32 to 47)));
                    \$ram_write_request\ <= '1';
                    \$ram_write\ <= \$v1522\(64 to 95);
                    state_var4545 <= pause_setI4479;
                  when pause_getII4483 =>
                    \$5200_v\ := \$ram_value\;
                    \$v2870\ := \$5200_v\ & eclat_sub(\$v2869\(32 to 47) & X"000" & X"1");
                    \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$v2870\(32 to 47) & X"000" & X"1")));
                    state_var4545 <= pause_getI4480;
                  when pause_getII4485 =>
                    \$5202_v\ := \$ram_value\;
                    \$v2869\ := \$5202_v\ & eclat_sub(\$v1522\(48 to 63) & X"000" & X"1");
                    \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$v2869\(32 to 47) & X"000" & X"1")));
                    state_var4545 <= pause_getI4482;
                  when pause_getII4487 =>
                    \$5204_v\ := \$ram_value\;
                    \$v2884\ := \$5204_v\ & eclat_sub(\$950_sp\ & X"000" & X"1");
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & \$v2883\(0 to 31) & \$v2884\(32 to 47) & \$v2884\(0 to 31) & \$v1522\(96 to 103) & \$v1522\(104 to 119) & \$v2883\(32 to 33);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4491 =>
                    \$5208_v\ := \$ram_value\;
                    \$v2882\ := \$5208_v\ & eclat_sub(\$v2881\(32 to 47) & X"000" & X"1");
                    \$ram_ptr_write\ <= to_integer(unsigned(\$v2882\(32 to 47)));
                    \$ram_write_request\ <= '1';
                    \$ram_write\ <= \$v1522\(64 to 95);
                    state_var4545 <= pause_setI4489;
                  when pause_getII4493 =>
                    \$5210_v\ := \$ram_value\;
                    \$v2881\ := \$5210_v\ & eclat_sub(\$v2880\(32 to 47) & X"000" & X"1");
                    \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$v2881\(32 to 47) & X"000" & X"1")));
                    state_var4545 <= pause_getI4490;
                  when pause_getII4495 =>
                    \$5212_v\ := \$ram_value\;
                    \$v2880\ := \$5212_v\ & eclat_sub(\$v2879\(32 to 47) & X"000" & X"1");
                    \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$v2880\(32 to 47) & X"000" & X"1")));
                    state_var4545 <= pause_getI4492;
                  when pause_getII4497 =>
                    \$5214_v\ := \$ram_value\;
                    \$v2879\ := \$5214_v\ & eclat_sub(\$v1522\(48 to 63) & X"000" & X"1");
                    \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$v2879\(32 to 47) & X"000" & X"1")));
                    state_var4545 <= pause_getI4494;
                  when pause_getII4501 =>
                    \$959_f0\ := \$ram_value\;
                    \$ram_ptr_write\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$v1522\(16 to 46),16) & X"000" & X"0") & X"000" & X"1")));
                    \$ram_write_request\ <= '1';
                    \$ram_write\ <= eclat_add(\$959_f0\(0 to 30) & \$747_argument1\) & eclat_true;
                    state_var4545 <= pause_setI4499;
                  when pause_getII4503 =>
                    \$774\ := \$ram_value\;
                    \$v8\ := eclat_resize(\$774\(0 to 30),16) & \$v1522\(16 to 47) & \$v1522\(48 to 63) & \$v1522\(16 to 47) & eclat_sub(eclat_add(\$v1522\(96 to 103) & eclat_resize(\$747_argument1\,8)) & X"0" & X"1") & \$v1522\(104 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4508 =>
                    \$793_v\ := \$ram_value\;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"3") & \$793_v\ & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4510 =>
                    \$791\ := \$ram_value\;
                    \$ram_ptr\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$791\(0 to 30),16) & eclat_resize(\$748_argument2\,16)) & X"000" & X"1")));
                    state_var4545 <= pause_getI4507;
                  when pause_getII4512 =>
                    \$799_v\ := \$ram_value\;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"3") & \$799_v\ & eclat_add(\$v1522\(48 to 63) & X"000" & X"1") & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4514 =>
                    \$797\ := \$ram_value\;
                    \$ram_ptr\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$797\(0 to 30),16) & eclat_resize(\$748_argument2\,16)) & X"000" & X"1")));
                    state_var4545 <= pause_getI4511;
                  when pause_getII4522 =>
                    \$750\ := \$code_value\;
                    eclat_print_int(\$750\);
                    
                    eclat_print_newline(eclat_unit);
                    
                    \$v8\ := \$v1522\(0 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4525 =>
                    \$749_argument3\ := \$code_value\;
                    \$v4523\ := eclat_resize(\$743\,8);
                    case \$v4523\ is
                    when X"2c" =>
                      \$v4520\ := eclat_gt(eclat_resize(\$748_argument2\,16) & X"000" & X"0");
                      if \$v4520\(0) = '1' then
                        \$ram_ptr_write\ <= to_integer(unsigned(\$v1522\(48 to 63)));
                        \$ram_write_request\ <= '1';
                        \$ram_write\ <= \$v1522\(16 to 47);
                        state_var4545 <= pause_setI4519;
                      else
                        \$755_sp\ := \$v1522\(48 to 63);
                        \$713_id\ := X"0" & X"43";
                        \$713_arg\ := \$755_sp\ & \$v1522\(16 to 47) & \$v1522\(64 to 95) & X"f7" & eclat_add(eclat_sub(eclat_mult(X"000" & X"2" & eclat_resize(\$747_argument1\,16)) & X"000" & X"1") & eclat_resize(\$748_argument2\,16)) & X"1770" & X"0" & X"fa0" & X"3e80" & X"0" & X"3e8";
                        state_var4545 <= \$713\;
                      end if;
                    when others =>
                      eclat_print_string(of_string("unknown opcode : "));
                      
                      \$code_ptr\ <= to_integer(unsigned(\$v1522\(0 to 15)));
                      state_var4545 <= pause_getI4521;
                    end case;
                  when pause_getII4528 =>
                    \$748_argument2\ := \$code_value\;
                    \$v4526\ := eclat_resize(\$743\,8);
                    case \$v4526\ is
                    when X"24" =>
                      \$724_w_id\ := X"0" & X"35";
                      \$724_w_arg\ := X"000" & X"1" & \$v1522\(48 to 63) & eclat_resize(\$747_argument1\,16) & eclat_sub(eclat_sub(\$v1522\(48 to 63) & eclat_resize(\$747_argument1\,16)) & eclat_resize(\$748_argument2\,16));
                      state_var4545 <= \$724_w\;
                    when X"2b" =>
                      \$v4506\ := eclat_gt(eclat_resize(\$747_argument1\,16) & X"000" & X"0");
                      if \$v4506\(0) = '1' then
                        \$ram_ptr_write\ <= to_integer(unsigned(\$v1522\(48 to 63)));
                        \$ram_write_request\ <= '1';
                        \$ram_write\ <= \$v1522\(16 to 47);
                        state_var4545 <= pause_setI4505;
                      else
                        \$781_sp\ := \$v1522\(48 to 63);
                        \$713_id\ := X"0" & X"37";
                        \$713_arg\ := \$781_sp\ & \$v1522\(16 to 47) & \$v1522\(64 to 95) & X"f7" & eclat_add(eclat_resize(\$747_argument1\,16) & X"000" & X"1") & X"1770" & X"0" & X"fa0" & X"3e80" & X"0" & X"3e8";
                        state_var4545 <= \$713\;
                      end if;
                    when X"37" =>
                      \$ram_ptr\ <= to_integer(unsigned(eclat_add(X"3e80" & eclat_resize(\$747_argument1\,16))));
                      state_var4545 <= pause_getI4509;
                    when X"38" =>
                      \$ram_ptr_write\ <= to_integer(unsigned(\$v1522\(48 to 63)));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= \$v1522\(16 to 47);
                      state_var4545 <= pause_setI4515;
                    when X"3e" =>
                      \$713_id\ := X"0" & X"39";
                      \$713_arg\ := \$v1522\(48 to 63) & \$v1522\(16 to 47) & \$v1522\(64 to 95) & eclat_resize(\$748_argument2\,8) & eclat_resize(\$747_argument1\,16) & X"1770" & X"0" & X"fa0" & X"3e80" & X"0" & X"3e8";
                      state_var4545 <= \$713\;
                    when X"83" =>
                      \$722_compbranch_id\ := X"0" & X"3a";
                      \$722_compbranch_arg\ := X"0000000" & X"0" & \$747_argument1\ & \$748_argument2\ & \$v1522\(16 to 47) & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121) & eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & eclat_add(\$v1522\(0 to 15) & X"000" & X"3");
                      state_var4545 <= \$722_compbranch\;
                    when X"84" =>
                      \$722_compbranch_id\ := X"0" & X"3b";
                      \$722_compbranch_arg\ := X"0000000" & X"1" & \$747_argument1\ & \$748_argument2\ & \$v1522\(16 to 47) & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121) & eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & eclat_add(\$v1522\(0 to 15) & X"000" & X"3");
                      state_var4545 <= \$722_compbranch\;
                    when X"85" =>
                      \$722_compbranch_id\ := X"0" & X"3c";
                      \$722_compbranch_arg\ := X"0000000" & X"2" & \$747_argument1\ & \$748_argument2\ & \$v1522\(16 to 47) & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121) & eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & eclat_add(\$v1522\(0 to 15) & X"000" & X"3");
                      state_var4545 <= \$722_compbranch\;
                    when X"86" =>
                      \$722_compbranch_id\ := X"0" & X"3d";
                      \$722_compbranch_arg\ := X"0000000" & X"3" & \$747_argument1\ & \$748_argument2\ & \$v1522\(16 to 47) & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121) & eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & eclat_add(\$v1522\(0 to 15) & X"000" & X"3");
                      state_var4545 <= \$722_compbranch\;
                    when X"87" =>
                      \$722_compbranch_id\ := X"0" & X"3e";
                      \$722_compbranch_arg\ := X"0000000" & X"4" & \$747_argument1\ & \$748_argument2\ & \$v1522\(16 to 47) & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121) & eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & eclat_add(\$v1522\(0 to 15) & X"000" & X"3");
                      state_var4545 <= \$722_compbranch\;
                    when X"88" =>
                      \$722_compbranch_id\ := X"0" & X"3f";
                      \$722_compbranch_arg\ := X"0000000" & X"5" & \$747_argument1\ & \$748_argument2\ & \$v1522\(16 to 47) & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121) & eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & eclat_add(\$v1522\(0 to 15) & X"000" & X"3");
                      state_var4545 <= \$722_compbranch\;
                    when others =>
                      \$code_ptr\ <= to_integer(unsigned(eclat_add(\$v1522\(0 to 15) & X"000" & X"3")));
                      state_var4545 <= pause_getI4524;
                    end case;
                  when pause_getII4531 =>
                    \$747_argument1\ := \$code_value\;
                    \$v4529\ := eclat_resize(\$743\,8);
                    case \$v4529\ is
                    when X"0" & X"8" =>
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(eclat_sub(\$v1522\(48 to 63) & eclat_resize(\$747_argument1\,16)) & X"000" & X"1")));
                      state_var4545 <= pause_getI4402;
                    when X"12" =>
                      \$ram_ptr_write\ <= to_integer(unsigned(\$v1522\(48 to 63)));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= \$v1522\(16 to 47);
                      state_var4545 <= pause_setI4406;
                    when X"13" =>
                      \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & \$v1522\(16 to 47) & eclat_sub(\$v1522\(48 to 63) & eclat_resize(\$747_argument1\,16)) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                      \$v1526\ := \$v8\ & eclat_true;
                      result4150 := eclat_unit;
                      rdy4151 := eclat_true;
                      state_var4545 <= compute4152;
                    when X"14" =>
                      \$ram_ptr_write\ <= to_integer(unsigned(eclat_sub(eclat_sub(\$v1522\(48 to 63) & X"000" & X"1") & eclat_resize(\$747_argument1\,16))));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= \$v1522\(16 to 47);
                      state_var4545 <= pause_setI4407;
                    when X"19" =>
                      \$ram_ptr\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$v1522\(64 to 94),16) & eclat_sub(eclat_resize(\$747_argument1\,16) & X"000" & X"1")) & X"000" & X"1")));
                      state_var4545 <= pause_getI4408;
                    when X"1e" =>
                      \$ram_ptr_write\ <= to_integer(unsigned(\$v1522\(48 to 63)));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= \$v1522\(16 to 47);
                      state_var4545 <= pause_setI4412;
                    when X"1f" =>
                      \$ram_ptr_write\ <= to_integer(unsigned(\$v1522\(48 to 63)));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= eclat_resize(\$v1522\(96 to 103),31) & eclat_true;
                      state_var4545 <= pause_setI4415;
                    when X"20" =>
                      \$ram_ptr\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$v1522\(16 to 46),16) & X"000" & X"0") & X"000" & X"1")));
                      state_var4545 <= pause_getI4416;
                    when X"25" =>
                      \$714_apply_id\ := X"0" & X"27";
                      \$714_apply_arg\ := eclat_true & eclat_false & eclat_false & \$v1522\(96 to 103) & eclat_true & eclat_resize(\$747_argument1\,16) & X"000" & X"1" & \$v1522\(16 to 47) & \$v1522\(48 to 63) & \$v1522\(64 to 95) & \$v1522\(96 to 103) & \$v1522\(120 to 121) & eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$v1522\(104 to 119);
                      state_var4545 <= \$714_apply\;
                    when X"26" =>
                      \$714_apply_id\ := X"0" & X"28";
                      \$714_apply_arg\ := eclat_true & eclat_true & eclat_false & eclat_add(\$v1522\(96 to 103) & X"0" & X"1") & eclat_true & eclat_resize(\$747_argument1\,16) & X"000" & X"2" & \$v1522\(16 to 47) & \$v1522\(48 to 63) & \$v1522\(64 to 95) & \$v1522\(96 to 103) & \$v1522\(120 to 121) & eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$v1522\(104 to 119);
                      state_var4545 <= \$714_apply\;
                    when X"27" =>
                      \$714_apply_id\ := X"0" & X"29";
                      \$714_apply_arg\ := eclat_true & eclat_true & eclat_true & eclat_add(\$v1522\(96 to 103) & X"0" & X"2") & eclat_true & eclat_resize(\$747_argument1\,16) & X"000" & X"3" & \$v1522\(16 to 47) & \$v1522\(48 to 63) & \$v1522\(64 to 95) & \$v1522\(96 to 103) & \$v1522\(120 to 121) & eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$v1522\(104 to 119);
                      state_var4545 <= \$714_apply\;
                    when X"28" =>
                      \$v4426\ := eclat_gt(\$v1522\(96 to 103) & X"0" & X"0");
                      if \$v4426\(0) = '1' then
                        \$ram_ptr\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$v1522\(16 to 46),16) & X"000" & X"0") & X"000" & X"1")));
                        state_var4545 <= pause_getI4418;
                      else
                        \$ram_ptr\ <= to_integer(unsigned(eclat_sub(eclat_sub(\$v1522\(48 to 63) & eclat_resize(\$747_argument1\,16)) & X"000" & X"1")));
                        state_var4545 <= pause_getI4424;
                      end if;
                    when X"2a" =>
                      \$v4435\ := eclat_ge(\$v1522\(96 to 103) & eclat_resize(\$747_argument1\,8));
                      if \$v4435\(0) = '1' then
                        \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & \$v1522\(16 to 47) & \$v1522\(48 to 63) & \$v1522\(64 to 95) & eclat_sub(\$v1522\(96 to 103) & eclat_resize(\$747_argument1\,8)) & \$v1522\(104 to 119) & \$v1522\(120 to 121);
                        \$v1526\ := \$v8\ & eclat_true;
                        result4150 := eclat_unit;
                        rdy4151 := eclat_true;
                        state_var4545 <= compute4152;
                      else
                        \$713_id\ := X"0" & X"2b";
                        \$713_arg\ := \$v1522\(48 to 63) & \$v1522\(16 to 47) & \$v1522\(64 to 95) & X"f7" & eclat_resize(eclat_add(\$v1522\(96 to 103) & X"0" & X"3"),16) & X"1770" & X"0" & X"fa0" & X"3e80" & X"0" & X"3e8";
                        state_var4545 <= \$713\;
                      end if;
                    when X"30" =>
                      \$715_offsetclosure_n_id\ := X"0" & X"2c";
                      \$715_offsetclosure_n_arg\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & \$v1522\(48 to 63) & eclat_resize(\$747_argument1\,16) & \$v1522\(64 to 95) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                      state_var4545 <= \$715_offsetclosure_n\;
                    when X"34" =>
                      \$ram_ptr_write\ <= to_integer(unsigned(\$v1522\(48 to 63)));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= \$v1522\(16 to 47);
                      state_var4545 <= pause_setI4436;
                    when X"35" =>
                      \$ram_ptr\ <= to_integer(unsigned(eclat_add(X"3e80" & eclat_resize(\$747_argument1\,16))));
                      state_var4545 <= pause_getI4437;
                    when X"36" =>
                      \$ram_ptr_write\ <= to_integer(unsigned(\$v1522\(48 to 63)));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= \$v1522\(16 to 47);
                      state_var4545 <= pause_setI4441;
                    when X"39" =>
                      \$ram_ptr_write\ <= to_integer(unsigned(eclat_add(X"3e80" & eclat_resize(\$747_argument1\,16))));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= \$v1522\(16 to 47);
                      state_var4545 <= pause_setI4442;
                    when X"3b" =>
                      \$719_make_block_n_id\ := X"0" & X"2e";
                      \$719_make_block_n_arg\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & \$v1522\(48 to 63) & eclat_false & eclat_false & eclat_false & \$747_argument1\ & X"000" & X"0" & \$v1522\(16 to 47) & \$v1522\(64 to 95) & \$v1522\(96 to 103) & \$v1522\(120 to 121) & \$v1522\(104 to 119) & X"1770" & X"0" & X"fa0" & X"3e80" & X"0" & X"3e8";
                      state_var4545 <= \$719_make_block_n\;
                    when X"3d" =>
                      \$ram_ptr_write\ <= to_integer(unsigned(\$v1522\(48 to 63)));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= \$v1522\(16 to 47);
                      state_var4545 <= pause_setI4443;
                    when X"3f" =>
                      \$719_make_block_n_id\ := X"0" & X"30";
                      \$719_make_block_n_arg\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & \$v1522\(48 to 63) & eclat_true & eclat_false & eclat_false & \$747_argument1\ & X"000" & X"1" & \$v1522\(16 to 47) & \$v1522\(64 to 95) & \$v1522\(96 to 103) & \$v1522\(120 to 121) & \$v1522\(104 to 119) & X"1770" & X"0" & X"fa0" & X"3e80" & X"0" & X"3e8";
                      state_var4545 <= \$719_make_block_n\;
                    when X"40" =>
                      \$719_make_block_n_id\ := X"0" & X"31";
                      \$719_make_block_n_arg\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & \$v1522\(48 to 63) & eclat_true & eclat_true & eclat_false & \$747_argument1\ & X"000" & X"2" & \$v1522\(16 to 47) & \$v1522\(64 to 95) & \$v1522\(96 to 103) & \$v1522\(120 to 121) & \$v1522\(104 to 119) & X"1770" & X"0" & X"fa0" & X"3e80" & X"0" & X"3e8";
                      state_var4545 <= \$719_make_block_n\;
                    when X"41" =>
                      \$719_make_block_n_id\ := X"0" & X"32";
                      \$719_make_block_n_arg\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & \$v1522\(48 to 63) & eclat_true & eclat_true & eclat_true & \$747_argument1\ & X"000" & X"3" & \$v1522\(16 to 47) & \$v1522\(64 to 95) & \$v1522\(96 to 103) & \$v1522\(120 to 121) & \$v1522\(104 to 119) & X"1770" & X"0" & X"fa0" & X"3e80" & X"0" & X"3e8";
                      state_var4545 <= \$719_make_block_n\;
                    when X"47" =>
                      eclat_skip(eclat_not(""&\$v1522\(47)));
                      
                      \$ram_ptr\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$v1522\(16 to 46),16) & eclat_resize(\$747_argument1\,16)) & X"000" & X"1")));
                      state_var4545 <= pause_getI4444;
                    when X"4d" =>
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$v1522\(48 to 63) & X"000" & X"1")));
                      state_var4545 <= pause_getI4447;
                    when X"57" =>
                      \$v4453\ := ""&\$v1522\(47);
                      if \$v4453\(0) = '1' then
                        \$886_ofs\ := eclat_resize(\$v1522\(16 to 46),16);
                        \$code_ptr\ <= to_integer(unsigned(eclat_add(eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & \$886_ofs\)));
                        state_var4545 <= pause_getI4449;
                      else
                        \$ram_ptr\ <= to_integer(unsigned(eclat_resize(\$v1522\(16 to 46),16)));
                        state_var4545 <= pause_getI4451;
                      end if;
                    when X"54" =>
                      \$v8\ := eclat_add(eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & eclat_resize(\$747_argument1\,16)) & \$v1522\(16 to 47) & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                      \$v1526\ := \$v8\ & eclat_true;
                      result4150 := eclat_unit;
                      rdy4151 := eclat_true;
                      state_var4545 <= compute4152;
                    when X"59" =>
                      \$ram_ptr_write\ <= to_integer(unsigned(\$v1522\(48 to 63)));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= eclat_resize(\$v1522\(96 to 103),31) & eclat_true;
                      state_var4545 <= pause_setI4457;
                    when X"5c" =>
                      \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$v1522\(16 to 47) & \$v1522\(48 to 63) & \$v1522\(64 to 95) & \$v1522\(96 to 103) & \$v1522\(104 to 119) & \$v1522\(120 to 121);
                      \$v1526\ := \$v8\ & eclat_true;
                      result4150 := eclat_unit;
                      rdy4151 := eclat_true;
                      state_var4545 <= compute4152;
                    when X"5d" =>
                      \$ram_ptr_write\ <= to_integer(unsigned(\$v1522\(48 to 63)));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= \$v1522\(64 to 95);
                      state_var4545 <= pause_setI4461;
                    when X"5e" =>
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$v1522\(48 to 63) & X"000" & X"1")));
                      state_var4545 <= pause_getI4466;
                    when X"5f" =>
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$v1522\(48 to 63) & X"000" & X"1")));
                      state_var4545 <= pause_getI4474;
                    when X"60" =>
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$v1522\(48 to 63) & X"000" & X"1")));
                      state_var4545 <= pause_getI4484;
                    when X"61" =>
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$v1522\(48 to 63) & X"000" & X"1")));
                      state_var4545 <= pause_getI4496;
                    when X"67" =>
                      \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & \$747_argument1\ & eclat_true & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                      \$v1526\ := \$v8\ & eclat_true;
                      result4150 := eclat_unit;
                      rdy4151 := eclat_true;
                      state_var4545 <= compute4152;
                    when X"6c" =>
                      \$ram_ptr_write\ <= to_integer(unsigned(\$v1522\(48 to 63)));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= \$v1522\(16 to 47);
                      state_var4545 <= pause_setI4498;
                    when X"7f" =>
                      \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & eclat_add(\$v1522\(16 to 46) & \$747_argument1\) & eclat_true & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                      \$v1526\ := \$v8\ & eclat_true;
                      result4150 := eclat_unit;
                      rdy4151 := eclat_true;
                      state_var4545 <= compute4152;
                    when X"80" =>
                      \$ram_ptr\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$v1522\(16 to 46),16) & X"000" & X"0") & X"000" & X"1")));
                      state_var4545 <= pause_getI4500;
                    when X"8b" =>
                      \$722_compbranch_id\ := X"0" & X"33";
                      \$722_compbranch_arg\ := X"0000000" & X"2" & \$747_argument1\ & \$v1522\(16 to 46) & \$v1522\(16 to 47) & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121) & eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & eclat_add(\$v1522\(0 to 15) & X"000" & X"3");
                      state_var4545 <= \$722_compbranch\;
                    when X"8c" =>
                      \$722_compbranch_id\ := X"0" & X"34";
                      \$722_compbranch_arg\ := X"0000000" & X"5" & \$747_argument1\ & \$v1522\(16 to 46) & \$v1522\(16 to 47) & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121) & eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & eclat_add(\$v1522\(0 to 15) & X"000" & X"3");
                      state_var4545 <= \$722_compbranch\;
                    when others =>
                      \$code_ptr\ <= to_integer(unsigned(eclat_add(\$v1522\(0 to 15) & X"000" & X"2")));
                      state_var4545 <= pause_getI4527;
                    end case;
                  when pause_getII4534 =>
                    \$743\ := \$code_value\;
                    \$v4532\ := eclat_resize(\$743\,8);
                    case \$v4532\ is
                    when X"0" & X"0" =>
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(eclat_sub(\$v1522\(48 to 63) & X"000" & X"0") & X"000" & X"1")));
                      state_var4545 <= pause_getI4281;
                    when X"0" & X"1" =>
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(eclat_sub(\$v1522\(48 to 63) & X"000" & X"1") & X"000" & X"1")));
                      state_var4545 <= pause_getI4283;
                    when X"0" & X"2" =>
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(eclat_sub(\$v1522\(48 to 63) & X"000" & X"2") & X"000" & X"1")));
                      state_var4545 <= pause_getI4285;
                    when X"0" & X"3" =>
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(eclat_sub(\$v1522\(48 to 63) & X"000" & X"3") & X"000" & X"1")));
                      state_var4545 <= pause_getI4287;
                    when X"0" & X"4" =>
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(eclat_sub(\$v1522\(48 to 63) & X"000" & X"4") & X"000" & X"1")));
                      state_var4545 <= pause_getI4289;
                    when X"0" & X"5" =>
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(eclat_sub(\$v1522\(48 to 63) & X"000" & X"5") & X"000" & X"1")));
                      state_var4545 <= pause_getI4291;
                    when X"0" & X"6" =>
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(eclat_sub(\$v1522\(48 to 63) & X"000" & X"6") & X"000" & X"1")));
                      state_var4545 <= pause_getI4293;
                    when X"0" & X"7" =>
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(eclat_sub(\$v1522\(48 to 63) & X"000" & X"7") & X"000" & X"1")));
                      state_var4545 <= pause_getI4295;
                    when X"0" & X"9" =>
                      \$ram_ptr_write\ <= to_integer(unsigned(\$v1522\(48 to 63)));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= \$v1522\(16 to 47);
                      state_var4545 <= pause_setI4297;
                    when X"0" & X"a" =>
                      \$ram_ptr_write\ <= to_integer(unsigned(\$v1522\(48 to 63)));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= \$v1522\(16 to 47);
                      state_var4545 <= pause_setI4298;
                    when X"0" & X"b" =>
                      \$ram_ptr_write\ <= to_integer(unsigned(\$v1522\(48 to 63)));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= \$v1522\(16 to 47);
                      state_var4545 <= pause_setI4301;
                    when X"0" & X"c" =>
                      \$ram_ptr_write\ <= to_integer(unsigned(\$v1522\(48 to 63)));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= \$v1522\(16 to 47);
                      state_var4545 <= pause_setI4304;
                    when X"0" & X"d" =>
                      \$ram_ptr_write\ <= to_integer(unsigned(\$v1522\(48 to 63)));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= \$v1522\(16 to 47);
                      state_var4545 <= pause_setI4307;
                    when X"0" & X"e" =>
                      \$ram_ptr_write\ <= to_integer(unsigned(\$v1522\(48 to 63)));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= \$v1522\(16 to 47);
                      state_var4545 <= pause_setI4310;
                    when X"0" & X"f" =>
                      \$ram_ptr_write\ <= to_integer(unsigned(\$v1522\(48 to 63)));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= \$v1522\(16 to 47);
                      state_var4545 <= pause_setI4313;
                    when X"10" =>
                      \$ram_ptr_write\ <= to_integer(unsigned(\$v1522\(48 to 63)));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= \$v1522\(16 to 47);
                      state_var4545 <= pause_setI4316;
                    when X"11" =>
                      \$ram_ptr_write\ <= to_integer(unsigned(\$v1522\(48 to 63)));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= \$v1522\(16 to 47);
                      state_var4545 <= pause_setI4319;
                    when X"15" =>
                      \$ram_ptr\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$v1522\(64 to 94),16) & eclat_sub(X"000" & X"1" & X"000" & X"1")) & X"000" & X"1")));
                      state_var4545 <= pause_getI4320;
                    when X"16" =>
                      \$ram_ptr\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$v1522\(64 to 94),16) & eclat_sub(X"000" & X"2" & X"000" & X"1")) & X"000" & X"1")));
                      state_var4545 <= pause_getI4322;
                    when X"17" =>
                      \$ram_ptr\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$v1522\(64 to 94),16) & eclat_sub(X"000" & X"3" & X"000" & X"1")) & X"000" & X"1")));
                      state_var4545 <= pause_getI4324;
                    when X"18" =>
                      \$ram_ptr\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$v1522\(64 to 94),16) & eclat_sub(X"000" & X"4" & X"000" & X"1")) & X"000" & X"1")));
                      state_var4545 <= pause_getI4326;
                    when X"1a" =>
                      \$ram_ptr_write\ <= to_integer(unsigned(\$v1522\(48 to 63)));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= \$v1522\(16 to 47);
                      state_var4545 <= pause_setI4330;
                    when X"1b" =>
                      \$ram_ptr_write\ <= to_integer(unsigned(\$v1522\(48 to 63)));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= \$v1522\(16 to 47);
                      state_var4545 <= pause_setI4333;
                    when X"1c" =>
                      \$ram_ptr_write\ <= to_integer(unsigned(\$v1522\(48 to 63)));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= \$v1522\(16 to 47);
                      state_var4545 <= pause_setI4336;
                    when X"1d" =>
                      \$ram_ptr_write\ <= to_integer(unsigned(\$v1522\(48 to 63)));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= \$v1522\(16 to 47);
                      state_var4545 <= pause_setI4339;
                    when X"21" =>
                      \$714_apply_id\ := X"00" & X"c";
                      \$714_apply_arg\ := eclat_true & eclat_false & eclat_false & X"0" & X"0" & eclat_false & X"000" & X"0" & X"000" & X"0" & \$v1522\(16 to 47) & \$v1522\(48 to 63) & \$v1522\(64 to 95) & \$v1522\(96 to 103) & \$v1522\(120 to 121) & eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$v1522\(104 to 119);
                      state_var4545 <= \$714_apply\;
                    when X"22" =>
                      \$714_apply_id\ := X"00" & X"d";
                      \$714_apply_arg\ := eclat_true & eclat_true & eclat_false & X"0" & X"1" & eclat_false & X"000" & X"0" & X"000" & X"0" & \$v1522\(16 to 47) & \$v1522\(48 to 63) & \$v1522\(64 to 95) & \$v1522\(96 to 103) & \$v1522\(120 to 121) & eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$v1522\(104 to 119);
                      state_var4545 <= \$714_apply\;
                    when X"23" =>
                      \$714_apply_id\ := X"00" & X"e";
                      \$714_apply_arg\ := eclat_true & eclat_true & eclat_true & X"0" & X"2" & eclat_false & X"000" & X"0" & X"000" & X"0" & \$v1522\(16 to 47) & \$v1522\(48 to 63) & \$v1522\(64 to 95) & \$v1522\(96 to 103) & \$v1522\(120 to 121) & eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$v1522\(104 to 119);
                      state_var4545 <= \$714_apply\;
                    when X"29" =>
                      \$ram_ptr\ <= to_integer(unsigned(eclat_resize(\$v1522\(64 to 94),16)));
                      state_var4545 <= pause_getI4342;
                    when X"2d" =>
                      \$715_offsetclosure_n_id\ := X"0" & X"10";
                      \$715_offsetclosure_n_arg\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$v1522\(48 to 63) & eclat_sub(X"000" & X"0" & X"000" & X"2") & \$v1522\(64 to 95) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                      state_var4545 <= \$715_offsetclosure_n\;
                    when X"2e" =>
                      \$715_offsetclosure_n_id\ := X"0" & X"11";
                      \$715_offsetclosure_n_arg\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$v1522\(48 to 63) & X"000" & X"0" & \$v1522\(64 to 95) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                      state_var4545 <= \$715_offsetclosure_n\;
                    when X"2f" =>
                      \$715_offsetclosure_n_id\ := X"0" & X"12";
                      \$715_offsetclosure_n_arg\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$v1522\(48 to 63) & X"000" & X"2" & \$v1522\(64 to 95) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                      state_var4545 <= \$715_offsetclosure_n\;
                    when X"31" =>
                      \$ram_ptr_write\ <= to_integer(unsigned(\$v1522\(48 to 63)));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= \$v1522\(16 to 47);
                      state_var4545 <= pause_setI4344;
                    when X"32" =>
                      \$ram_ptr_write\ <= to_integer(unsigned(\$v1522\(48 to 63)));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= \$v1522\(16 to 47);
                      state_var4545 <= pause_setI4345;
                    when X"33" =>
                      \$ram_ptr_write\ <= to_integer(unsigned(\$v1522\(48 to 63)));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= \$v1522\(16 to 47);
                      state_var4545 <= pause_setI4346;
                    when X"3a" =>
                      \$719_make_block_n_id\ := X"0" & X"16";
                      \$719_make_block_n_arg\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$v1522\(48 to 63) & eclat_false & eclat_false & eclat_false & "000"& X"000000" & X"0" & X"000" & X"0" & \$v1522\(16 to 47) & \$v1522\(64 to 95) & \$v1522\(96 to 103) & \$v1522\(120 to 121) & \$v1522\(104 to 119) & X"1770" & X"0" & X"fa0" & X"3e80" & X"0" & X"3e8";
                      state_var4545 <= \$719_make_block_n\;
                    when X"3c" =>
                      \$ram_ptr_write\ <= to_integer(unsigned(\$v1522\(48 to 63)));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= \$v1522\(16 to 47);
                      state_var4545 <= pause_setI4347;
                    when X"43" =>
                      eclat_skip(eclat_not(""&\$v1522\(47)));
                      
                      \$ram_ptr\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$v1522\(16 to 46),16) & X"000" & X"0") & X"000" & X"1")));
                      state_var4545 <= pause_getI4348;
                    when X"44" =>
                      eclat_skip(eclat_not(""&\$v1522\(47)));
                      
                      \$ram_ptr\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$v1522\(16 to 46),16) & X"000" & X"1") & X"000" & X"1")));
                      state_var4545 <= pause_getI4350;
                    when X"45" =>
                      eclat_skip(eclat_not(""&\$v1522\(47)));
                      
                      \$ram_ptr\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$v1522\(16 to 46),16) & X"000" & X"2") & X"000" & X"1")));
                      state_var4545 <= pause_getI4352;
                    when X"46" =>
                      eclat_skip(eclat_not(""&\$v1522\(47)));
                      
                      \$ram_ptr\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$v1522\(16 to 46),16) & X"000" & X"3") & X"000" & X"1")));
                      state_var4545 <= pause_getI4354;
                    when X"49" =>
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$v1522\(48 to 63) & X"000" & X"1")));
                      state_var4545 <= pause_getI4357;
                    when X"4a" =>
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$v1522\(48 to 63) & X"000" & X"1")));
                      state_var4545 <= pause_getI4360;
                    when X"4b" =>
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$v1522\(48 to 63) & X"000" & X"1")));
                      state_var4545 <= pause_getI4363;
                    when X"4c" =>
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$v1522\(48 to 63) & X"000" & X"1")));
                      state_var4545 <= pause_getI4366;
                    when X"4f" =>
                      \$ram_ptr\ <= to_integer(unsigned(eclat_resize(\$v1522\(16 to 46),16)));
                      state_var4545 <= pause_getI4368;
                    when X"50" =>
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$v1522\(48 to 63) & X"000" & X"1")));
                      state_var4545 <= pause_getI4372;
                    when X"51" =>
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$v1522\(48 to 63) & X"000" & X"1")));
                      state_var4545 <= pause_getI4377;
                    when X"52" =>
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$v1522\(48 to 63) & X"000" & X"1")));
                      state_var4545 <= pause_getI4381;
                    when X"53" =>
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$v1522\(48 to 63) & X"000" & X"1")));
                      state_var4545 <= pause_getI4386;
                    when X"55" =>
                      \$720_branch_if_id\ := X"0" & X"18";
                      \$720_branch_if_arg\ := eclat_false & \$v1522\(16 to 47) & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121) & eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & eclat_add(\$v1522\(0 to 15) & X"000" & X"2");
                      state_var4545 <= \$720_branch_if\;
                    when X"56" =>
                      \$720_branch_if_id\ := X"0" & X"19";
                      \$720_branch_if_arg\ := eclat_true & \$v1522\(16 to 47) & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121) & eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & eclat_add(\$v1522\(0 to 15) & X"000" & X"2");
                      state_var4545 <= \$720_branch_if\;
                    when X"58" =>
                      \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & 
                      eclat_if(eclat_eq(\$v1522\(16 to 46) & "000"& X"000000" & X"0") & "000"& X"000000" & X"1" & "000"& X"000000" & X"0") & eclat_true & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                      \$v1526\ := \$v8\ & eclat_true;
                      result4150 := eclat_unit;
                      rdy4151 := eclat_true;
                      state_var4545 <= compute4152;
                    when X"5a" =>
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(eclat_sub(\$v1522\(48 to 63) & X"000" & X"1") & X"000" & X"1")));
                      state_var4545 <= pause_getI4388;
                    when X"5b" =>
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$v1522\(104 to 119) & X"000" & X"1")));
                      state_var4545 <= pause_getI4396;
                    when X"63" =>
                      \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & "000"& X"000000" & X"0" & eclat_true & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                      \$v1526\ := \$v8\ & eclat_true;
                      result4150 := eclat_unit;
                      rdy4151 := eclat_true;
                      state_var4545 <= compute4152;
                    when X"64" =>
                      \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & "000"& X"000000" & X"1" & eclat_true & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                      \$v1526\ := \$v8\ & eclat_true;
                      result4150 := eclat_unit;
                      rdy4151 := eclat_true;
                      state_var4545 <= compute4152;
                    when X"65" =>
                      \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & "000"& X"000000" & X"2" & eclat_true & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                      \$v1526\ := \$v8\ & eclat_true;
                      result4150 := eclat_unit;
                      rdy4151 := eclat_true;
                      state_var4545 <= compute4152;
                    when X"66" =>
                      \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & "000"& X"000000" & X"3" & eclat_true & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                      \$v1526\ := \$v8\ & eclat_true;
                      result4150 := eclat_unit;
                      rdy4151 := eclat_true;
                      state_var4545 <= compute4152;
                    when X"68" =>
                      \$ram_ptr_write\ <= to_integer(unsigned(\$v1522\(48 to 63)));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= \$v1522\(16 to 47);
                      state_var4545 <= pause_setI4398;
                    when X"69" =>
                      \$ram_ptr_write\ <= to_integer(unsigned(\$v1522\(48 to 63)));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= \$v1522\(16 to 47);
                      state_var4545 <= pause_setI4399;
                    when X"6a" =>
                      \$ram_ptr_write\ <= to_integer(unsigned(\$v1522\(48 to 63)));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= \$v1522\(16 to 47);
                      state_var4545 <= pause_setI4400;
                    when X"6b" =>
                      \$ram_ptr_write\ <= to_integer(unsigned(\$v1522\(48 to 63)));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= \$v1522\(16 to 47);
                      state_var4545 <= pause_setI4401;
                    when X"6e" =>
                      \$716_binop_int_id\ := X"0" & X"1a";
                      \$716_binop_int_arg\ := X"0000000" & X"0" & eclat_false & \$v1522\(16 to 47) & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121) & eclat_add(\$v1522\(0 to 15) & X"000" & X"1");
                      state_var4545 <= \$716_binop_int\;
                    when X"6f" =>
                      \$716_binop_int_id\ := X"0" & X"1b";
                      \$716_binop_int_arg\ := X"0000000" & X"1" & eclat_true & \$v1522\(16 to 47) & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121) & eclat_add(\$v1522\(0 to 15) & X"000" & X"1");
                      state_var4545 <= \$716_binop_int\;
                    when X"70" =>
                      \$716_binop_int_id\ := X"0" & X"1c";
                      \$716_binop_int_arg\ := X"0000000" & X"2" & eclat_false & \$v1522\(16 to 47) & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121) & eclat_add(\$v1522\(0 to 15) & X"000" & X"1");
                      state_var4545 <= \$716_binop_int\;
                    when X"72" =>
                      \$716_binop_int_id\ := X"0" & X"1d";
                      \$716_binop_int_arg\ := X"0000000" & X"3" & eclat_false & \$v1522\(16 to 47) & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121) & eclat_add(\$v1522\(0 to 15) & X"000" & X"1");
                      state_var4545 <= \$716_binop_int\;
                    when X"73" =>
                      \$716_binop_int_id\ := X"0" & X"1e";
                      \$716_binop_int_arg\ := X"0000000" & X"4" & eclat_false & \$v1522\(16 to 47) & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121) & eclat_add(\$v1522\(0 to 15) & X"000" & X"1");
                      state_var4545 <= \$716_binop_int\;
                    when X"74" =>
                      \$716_binop_int_id\ := X"0" & X"1f";
                      \$716_binop_int_arg\ := X"0000000" & X"5" & eclat_false & \$v1522\(16 to 47) & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121) & eclat_add(\$v1522\(0 to 15) & X"000" & X"1");
                      state_var4545 <= \$716_binop_int\;
                    when X"75" =>
                      \$716_binop_int_id\ := X"0" & X"20";
                      \$716_binop_int_arg\ := X"0000000" & X"6" & eclat_false & \$v1522\(16 to 47) & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121) & eclat_add(\$v1522\(0 to 15) & X"000" & X"1");
                      state_var4545 <= \$716_binop_int\;
                    when X"79" =>
                      \$718_binop_compare_id\ := X"0" & X"21";
                      \$718_binop_compare_arg\ := X"0000000" & X"0" & \$v1522\(16 to 47) & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121) & eclat_add(\$v1522\(0 to 15) & X"000" & X"1");
                      state_var4545 <= \$718_binop_compare\;
                    when X"7a" =>
                      \$718_binop_compare_id\ := X"0" & X"22";
                      \$718_binop_compare_arg\ := X"0000000" & X"1" & \$v1522\(16 to 47) & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121) & eclat_add(\$v1522\(0 to 15) & X"000" & X"1");
                      state_var4545 <= \$718_binop_compare\;
                    when X"7b" =>
                      \$718_binop_compare_id\ := X"0" & X"23";
                      \$718_binop_compare_arg\ := X"0000000" & X"2" & \$v1522\(16 to 47) & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121) & eclat_add(\$v1522\(0 to 15) & X"000" & X"1");
                      state_var4545 <= \$718_binop_compare\;
                    when X"7c" =>
                      \$718_binop_compare_id\ := X"0" & X"24";
                      \$718_binop_compare_arg\ := X"0000000" & X"3" & \$v1522\(16 to 47) & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121) & eclat_add(\$v1522\(0 to 15) & X"000" & X"1");
                      state_var4545 <= \$718_binop_compare\;
                    when X"7d" =>
                      \$718_binop_compare_id\ := X"0" & X"25";
                      \$718_binop_compare_arg\ := X"0000000" & X"4" & \$v1522\(16 to 47) & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121) & eclat_add(\$v1522\(0 to 15) & X"000" & X"1");
                      state_var4545 <= \$718_binop_compare\;
                    when X"7e" =>
                      \$718_binop_compare_id\ := X"0" & X"26";
                      \$718_binop_compare_arg\ := X"0000000" & X"5" & \$v1522\(16 to 47) & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121) & eclat_add(\$v1522\(0 to 15) & X"000" & X"1");
                      state_var4545 <= \$718_binop_compare\;
                    when X"81" =>
                      \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & 
                      eclat_if(""&\$v1522\(47) & "000"& X"000000" & X"1" & "000"& X"000000" & X"0") & eclat_true & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                      \$v1526\ := \$v8\ & eclat_true;
                      result4150 := eclat_unit;
                      rdy4151 := eclat_true;
                      state_var4545 <= compute4152;
                    when X"8f" =>
                      eclat_print_string(of_string("STOP : "));
                      
                      \$v8\ := \$v1522\(0 to 15) & \$v1522\(16 to 47) & \$v1522\(48 to 63) & \$v1522\(64 to 119) & eclat_true & ""&\$v1522\(121);
                      \$v1526\ := \$v8\ & eclat_true;
                      result4150 := eclat_unit;
                      rdy4151 := eclat_true;
                      state_var4545 <= compute4152;
                    when others =>
                      \$code_ptr\ <= to_integer(unsigned(eclat_add(\$v1522\(0 to 15) & X"000" & X"1")));
                      state_var4545 <= pause_getI4530;
                    end case;
                  when pause_setI4297 =>
                    \$ram_write_request\ <= '0';
                    \$v2892\ := eclat_unit;
                    \$1330_sp\ := eclat_add(\$v1522\(48 to 63) & X"000" & X"1");
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$v1522\(16 to 47) & \$1330_sp\ & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_setI4298 =>
                    \$ram_write_request\ <= '0';
                    \$v2893\ := eclat_unit;
                    \$5248_sp\ := eclat_add(\$v1522\(48 to 63) & X"000" & X"1");
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$v1522\(16 to 47) & \$5248_sp\ & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_setI4301 =>
                    \$ram_write_request\ <= '0';
                    \$v2894\ := eclat_unit;
                    \$5250_sp\ := eclat_add(\$v1522\(48 to 63) & X"000" & X"1");
                    \$ram_ptr\ <= to_integer(unsigned(eclat_sub(eclat_sub(\$5250_sp\ & X"000" & X"1") & X"000" & X"1")));
                    state_var4545 <= pause_getI4299;
                  when pause_setI4304 =>
                    \$ram_write_request\ <= '0';
                    \$v2895\ := eclat_unit;
                    \$5255_sp\ := eclat_add(\$v1522\(48 to 63) & X"000" & X"1");
                    \$ram_ptr\ <= to_integer(unsigned(eclat_sub(eclat_sub(\$5255_sp\ & X"000" & X"2") & X"000" & X"1")));
                    state_var4545 <= pause_getI4302;
                  when pause_setI4307 =>
                    \$ram_write_request\ <= '0';
                    \$v2896\ := eclat_unit;
                    \$5260_sp\ := eclat_add(\$v1522\(48 to 63) & X"000" & X"1");
                    \$ram_ptr\ <= to_integer(unsigned(eclat_sub(eclat_sub(\$5260_sp\ & X"000" & X"3") & X"000" & X"1")));
                    state_var4545 <= pause_getI4305;
                  when pause_setI4310 =>
                    \$ram_write_request\ <= '0';
                    \$v2897\ := eclat_unit;
                    \$5265_sp\ := eclat_add(\$v1522\(48 to 63) & X"000" & X"1");
                    \$ram_ptr\ <= to_integer(unsigned(eclat_sub(eclat_sub(\$5265_sp\ & X"000" & X"4") & X"000" & X"1")));
                    state_var4545 <= pause_getI4308;
                  when pause_setI4313 =>
                    \$ram_write_request\ <= '0';
                    \$v2898\ := eclat_unit;
                    \$5270_sp\ := eclat_add(\$v1522\(48 to 63) & X"000" & X"1");
                    \$ram_ptr\ <= to_integer(unsigned(eclat_sub(eclat_sub(\$5270_sp\ & X"000" & X"5") & X"000" & X"1")));
                    state_var4545 <= pause_getI4311;
                  when pause_setI4316 =>
                    \$ram_write_request\ <= '0';
                    \$v2899\ := eclat_unit;
                    \$5275_sp\ := eclat_add(\$v1522\(48 to 63) & X"000" & X"1");
                    \$ram_ptr\ <= to_integer(unsigned(eclat_sub(eclat_sub(\$5275_sp\ & X"000" & X"6") & X"000" & X"1")));
                    state_var4545 <= pause_getI4314;
                  when pause_setI4319 =>
                    \$ram_write_request\ <= '0';
                    \$v2900\ := eclat_unit;
                    \$5280_sp\ := eclat_add(\$v1522\(48 to 63) & X"000" & X"1");
                    \$ram_ptr\ <= to_integer(unsigned(eclat_sub(eclat_sub(\$5280_sp\ & X"000" & X"7") & X"000" & X"1")));
                    state_var4545 <= pause_getI4317;
                  when pause_setI4330 =>
                    \$ram_write_request\ <= '0';
                    \$v2901\ := eclat_unit;
                    \$5305_sp\ := eclat_add(\$v1522\(48 to 63) & X"000" & X"1");
                    \$ram_ptr\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$v1522\(64 to 94),16) & eclat_sub(X"000" & X"1" & X"000" & X"1")) & X"000" & X"1")));
                    state_var4545 <= pause_getI4328;
                  when pause_setI4333 =>
                    \$ram_write_request\ <= '0';
                    \$v2902\ := eclat_unit;
                    \$5312_sp\ := eclat_add(\$v1522\(48 to 63) & X"000" & X"1");
                    \$ram_ptr\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$v1522\(64 to 94),16) & eclat_sub(X"000" & X"2" & X"000" & X"1")) & X"000" & X"1")));
                    state_var4545 <= pause_getI4331;
                  when pause_setI4336 =>
                    \$ram_write_request\ <= '0';
                    \$v2903\ := eclat_unit;
                    \$5319_sp\ := eclat_add(\$v1522\(48 to 63) & X"000" & X"1");
                    \$ram_ptr\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$v1522\(64 to 94),16) & eclat_sub(X"000" & X"3" & X"000" & X"1")) & X"000" & X"1")));
                    state_var4545 <= pause_getI4334;
                  when pause_setI4339 =>
                    \$ram_write_request\ <= '0';
                    \$v2904\ := eclat_unit;
                    \$5326_sp\ := eclat_add(\$v1522\(48 to 63) & X"000" & X"1");
                    \$ram_ptr\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$v1522\(64 to 94),16) & eclat_sub(X"000" & X"4" & X"000" & X"1")) & X"000" & X"1")));
                    state_var4545 <= pause_getI4337;
                  when pause_setI4344 =>
                    \$ram_write_request\ <= '0';
                    \$v2905\ := eclat_unit;
                    \$5337_sp\ := eclat_add(\$v1522\(48 to 63) & X"000" & X"1");
                    \$715_offsetclosure_n_id\ := X"0" & X"13";
                    \$715_offsetclosure_n_arg\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$5337_sp\ & eclat_sub(X"000" & X"0" & X"000" & X"2") & \$v1522\(64 to 95) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    state_var4545 <= \$715_offsetclosure_n\;
                  when pause_setI4345 =>
                    \$ram_write_request\ <= '0';
                    \$v2906\ := eclat_unit;
                    \$5339_sp\ := eclat_add(\$v1522\(48 to 63) & X"000" & X"1");
                    \$715_offsetclosure_n_id\ := X"0" & X"14";
                    \$715_offsetclosure_n_arg\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$5339_sp\ & X"000" & X"0" & \$v1522\(64 to 95) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    state_var4545 <= \$715_offsetclosure_n\;
                  when pause_setI4346 =>
                    \$ram_write_request\ <= '0';
                    \$v2907\ := eclat_unit;
                    \$5341_sp\ := eclat_add(\$v1522\(48 to 63) & X"000" & X"1");
                    \$715_offsetclosure_n_id\ := X"0" & X"15";
                    \$715_offsetclosure_n_arg\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$5341_sp\ & X"000" & X"2" & \$v1522\(64 to 95) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    state_var4545 <= \$715_offsetclosure_n\;
                  when pause_setI4347 =>
                    \$ram_write_request\ <= '0';
                    \$v2908\ := eclat_unit;
                    \$973_sp\ := eclat_add(\$v1522\(48 to 63) & X"000" & X"1");
                    \$719_make_block_n_id\ := X"0" & X"17";
                    \$719_make_block_n_arg\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & \$973_sp\ & eclat_false & eclat_false & eclat_false & "000"& X"000000" & X"0" & X"000" & X"0" & \$v1522\(16 to 47) & \$v1522\(64 to 95) & \$v1522\(96 to 103) & \$v1522\(120 to 121) & \$v1522\(104 to 119) & X"1770" & X"0" & X"fa0" & X"3e80" & X"0" & X"3e8";
                    state_var4545 <= \$719_make_block_n\;
                  when pause_setI4356 =>
                    \$ram_write_request\ <= '0';
                    \$v2914\ := eclat_unit;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & "000"& X"000000" & X"1" & eclat_true & \$v2913\(32 to 47) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_setI4359 =>
                    \$ram_write_request\ <= '0';
                    \$v2916\ := eclat_unit;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & "000"& X"000000" & X"1" & eclat_true & \$v2915\(32 to 47) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_setI4362 =>
                    \$ram_write_request\ <= '0';
                    \$v2918\ := eclat_unit;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & "000"& X"000000" & X"1" & eclat_true & \$v2917\(32 to 47) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_setI4365 =>
                    \$ram_write_request\ <= '0';
                    \$v2920\ := eclat_unit;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & "000"& X"000000" & X"1" & eclat_true & \$v2919\(32 to 47) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_setI4374 =>
                    \$ram_write_request\ <= '0';
                    \$v2924\ := eclat_unit;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & "000"& X"000000" & X"1" & eclat_true & \$v2923\(32 to 47) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_setI4383 =>
                    \$ram_write_request\ <= '0';
                    \$v2928\ := eclat_unit;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & "000"& X"000000" & X"1" & eclat_true & \$v2927\(32 to 47) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_setI4398 =>
                    \$ram_write_request\ <= '0';
                    \$v2934\ := eclat_unit;
                    \$5435_sp\ := eclat_add(\$v1522\(48 to 63) & X"000" & X"1");
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & "000"& X"000000" & X"0" & eclat_true & \$5435_sp\ & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_setI4399 =>
                    \$ram_write_request\ <= '0';
                    \$v2935\ := eclat_unit;
                    \$5438_sp\ := eclat_add(\$v1522\(48 to 63) & X"000" & X"1");
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & "000"& X"000000" & X"1" & eclat_true & \$5438_sp\ & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_setI4400 =>
                    \$ram_write_request\ <= '0';
                    \$v2936\ := eclat_unit;
                    \$5441_sp\ := eclat_add(\$v1522\(48 to 63) & X"000" & X"1");
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & "000"& X"000000" & X"2" & eclat_true & \$5441_sp\ & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_setI4401 =>
                    \$ram_write_request\ <= '0';
                    \$v2937\ := eclat_unit;
                    \$5444_sp\ := eclat_add(\$v1522\(48 to 63) & X"000" & X"1");
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & "000"& X"000000" & X"3" & eclat_true & \$5444_sp\ & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_setI4406 =>
                    \$ram_write_request\ <= '0';
                    \$v2819\ := eclat_unit;
                    \$1310_sp\ := eclat_add(\$v1522\(48 to 63) & X"000" & X"1");
                    \$ram_ptr\ <= to_integer(unsigned(eclat_sub(eclat_sub(\$1310_sp\ & eclat_resize(\$747_argument1\,16)) & X"000" & X"1")));
                    state_var4545 <= pause_getI4404;
                  when pause_setI4407 =>
                    \$ram_write_request\ <= '0';
                    \$v2820\ := eclat_unit;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & "000"& X"000000" & X"1" & eclat_true & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_setI4412 =>
                    \$ram_write_request\ <= '0';
                    \$v2821\ := eclat_unit;
                    \$1303_sp\ := eclat_add(\$v1522\(48 to 63) & X"000" & X"1");
                    \$ram_ptr\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$v1522\(64 to 94),16) & eclat_sub(eclat_resize(\$747_argument1\,16) & X"000" & X"1")) & X"000" & X"1")));
                    state_var4545 <= pause_getI4410;
                  when pause_setI4413 =>
                    \$ram_write_request\ <= '0';
                    \$v2822\ := eclat_unit;
                    \$823_sp\ := eclat_add(\$822_sp\ & X"000" & X"1");
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & \$v1522\(16 to 47) & \$823_sp\ & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_setI4414 =>
                    \$ram_write_request\ <= '0';
                    \$v2823\ := eclat_unit;
                    \$822_sp\ := eclat_add(\$817_sp\ & X"000" & X"1");
                    \$ram_ptr_write\ <= to_integer(unsigned(\$822_sp\));
                    \$ram_write_request\ <= '1';
                    \$ram_write\ <= eclat_resize(eclat_add(eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & eclat_resize(\$747_argument1\,16)),31) & eclat_true;
                    state_var4545 <= pause_setI4413;
                  when pause_setI4415 =>
                    \$ram_write_request\ <= '0';
                    \$v2824\ := eclat_unit;
                    \$817_sp\ := eclat_add(\$v1522\(48 to 63) & X"000" & X"1");
                    \$ram_ptr_write\ <= to_integer(unsigned(\$817_sp\));
                    \$ram_write_request\ <= '1';
                    \$ram_write\ <= \$v1522\(64 to 95);
                    state_var4545 <= pause_setI4414;
                  when pause_setI4433 =>
                    \$ram_write_request\ <= '0';
                    \$v2830\ := eclat_unit;
                    \$723_w_id\ := X"0" & X"2a";
                    \$723_w_arg\ := X"0" & X"0" & \$v1522\(48 to 63) & \$v2828\(64 to 95) & \$v1522\(96 to 103);
                    state_var4545 <= \$723_w\;
                  when pause_setI4434 =>
                    \$ram_write_request\ <= '0';
                    \$v2829\ := eclat_unit;
                    \$ram_ptr_write\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$v2828\(64 to 94),16) & X"000" & X"1") & X"000" & X"1")));
                    \$ram_write_request\ <= '1';
                    \$ram_write\ <= \$v2828\(32 to 63);
                    state_var4545 <= pause_setI4433;
                  when pause_setI4436 =>
                    \$ram_write_request\ <= '0';
                    \$v2834\ := eclat_unit;
                    \$1241_sp\ := eclat_add(\$v1522\(48 to 63) & X"000" & X"1");
                    \$715_offsetclosure_n_id\ := X"0" & X"2d";
                    \$715_offsetclosure_n_arg\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & \$1241_sp\ & eclat_resize(\$747_argument1\,16) & \$v1522\(64 to 95) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    state_var4545 <= \$715_offsetclosure_n\;
                  when pause_setI4441 =>
                    \$ram_write_request\ <= '0';
                    \$v2835\ := eclat_unit;
                    \$878_sp\ := eclat_add(\$v1522\(48 to 63) & X"000" & X"1");
                    \$ram_ptr\ <= to_integer(unsigned(eclat_add(X"3e80" & eclat_resize(\$747_argument1\,16))));
                    state_var4545 <= pause_getI4439;
                  when pause_setI4442 =>
                    \$ram_write_request\ <= '0';
                    \$v2836\ := eclat_unit;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & "000"& X"000000" & X"1" & eclat_true & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_setI4443 =>
                    \$ram_write_request\ <= '0';
                    \$v2837\ := eclat_unit;
                    \$882_sp\ := eclat_add(\$v1522\(48 to 63) & X"000" & X"1");
                    \$719_make_block_n_id\ := X"0" & X"2f";
                    \$719_make_block_n_arg\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & \$882_sp\ & eclat_false & eclat_false & eclat_false & \$747_argument1\ & X"000" & X"0" & \$v1522\(16 to 47) & \$v1522\(64 to 95) & \$v1522\(96 to 103) & \$v1522\(120 to 121) & \$v1522\(104 to 119) & X"1770" & X"0" & X"fa0" & X"3e80" & X"0" & X"3e8";
                    state_var4545 <= \$719_make_block_n\;
                  when pause_setI4446 =>
                    \$ram_write_request\ <= '0';
                    \$v2840\ := eclat_unit;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & "000"& X"000000" & X"1" & eclat_true & \$v2839\(32 to 47) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_setI4454 =>
                    \$ram_write_request\ <= '0';
                    \$v2841\ := eclat_unit;
                    \$905_sp\ := eclat_add(\$904_sp\ & X"000" & X"1");
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & \$v1522\(16 to 47) & \$905_sp\ & \$v1522\(64 to 95) & \$v1522\(96 to 103) & \$905_sp\ & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_setI4455 =>
                    \$ram_write_request\ <= '0';
                    \$v2842\ := eclat_unit;
                    \$904_sp\ := eclat_add(\$897_sp\ & X"000" & X"1");
                    \$ram_ptr_write\ <= to_integer(unsigned(\$904_sp\));
                    \$ram_write_request\ <= '1';
                    \$ram_write\ <= eclat_resize(eclat_add(eclat_add(\$v1522\(0 to 15) & X"000" & X"1") & eclat_resize(\$747_argument1\,16)),31) & eclat_true;
                    state_var4545 <= pause_setI4454;
                  when pause_setI4456 =>
                    \$ram_write_request\ <= '0';
                    \$v2843\ := eclat_unit;
                    \$897_sp\ := eclat_add(\$896_sp\ & X"000" & X"1");
                    \$ram_ptr_write\ <= to_integer(unsigned(\$897_sp\));
                    \$ram_write_request\ <= '1';
                    \$ram_write\ <= eclat_resize(\$v1522\(104 to 119),31) & eclat_true;
                    state_var4545 <= pause_setI4455;
                  when pause_setI4457 =>
                    \$ram_write_request\ <= '0';
                    \$v2844\ := eclat_unit;
                    \$896_sp\ := eclat_add(\$v1522\(48 to 63) & X"000" & X"1");
                    \$ram_ptr_write\ <= to_integer(unsigned(\$896_sp\));
                    \$ram_write_request\ <= '1';
                    \$ram_write\ <= \$v1522\(64 to 95);
                    state_var4545 <= pause_setI4456;
                  when pause_setI4461 =>
                    \$ram_write_request\ <= '0';
                    \$v2851\ := eclat_unit;
                    \$906_sp\ := eclat_add(\$v1522\(48 to 63) & X"000" & X"1");
                    \$v4460\ := \$747_argument1\;
                    case \$v4460\ is
                    when "000"& X"000000" & X"0" =>
                      eclat_print_string(of_string("======> "));
                      
                      eclat_print_int(\$v1522\(16 to 46));
                      
                      eclat_print_newline(eclat_unit);
                      
                      \$v2845\ := "000"& X"000000" & X"1" & eclat_true & \$v1522\(120 to 121);
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$906_sp\ & X"000" & X"1")));
                      state_var4545 <= pause_getI4458;
                    when others =>
                      eclat_print_string(of_string("unknown primitive"));
                      
                      \$v2845\ := "000"& X"000000" & X"1" & eclat_true & \$v1522\(120 to 121);
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$906_sp\ & X"000" & X"1")));
                      state_var4545 <= pause_getI4458;
                    end case;
                  when pause_setI4465 =>
                    \$ram_write_request\ <= '0';
                    \$v2859\ := eclat_unit;
                    \$914_sp\ := eclat_add(\$v2852\(32 to 47) & X"000" & X"1");
                    \$v4464\ := \$747_argument1\;
                    case \$v4464\ is
                    when "000"& X"000000" & X"0" =>
                      eclat_print_string(of_string("======> "));
                      
                      eclat_print_int(\$v1522\(16 to 46));
                      
                      eclat_print_newline(eclat_unit);
                      
                      \$v2853\ := "000"& X"000000" & X"1" & eclat_true & \$v1522\(120 to 121);
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$914_sp\ & X"000" & X"1")));
                      state_var4545 <= pause_getI4462;
                    when others =>
                      eclat_print_string(of_string("unknown primitive"));
                      
                      \$v2853\ := "000"& X"000000" & X"1" & eclat_true & \$v1522\(120 to 121);
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$914_sp\ & X"000" & X"1")));
                      state_var4545 <= pause_getI4462;
                    end case;
                  when pause_setI4471 =>
                    \$ram_write_request\ <= '0';
                    \$v2868\ := eclat_unit;
                    \$924_sp\ := eclat_add(\$v2861\(32 to 47) & X"000" & X"1");
                    \$v4470\ := \$747_argument1\;
                    case \$v4470\ is
                    when "000"& X"000000" & X"0" =>
                      eclat_print_string(of_string("======> "));
                      
                      eclat_print_int(\$v1522\(16 to 46));
                      
                      eclat_print_newline(eclat_unit);
                      
                      \$v2862\ := "000"& X"000000" & X"1" & eclat_true & \$v1522\(120 to 121);
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$924_sp\ & X"000" & X"1")));
                      state_var4545 <= pause_getI4468;
                    when others =>
                      eclat_print_string(of_string("unknown primitive"));
                      
                      \$v2862\ := "000"& X"000000" & X"1" & eclat_true & \$v1522\(120 to 121);
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$924_sp\ & X"000" & X"1")));
                      state_var4545 <= pause_getI4468;
                    end case;
                  when pause_setI4479 =>
                    \$ram_write_request\ <= '0';
                    \$v2878\ := eclat_unit;
                    \$936_sp\ := eclat_add(\$v2871\(32 to 47) & X"000" & X"1");
                    \$v4478\ := \$747_argument1\;
                    case \$v4478\ is
                    when "000"& X"000000" & X"0" =>
                      eclat_print_string(of_string("======> "));
                      
                      eclat_print_int(\$v1522\(16 to 46));
                      
                      eclat_print_newline(eclat_unit);
                      
                      \$v2872\ := "000"& X"000000" & X"1" & eclat_true & \$v1522\(120 to 121);
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$936_sp\ & X"000" & X"1")));
                      state_var4545 <= pause_getI4476;
                    when others =>
                      eclat_print_string(of_string("unknown primitive"));
                      
                      \$v2872\ := "000"& X"000000" & X"1" & eclat_true & \$v1522\(120 to 121);
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$936_sp\ & X"000" & X"1")));
                      state_var4545 <= pause_getI4476;
                    end case;
                  when pause_setI4489 =>
                    \$ram_write_request\ <= '0';
                    \$v2889\ := eclat_unit;
                    \$950_sp\ := eclat_add(\$v2882\(32 to 47) & X"000" & X"1");
                    \$v4488\ := \$747_argument1\;
                    case \$v4488\ is
                    when "000"& X"000000" & X"0" =>
                      eclat_print_string(of_string("======> "));
                      
                      eclat_print_int(\$v1522\(16 to 46));
                      
                      eclat_print_newline(eclat_unit);
                      
                      \$v2883\ := "000"& X"000000" & X"1" & eclat_true & \$v1522\(120 to 121);
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$950_sp\ & X"000" & X"1")));
                      state_var4545 <= pause_getI4486;
                    when others =>
                      eclat_print_string(of_string("unknown primitive"));
                      
                      \$v2883\ := "000"& X"000000" & X"1" & eclat_true & \$v1522\(120 to 121);
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$950_sp\ & X"000" & X"1")));
                      state_var4545 <= pause_getI4486;
                    end case;
                  when pause_setI4498 =>
                    \$ram_write_request\ <= '0';
                    \$v2890\ := eclat_unit;
                    \$1295_sp\ := eclat_add(\$v1522\(48 to 63) & X"000" & X"1");
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & \$747_argument1\ & eclat_true & \$1295_sp\ & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_setI4499 =>
                    \$ram_write_request\ <= '0';
                    \$v2891\ := eclat_unit;
                    \$v8\ := eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & "000"& X"000000" & X"1" & eclat_true & \$v1522\(48 to 63) & \$v1522\(64 to 119) & \$v1522\(120 to 121);
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_setI4504 =>
                    \$ram_write_request\ <= '0';
                    \$v2814\ := eclat_unit;
                    \$v2812\ := \$v2813\(0 to 31) & \$v2813\(32 to 63) & \$v2813\(64 to 95);
                    \$725_fill_id\ := X"0" & X"36";
                    \$725_fill_arg\ := X"000" & X"1" & \$781_sp\ & eclat_resize(\$747_argument1\,16) & \$v2812\(64 to 95);
                    state_var4545 <= \$725_fill\;
                  when pause_setI4505 =>
                    \$ram_write_request\ <= '0';
                    \$v2815\ := eclat_unit;
                    \$781_sp\ := eclat_add(\$v1522\(48 to 63) & X"000" & X"1");
                    \$713_id\ := X"0" & X"37";
                    \$713_arg\ := \$781_sp\ & \$v1522\(16 to 47) & \$v1522\(64 to 95) & X"f7" & eclat_add(eclat_resize(\$747_argument1\,16) & X"000" & X"1") & X"1770" & X"0" & X"fa0" & X"3e80" & X"0" & X"3e8";
                    state_var4545 <= \$713\;
                  when pause_setI4515 =>
                    \$ram_write_request\ <= '0';
                    \$v2816\ := eclat_unit;
                    \$795_sp\ := eclat_add(\$v1522\(48 to 63) & X"000" & X"1");
                    \$ram_ptr\ <= to_integer(unsigned(eclat_add(X"3e80" & eclat_resize(\$747_argument1\,16))));
                    state_var4545 <= pause_getI4513;
                  when pause_setI4516 =>
                    \$ram_write_request\ <= '0';
                    \$v2818\ := eclat_unit;
                    \$726_fill_id\ := X"0" & X"38";
                    \$726_fill_arg\ := X"000" & X"1" & \$v1522\(48 to 63) & eclat_resize(\$747_argument1\,16) & \$v2817\(64 to 95);
                    state_var4545 <= \$726_fill\;
                  when pause_setI4517 =>
                    \$ram_write_request\ <= '0';
                    \$v2809\ := eclat_unit;
                    \$766_sp\ := eclat_add(\$765_sp\ & X"000" & X"1");
                    \$729_w3_id\ := X"0" & X"40";
                    \$729_w3_arg\ := X"000" & X"1" & \$766_sp\ & \$v2806\(64 to 95) & eclat_resize(\$747_argument1\,16);
                    state_var4545 <= \$729_w3\;
                  when pause_setI4518 =>
                    \$ram_write_request\ <= '0';
                    \$v2807\ := eclat_unit;
                    \$727_w0_id\ := X"0" & X"42";
                    \$727_w0_arg\ := X"000" & X"0" & \$755_sp\ & eclat_resize(\$748_argument2\,16) & \$v2806\(64 to 95) & eclat_resize(\$747_argument1\,16);
                    state_var4545 <= \$727_w0\;
                  when pause_setI4519 =>
                    \$ram_write_request\ <= '0';
                    \$v2810\ := eclat_unit;
                    \$755_sp\ := eclat_add(\$v1522\(48 to 63) & X"000" & X"1");
                    \$713_id\ := X"0" & X"43";
                    \$713_arg\ := \$755_sp\ & \$v1522\(16 to 47) & \$v1522\(64 to 95) & X"f7" & eclat_add(eclat_sub(eclat_mult(X"000" & X"2" & eclat_resize(\$747_argument1\,16)) & X"000" & X"1") & eclat_resize(\$748_argument2\,16)) & X"1770" & X"0" & X"fa0" & X"3e80" & X"0" & X"3e8";
                    state_var4545 <= \$713\;
                  when pause_getI4154 =>
                    state_var4545 <= pause_getII4155;
                  when pause_getII4155 =>
                    \$1597\ := \$ram_value\;
                    \$ram_ptr_write\ <= to_integer(unsigned(eclat_add(\$709_loop_arg\(48 to 63) & \$709_loop_arg\(0 to 15))));
                    \$ram_write_request\ <= '1';
                    \$ram_write\ <= \$1597\;
                    state_var4545 <= pause_setI4153;
                  when pause_setI4153 =>
                    \$ram_write_request\ <= '0';
                    \$v2639\ := eclat_unit;
                    \$709_loop_arg\ := eclat_add(\$709_loop_arg\(0 to 15) & X"000" & X"1") & \$709_loop_arg\(16 to 31) & \$709_loop_arg\(32 to 47) & \$709_loop_arg\(48 to 63);
                    state_var4545 <= \$709_loop\;
                  when pause_getI4161 =>
                    state_var4545 <= pause_getII4162;
                  when pause_getI4164 =>
                    state_var4545 <= pause_getII4165;
                  when pause_getI4167 =>
                    state_var4545 <= pause_getII4168;
                  when pause_getII4162 =>
                    \$1579_hd\ := \$ram_value\;
                    \$1581\ := eclat_resize(eclat_lsr(\$1579_hd\(0 to 30) & "000"& X"000000" & X"2"),16);
                    eclat_print_string(of_string("bloc "));
                    
                    eclat_print_int(eclat_resize(\$1564\(0 to 30),16));
                    
                    eclat_print_string(of_string(" of size "));
                    
                    eclat_print_int(eclat_add(\$1581\ & X"000" & X"1"));
                    
                    eclat_print_string(of_string(" from "));
                    
                    eclat_print_int(eclat_resize(\$1564\(0 to 30),16));
                    
                    eclat_print_string(of_string(" to "));
                    
                    eclat_print_int(\$710_copy_root_in_ram_arg\(32 to 47));
                    
                    eclat_print_newline(eclat_unit);
                    
                    \$ram_ptr_write\ <= to_integer(unsigned(\$710_copy_root_in_ram_arg\(32 to 47)));
                    \$ram_write_request\ <= '1';
                    \$ram_write\ <= \$1579_hd\;
                    state_var4545 <= pause_setI4160;
                  when pause_getII4165 =>
                    \$1577_w\ := \$ram_value\;
                    \$v4163\ := eclat_if(eclat_not(""&\$1577_w\(31)) & 
                                eclat_if(eclat_le(\$710_copy_root_in_ram_arg\(64 to 79) & eclat_resize(\$1577_w\(0 to 30),16)) & eclat_lt(eclat_resize(\$1577_w\(0 to 30),16) & eclat_add(\$710_copy_root_in_ram_arg\(64 to 79) & \$710_copy_root_in_ram_arg\(80 to 95))) & eclat_false) & eclat_false);
                    if \$v4163\(0) = '1' then
                      \$v2644\ := \$1577_w\ & \$710_copy_root_in_ram_arg\(32 to 47);
                      \$ram_ptr_write\ <= to_integer(unsigned(\$710_copy_root_in_ram_arg\(0 to 15)));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= \$v2644\(0 to 31);
                      state_var4545 <= pause_setI4157;
                    else
                      \$ram_ptr\ <= to_integer(unsigned(eclat_resize(\$1564\(0 to 30),16)));
                      state_var4545 <= pause_getI4161;
                    end if;
                  when pause_getII4168 =>
                    \$1564\ := \$ram_value\;
                    \$v4166\ := eclat_not(eclat_if(eclat_not(""&\$1564\(31)) & 
                                          eclat_if(eclat_le(\$710_copy_root_in_ram_arg\(48 to 63) & eclat_resize(\$1564\(0 to 30),16)) & eclat_lt(eclat_resize(\$1564\(0 to 30),16) & eclat_add(\$710_copy_root_in_ram_arg\(48 to 63) & \$710_copy_root_in_ram_arg\(80 to 95))) & eclat_false) & eclat_false));
                    if \$v4166\(0) = '1' then
                      \$v2644\ := \$1564\ & \$710_copy_root_in_ram_arg\(32 to 47);
                      \$ram_ptr_write\ <= to_integer(unsigned(\$710_copy_root_in_ram_arg\(0 to 15)));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= \$v2644\(0 to 31);
                      state_var4545 <= pause_setI4157;
                    else
                      \$ram_ptr\ <= to_integer(unsigned(eclat_add(eclat_resize(\$1564\(0 to 30),16) & X"000" & X"1")));
                      state_var4545 <= pause_getI4164;
                    end if;
                  when pause_setI4157 =>
                    \$ram_write_request\ <= '0';
                    \$v2645\ := eclat_unit;
                    eclat_print_string(of_string(" next="));
                    
                    eclat_print_int(\$v2644\(32 to 47));
                    
                    eclat_print_newline(eclat_unit);
                    
                    \$710_copy_root_in_ram_arg\ := eclat_add(\$710_copy_root_in_ram_arg\(0 to 15) & X"000" & X"1") & \$710_copy_root_in_ram_arg\(16 to 31) & \$v2644\(32 to 47) & \$710_copy_root_in_ram_arg\(48 to 63) & \$710_copy_root_in_ram_arg\(64 to 79) & \$710_copy_root_in_ram_arg\(80 to 95);
                    state_var4545 <= \$710_copy_root_in_ram\;
                  when pause_setI4158 =>
                    \$ram_write_request\ <= '0';
                    \$v2661\ := eclat_unit;
                    \$v2644\ := eclat_resize(\$710_copy_root_in_ram_arg\(32 to 47),31) & eclat_false & eclat_add(\$710_copy_root_in_ram_arg\(32 to 47) & eclat_add(\$1581\ & X"000" & X"1"));
                    \$ram_ptr_write\ <= to_integer(unsigned(\$710_copy_root_in_ram_arg\(0 to 15)));
                    \$ram_write_request\ <= '1';
                    \$ram_write\ <= \$v2644\(0 to 31);
                    state_var4545 <= pause_setI4157;
                  when pause_setI4159 =>
                    \$ram_write_request\ <= '0';
                    \$v2660\ := eclat_unit;
                    \$ram_ptr_write\ <= to_integer(unsigned(eclat_add(eclat_resize(\$1564\(0 to 30),16) & X"000" & X"1")));
                    \$ram_write_request\ <= '1';
                    \$ram_write\ <= eclat_resize(\$710_copy_root_in_ram_arg\(32 to 47),31) & eclat_false;
                    state_var4545 <= pause_setI4158;
                  when pause_setI4160 =>
                    \$ram_write_request\ <= '0';
                    \$v2658\ := eclat_unit;
                    \$709_loop_id\ := X"00" & X"1";
                    \$709_loop_arg\ := X"000" & X"1" & eclat_resize(\$1564\(0 to 30),16) & eclat_add(\$1581\ & X"000" & X"1") & \$710_copy_root_in_ram_arg\(32 to 47);
                    state_var4545 <= \$709_loop\;
                  when pause_getI4174 =>
                    state_var4545 <= pause_getII4175;
                  when pause_getI4177 =>
                    state_var4545 <= pause_getII4178;
                  when pause_getI4180 =>
                    state_var4545 <= pause_getII4181;
                  when pause_getII4175 =>
                    \$4957_hd\ := \$ram_value\;
                    \$4959\ := eclat_resize(eclat_lsr(\$4957_hd\(0 to 30) & "000"& X"000000" & X"2"),16);
                    eclat_print_string(of_string("bloc "));
                    
                    eclat_print_int(eclat_resize(\$1553\(0 to 30),16));
                    
                    eclat_print_string(of_string(" of size "));
                    
                    eclat_print_int(eclat_add(\$4959\ & X"000" & X"1"));
                    
                    eclat_print_string(of_string(" from "));
                    
                    eclat_print_int(eclat_resize(\$1553\(0 to 30),16));
                    
                    eclat_print_string(of_string(" to "));
                    
                    eclat_print_int(\$711_loop_arg\(16 to 31));
                    
                    eclat_print_newline(eclat_unit);
                    
                    \$ram_ptr_write\ <= to_integer(unsigned(\$711_loop_arg\(16 to 31)));
                    \$ram_write_request\ <= '1';
                    \$ram_write\ <= \$4957_hd\;
                    state_var4545 <= pause_setI4173;
                  when pause_getII4178 =>
                    \$4955_w\ := \$ram_value\;
                    \$v4176\ := eclat_if(eclat_not(""&\$4955_w\(31)) & 
                                eclat_if(eclat_le(\$711_loop_arg\(64 to 79) & eclat_resize(\$4955_w\(0 to 30),16)) & eclat_lt(eclat_resize(\$4955_w\(0 to 30),16) & eclat_add(\$711_loop_arg\(64 to 79) & \$711_loop_arg\(96 to 111))) & eclat_false) & eclat_false);
                    if \$v4176\(0) = '1' then
                      \$v2663\ := \$4955_w\ & \$711_loop_arg\(16 to 31);
                      \$ram_ptr_write\ <= to_integer(unsigned(eclat_add(\$711_loop_arg\(80 to 95) & \$711_loop_arg\(0 to 15))));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= \$v2663\(0 to 31);
                      state_var4545 <= pause_setI4170;
                    else
                      \$ram_ptr\ <= to_integer(unsigned(eclat_resize(\$1553\(0 to 30),16)));
                      state_var4545 <= pause_getI4174;
                    end if;
                  when pause_getII4181 =>
                    \$1553\ := \$ram_value\;
                    \$v4179\ := eclat_not(eclat_if(eclat_not(""&\$1553\(31)) & 
                                          eclat_if(eclat_le(\$711_loop_arg\(48 to 63) & eclat_resize(\$1553\(0 to 30),16)) & eclat_lt(eclat_resize(\$1553\(0 to 30),16) & eclat_add(\$711_loop_arg\(48 to 63) & \$711_loop_arg\(96 to 111))) & eclat_false) & eclat_false));
                    if \$v4179\(0) = '1' then
                      \$v2663\ := \$1553\ & \$711_loop_arg\(16 to 31);
                      \$ram_ptr_write\ <= to_integer(unsigned(eclat_add(\$711_loop_arg\(80 to 95) & \$711_loop_arg\(0 to 15))));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= \$v2663\(0 to 31);
                      state_var4545 <= pause_setI4170;
                    else
                      \$ram_ptr\ <= to_integer(unsigned(eclat_add(eclat_resize(\$1553\(0 to 30),16) & X"000" & X"1")));
                      state_var4545 <= pause_getI4177;
                    end if;
                  when pause_setI4170 =>
                    \$ram_write_request\ <= '0';
                    \$v2664\ := eclat_unit;
                    \$711_loop_arg\ := eclat_add(\$711_loop_arg\(0 to 15) & X"000" & X"1") & \$v2663\(32 to 47) & \$711_loop_arg\(32 to 47) & \$711_loop_arg\(48 to 63) & \$711_loop_arg\(64 to 79) & \$711_loop_arg\(80 to 95) & \$711_loop_arg\(96 to 111);
                    state_var4545 <= \$711_loop\;
                  when pause_setI4171 =>
                    \$ram_write_request\ <= '0';
                    \$v2677\ := eclat_unit;
                    \$v2663\ := eclat_resize(\$711_loop_arg\(16 to 31),31) & eclat_false & eclat_add(\$711_loop_arg\(16 to 31) & eclat_add(\$4959\ & X"000" & X"1"));
                    \$ram_ptr_write\ <= to_integer(unsigned(eclat_add(\$711_loop_arg\(80 to 95) & \$711_loop_arg\(0 to 15))));
                    \$ram_write_request\ <= '1';
                    \$ram_write\ <= \$v2663\(0 to 31);
                    state_var4545 <= pause_setI4170;
                  when pause_setI4172 =>
                    \$ram_write_request\ <= '0';
                    \$v2676\ := eclat_unit;
                    \$ram_ptr_write\ <= to_integer(unsigned(eclat_add(eclat_resize(\$1553\(0 to 30),16) & X"000" & X"1")));
                    \$ram_write_request\ <= '1';
                    \$ram_write\ <= eclat_resize(\$711_loop_arg\(16 to 31),31) & eclat_false;
                    state_var4545 <= pause_setI4171;
                  when pause_setI4173 =>
                    \$ram_write_request\ <= '0';
                    \$v2674\ := eclat_unit;
                    \$709_loop_id\ := X"00" & X"2";
                    \$709_loop_arg\ := X"000" & X"1" & eclat_resize(\$1553\(0 to 30),16) & eclat_add(\$4959\ & X"000" & X"1") & \$711_loop_arg\(16 to 31);
                    state_var4545 <= \$709_loop\;
                  when pause_getI4183 =>
                    state_var4545 <= pause_getII4184;
                  when pause_getII4184 =>
                    \$1537\ := \$ram_value\;
                    \$1540\ := eclat_resize(eclat_lsr(eclat_resize(eclat_resize(\$1537\(0 to 30),16),31) & "000"& X"000000" & X"2"),16);
                    \$711_loop_id\ := X"00" & X"3";
                    \$711_loop_arg\ := X"000" & X"1" & \$712_aux_arg\(16 to 31) & eclat_add(\$1540\ & X"000" & X"1") & \$712_aux_arg\(32 to 47) & \$712_aux_arg\(48 to 63) & \$712_aux_arg\(0 to 15) & \$712_aux_arg\(64 to 79);
                    state_var4545 <= \$711_loop\;
                  when pause_getI4187 =>
                    state_var4545 <= pause_getII4188;
                  when pause_getI4192 =>
                    state_var4545 <= pause_getII4193;
                  when pause_getI4195 =>
                    state_var4545 <= pause_getII4196;
                  when pause_getI4201 =>
                    state_var4545 <= pause_getII4202;
                  when pause_getI4204 =>
                    state_var4545 <= pause_getII4205;
                  when pause_getII4188 =>
                    \$1527\ := \$global_end_value\;
                    \$710_copy_root_in_ram_id\ := X"00" & X"5";
                    \$710_copy_root_in_ram_arg\ := \$713_arg\(136 to 151) & \$1527\ & \$1526_next\ & \$v2636\(96 to 111) & \$v2636\(112 to 127) & \$713_arg\(104 to 119);
                    state_var4545 <= \$710_copy_root_in_ram\;
                  when pause_getII4193 =>
                    \$4986_hd\ := \$ram_value\;
                    \$4988\ := eclat_resize(eclat_lsr(\$4986_hd\(0 to 30) & "000"& X"000000" & X"2"),16);
                    eclat_print_string(of_string("bloc "));
                    
                    eclat_print_int(eclat_resize(\$713_arg\(48 to 78),16));
                    
                    eclat_print_string(of_string(" of size "));
                    
                    eclat_print_int(eclat_add(\$4988\ & X"000" & X"1"));
                    
                    eclat_print_string(of_string(" from "));
                    
                    eclat_print_int(eclat_resize(\$713_arg\(48 to 78),16));
                    
                    eclat_print_string(of_string(" to "));
                    
                    eclat_print_int(\$v2703\(32 to 47));
                    
                    eclat_print_newline(eclat_unit);
                    
                    \$ram_ptr_write\ <= to_integer(unsigned(\$v2703\(32 to 47)));
                    \$ram_write_request\ <= '1';
                    \$ram_write\ <= \$4986_hd\;
                    state_var4545 <= pause_setI4191;
                  when pause_getII4196 =>
                    \$4984_w\ := \$ram_value\;
                    \$v4194\ := eclat_if(eclat_not(""&\$4984_w\(31)) & 
                                eclat_if(eclat_le(\$v2636\(112 to 127) & eclat_resize(\$4984_w\(0 to 30),16)) & eclat_lt(eclat_resize(\$4984_w\(0 to 30),16) & eclat_add(\$v2636\(112 to 127) & \$713_arg\(104 to 119))) & eclat_false) & eclat_false);
                    if \$v4194\(0) = '1' then
                      \$v2704\ := \$4984_w\ & \$v2703\(32 to 47);
                      \$710_copy_root_in_ram_id\ := X"00" & X"6";
                      \$710_copy_root_in_ram_arg\ := \$713_arg\(152 to 167) & \$713_arg\(0 to 15) & \$v2704\(32 to 47) & \$v2636\(96 to 111) & \$v2636\(112 to 127) & \$713_arg\(104 to 119);
                      state_var4545 <= \$710_copy_root_in_ram\;
                    else
                      \$ram_ptr\ <= to_integer(unsigned(eclat_resize(\$713_arg\(48 to 78),16)));
                      state_var4545 <= pause_getI4192;
                    end if;
                  when pause_getII4202 =>
                    \$5013_hd\ := \$ram_value\;
                    \$5015\ := eclat_resize(eclat_lsr(\$5013_hd\(0 to 30) & "000"& X"000000" & X"2"),16);
                    eclat_print_string(of_string("bloc "));
                    
                    eclat_print_int(eclat_resize(\$713_arg\(16 to 46),16));
                    
                    eclat_print_string(of_string(" of size "));
                    
                    eclat_print_int(eclat_add(\$5015\ & X"000" & X"1"));
                    
                    eclat_print_string(of_string(" from "));
                    
                    eclat_print_int(eclat_resize(\$713_arg\(16 to 46),16));
                    
                    eclat_print_string(of_string(" to "));
                    
                    eclat_print_int(\$v2636\(112 to 127));
                    
                    eclat_print_newline(eclat_unit);
                    
                    \$ram_ptr_write\ <= to_integer(unsigned(\$v2636\(112 to 127)));
                    \$ram_write_request\ <= '1';
                    \$ram_write\ <= \$5013_hd\;
                    state_var4545 <= pause_setI4200;
                  when pause_getII4205 =>
                    \$5011_w\ := \$ram_value\;
                    \$v4203\ := eclat_if(eclat_not(""&\$5011_w\(31)) & 
                                eclat_if(eclat_le(\$v2636\(112 to 127) & eclat_resize(\$5011_w\(0 to 30),16)) & eclat_lt(eclat_resize(\$5011_w\(0 to 30),16) & eclat_add(\$v2636\(112 to 127) & \$713_arg\(104 to 119))) & eclat_false) & eclat_false);
                    if \$v4203\(0) = '1' then
                      \$v2703\ := \$5011_w\ & \$v2636\(112 to 127);
                      \$v4197\ := eclat_not(eclat_if(eclat_not(""&\$713_arg\(79)) & 
                                            eclat_if(eclat_le(\$v2636\(96 to 111) & eclat_resize(\$713_arg\(48 to 78),16)) & eclat_lt(eclat_resize(\$713_arg\(48 to 78),16) & eclat_add(\$v2636\(96 to 111) & \$713_arg\(104 to 119))) & eclat_false) & eclat_false));
                      if \$v4197\(0) = '1' then
                        \$v2704\ := \$713_arg\(48 to 79) & \$v2703\(32 to 47);
                        \$710_copy_root_in_ram_id\ := X"00" & X"6";
                        \$710_copy_root_in_ram_arg\ := \$713_arg\(152 to 167) & \$713_arg\(0 to 15) & \$v2704\(32 to 47) & \$v2636\(96 to 111) & \$v2636\(112 to 127) & \$713_arg\(104 to 119);
                        state_var4545 <= \$710_copy_root_in_ram\;
                      else
                        \$ram_ptr\ <= to_integer(unsigned(eclat_add(eclat_resize(\$713_arg\(48 to 78),16) & X"000" & X"1")));
                        state_var4545 <= pause_getI4195;
                      end if;
                    else
                      \$ram_ptr\ <= to_integer(unsigned(eclat_resize(\$713_arg\(16 to 46),16)));
                      state_var4545 <= pause_getI4201;
                    end if;
                  when pause_setI4186 =>
                    \$ram_write_request\ <= '0';
                    \$v2689\ := eclat_unit;
                    \$713_result\ := \$v2685\(0 to 31) & \$v2685\(32 to 63) & eclat_resize(\$v2685\(64 to 79),31) & eclat_false;
                    case \$713_id\ is
                    when X"00" & X"a" =>
                      \$v2764\ := \$713_result\;
                      \$v4246\ := ""&\$719_make_block_n_arg\(32);
                      if \$v4246\(0) = '1' then
                        \$ram_ptr_write\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$v2764\(64 to 94),16) & X"000" & X"0") & X"000" & X"1")));
                        \$ram_write_request\ <= '1';
                        \$ram_write\ <= \$v2764\(0 to 31);
                        state_var4545 <= pause_setI4245;
                      else
                        \$v2765\ := eclat_unit;
                        \$v4244\ := ""&\$719_make_block_n_arg\(33);
                        if \$v4244\(0) = '1' then
                          \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$719_make_block_n_arg\(16 to 31) & X"000" & X"1")));
                          state_var4545 <= pause_getI4242;
                        else
                          \$1177_sp\ := \$719_make_block_n_arg\(16 to 31);
                          \$v4240\ := ""&\$719_make_block_n_arg\(34);
                          if \$v4240\(0) = '1' then
                            \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$1177_sp\ & X"000" & X"1")));
                            state_var4545 <= pause_getI4238;
                          else
                            \$1178_sp\ := \$1177_sp\;
                            \$719_make_block_n_result\ := \$719_make_block_n_arg\(0 to 15) & \$v2764\(64 to 95) & \$1178_sp\ & \$v2764\(32 to 63) & \$719_make_block_n_arg\(146 to 153) & \$719_make_block_n_arg\(156 to 171) & \$719_make_block_n_arg\(154 to 155);
                            \$v8\ := \$719_make_block_n_result\;
                            \$v1526\ := \$v8\ & eclat_true;
                            result4150 := eclat_unit;
                            rdy4151 := eclat_true;
                            state_var4545 <= compute4152;
                          end if;
                        end if;
                      end if;
                    when X"0" & X"2b" =>
                      \$v2828\ := \$713_result\;
                      \$ram_ptr_write\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$v2828\(64 to 94),16) & X"000" & X"0") & X"000" & X"1")));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= eclat_resize(eclat_sub(eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & X"000" & X"3"),31) & eclat_true;
                      state_var4545 <= pause_setI4434;
                    when X"0" & X"37" =>
                      \$v2813\ := \$713_result\;
                      \$ram_ptr_write\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$v2813\(64 to 94),16) & X"000" & X"0") & X"000" & X"1")));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= eclat_resize(eclat_add(eclat_add(\$v1522\(0 to 15) & X"000" & X"2") & eclat_resize(\$748_argument2\,16)),31) & eclat_true;
                      state_var4545 <= pause_setI4504;
                    when X"0" & X"39" =>
                      \$v2817\ := \$713_result\;
                      \$ram_ptr_write\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$v2817\(64 to 94),16) & X"000" & X"0") & X"000" & X"1")));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= \$v2817\(0 to 31);
                      state_var4545 <= pause_setI4516;
                    when X"0" & X"43" =>
                      \$v2806\ := \$713_result\;
                      \$ram_ptr_write\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$v2806\(64 to 94),16) & X"000" & X"0") & X"000" & X"1")));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= eclat_resize(eclat_add(eclat_add(\$v1522\(0 to 15) & X"000" & X"3") & eclat_resize(\$749_argument3\,16)),31) & eclat_true;
                      state_var4545 <= pause_setI4518;
                    when others =>
                      
                    end case;
                  when pause_setI4189 =>
                    \$ram_write_request\ <= '0';
                    \$v2723\ := eclat_unit;
                    \$v2704\ := eclat_resize(\$v2703\(32 to 47),31) & eclat_false & eclat_add(\$v2703\(32 to 47) & eclat_add(\$4988\ & X"000" & X"1"));
                    \$710_copy_root_in_ram_id\ := X"00" & X"6";
                    \$710_copy_root_in_ram_arg\ := \$713_arg\(152 to 167) & \$713_arg\(0 to 15) & \$v2704\(32 to 47) & \$v2636\(96 to 111) & \$v2636\(112 to 127) & \$713_arg\(104 to 119);
                    state_var4545 <= \$710_copy_root_in_ram\;
                  when pause_setI4190 =>
                    \$ram_write_request\ <= '0';
                    \$v2722\ := eclat_unit;
                    \$ram_ptr_write\ <= to_integer(unsigned(eclat_add(eclat_resize(\$713_arg\(48 to 78),16) & X"000" & X"1")));
                    \$ram_write_request\ <= '1';
                    \$ram_write\ <= eclat_resize(\$v2703\(32 to 47),31) & eclat_false;
                    state_var4545 <= pause_setI4189;
                  when pause_setI4191 =>
                    \$ram_write_request\ <= '0';
                    \$v2720\ := eclat_unit;
                    \$709_loop_id\ := X"00" & X"7";
                    \$709_loop_arg\ := X"000" & X"1" & eclat_resize(\$713_arg\(48 to 78),16) & eclat_add(\$4988\ & X"000" & X"1") & \$v2703\(32 to 47);
                    state_var4545 <= \$709_loop\;
                  when pause_setI4198 =>
                    \$ram_write_request\ <= '0';
                    \$v2736\ := eclat_unit;
                    \$v2703\ := eclat_resize(\$v2636\(112 to 127),31) & eclat_false & eclat_add(\$v2636\(112 to 127) & eclat_add(\$5015\ & X"000" & X"1"));
                    \$v4197\ := eclat_not(eclat_if(eclat_not(""&\$713_arg\(79)) & 
                                          eclat_if(eclat_le(\$v2636\(96 to 111) & eclat_resize(\$713_arg\(48 to 78),16)) & eclat_lt(eclat_resize(\$713_arg\(48 to 78),16) & eclat_add(\$v2636\(96 to 111) & \$713_arg\(104 to 119))) & eclat_false) & eclat_false));
                    if \$v4197\(0) = '1' then
                      \$v2704\ := \$713_arg\(48 to 79) & \$v2703\(32 to 47);
                      \$710_copy_root_in_ram_id\ := X"00" & X"6";
                      \$710_copy_root_in_ram_arg\ := \$713_arg\(152 to 167) & \$713_arg\(0 to 15) & \$v2704\(32 to 47) & \$v2636\(96 to 111) & \$v2636\(112 to 127) & \$713_arg\(104 to 119);
                      state_var4545 <= \$710_copy_root_in_ram\;
                    else
                      \$ram_ptr\ <= to_integer(unsigned(eclat_add(eclat_resize(\$713_arg\(48 to 78),16) & X"000" & X"1")));
                      state_var4545 <= pause_getI4195;
                    end if;
                  when pause_setI4199 =>
                    \$ram_write_request\ <= '0';
                    \$v2735\ := eclat_unit;
                    \$ram_ptr_write\ <= to_integer(unsigned(eclat_add(eclat_resize(\$713_arg\(16 to 46),16) & X"000" & X"1")));
                    \$ram_write_request\ <= '1';
                    \$ram_write\ <= eclat_resize(\$v2636\(112 to 127),31) & eclat_false;
                    state_var4545 <= pause_setI4198;
                  when pause_setI4200 =>
                    \$ram_write_request\ <= '0';
                    \$v2733\ := eclat_unit;
                    \$709_loop_id\ := X"00" & X"8";
                    \$709_loop_arg\ := X"000" & X"1" & eclat_resize(\$713_arg\(16 to 46),16) & eclat_add(\$5015\ & X"000" & X"1") & \$v2636\(112 to 127);
                    state_var4545 <= \$709_loop\;
                  when pause_getI4209 =>
                    state_var4545 <= pause_getII4210;
                  when pause_getI4221 =>
                    state_var4545 <= pause_getII4222;
                  when pause_getI4224 =>
                    state_var4545 <= pause_getII4225;
                  when pause_getI4227 =>
                    state_var4545 <= pause_getII4228;
                  when pause_getII4210 =>
                    \$1277\ := \$ram_value\;
                    \$714_apply_result\ := eclat_resize(\$1277\(0 to 30),16) & \$714_apply_arg\(44 to 75) & \$1276_sp\ & \$714_apply_arg\(44 to 75) & \$714_apply_arg\(3 to 10) & \$714_apply_arg\(150 to 165) & \$714_apply_arg\(132 to 133);
                    \$v8\ := \$714_apply_result\;
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getII4222 =>
                    \$1783_v\ := \$ram_value\;
                    \$v2747\ := \$1783_v\ & eclat_sub(\$v2746\(32 to 47) & X"000" & X"1");
                    \$v4220\ := ""&\$714_apply_arg\(11);
                    if \$v4220\(0) = '1' then
                      \$1273_sp\ := eclat_add(eclat_sub(\$v2747\(32 to 47) & \$714_apply_arg\(12 to 27)) & \$714_apply_arg\(28 to 43));
                      \$v4216\ := ""&\$714_apply_arg\(2);
                      if \$v4216\(0) = '1' then
                        \$ram_ptr_write\ <= to_integer(unsigned(\$1273_sp\));
                        \$ram_write_request\ <= '1';
                        \$ram_write\ <= \$v2747\(0 to 31);
                        state_var4545 <= pause_setI4215;
                      else
                        \$1274_sp\ := \$1273_sp\;
                        \$v4214\ := ""&\$714_apply_arg\(1);
                        if \$v4214\(0) = '1' then
                          \$ram_ptr_write\ <= to_integer(unsigned(\$1274_sp\));
                          \$ram_write_request\ <= '1';
                          \$ram_write\ <= \$v2746\(0 to 31);
                          state_var4545 <= pause_setI4213;
                        else
                          \$1275_sp\ := \$1274_sp\;
                          \$v4212\ := ""&\$714_apply_arg\(0);
                          if \$v4212\(0) = '1' then
                            \$ram_ptr_write\ <= to_integer(unsigned(\$1275_sp\));
                            \$ram_write_request\ <= '1';
                            \$ram_write\ <= \$v2745\(0 to 31);
                            state_var4545 <= pause_setI4211;
                          else
                            \$1276_sp\ := \$1275_sp\;
                            \$ram_ptr\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$714_apply_arg\(44 to 74),16) & X"000" & X"0") & X"000" & X"1")));
                            state_var4545 <= pause_getI4209;
                          end if;
                        end if;
                      end if;
                    else
                      \$ram_ptr_write\ <= to_integer(unsigned(\$v2747\(32 to 47)));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= eclat_resize(\$714_apply_arg\(124 to 131),31) & eclat_true;
                      state_var4545 <= pause_setI4219;
                    end if;
                  when pause_getII4225 =>
                    \$5040_v\ := \$ram_value\;
                    \$v2746\ := \$5040_v\ & eclat_sub(\$v2745\(32 to 47) & X"000" & X"1");
                    \$v4223\ := ""&\$714_apply_arg\(2);
                    if \$v4223\(0) = '1' then
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$v2746\(32 to 47) & X"000" & X"1")));
                      state_var4545 <= pause_getI4221;
                    else
                      \$v2747\ := "000"& X"000000" & X"1" & eclat_true & \$v2746\(32 to 47);
                      \$v4220\ := ""&\$714_apply_arg\(11);
                      if \$v4220\(0) = '1' then
                        \$1273_sp\ := eclat_add(eclat_sub(\$v2747\(32 to 47) & \$714_apply_arg\(12 to 27)) & \$714_apply_arg\(28 to 43));
                        \$v4216\ := ""&\$714_apply_arg\(2);
                        if \$v4216\(0) = '1' then
                          \$ram_ptr_write\ <= to_integer(unsigned(\$1273_sp\));
                          \$ram_write_request\ <= '1';
                          \$ram_write\ <= \$v2747\(0 to 31);
                          state_var4545 <= pause_setI4215;
                        else
                          \$1274_sp\ := \$1273_sp\;
                          \$v4214\ := ""&\$714_apply_arg\(1);
                          if \$v4214\(0) = '1' then
                            \$ram_ptr_write\ <= to_integer(unsigned(\$1274_sp\));
                            \$ram_write_request\ <= '1';
                            \$ram_write\ <= \$v2746\(0 to 31);
                            state_var4545 <= pause_setI4213;
                          else
                            \$1275_sp\ := \$1274_sp\;
                            \$v4212\ := ""&\$714_apply_arg\(0);
                            if \$v4212\(0) = '1' then
                              \$ram_ptr_write\ <= to_integer(unsigned(\$1275_sp\));
                              \$ram_write_request\ <= '1';
                              \$ram_write\ <= \$v2745\(0 to 31);
                              state_var4545 <= pause_setI4211;
                            else
                              \$1276_sp\ := \$1275_sp\;
                              \$ram_ptr\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$714_apply_arg\(44 to 74),16) & X"000" & X"0") & X"000" & X"1")));
                              state_var4545 <= pause_getI4209;
                            end if;
                          end if;
                        end if;
                      else
                        \$ram_ptr_write\ <= to_integer(unsigned(\$v2747\(32 to 47)));
                        \$ram_write_request\ <= '1';
                        \$ram_write\ <= eclat_resize(\$714_apply_arg\(124 to 131),31) & eclat_true;
                        state_var4545 <= pause_setI4219;
                      end if;
                    end if;
                  when pause_getII4228 =>
                    \$5042_v\ := \$ram_value\;
                    \$v2745\ := \$5042_v\ & eclat_sub(\$714_apply_arg\(76 to 91) & X"000" & X"1");
                    \$v4226\ := ""&\$714_apply_arg\(1);
                    if \$v4226\(0) = '1' then
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$v2745\(32 to 47) & X"000" & X"1")));
                      state_var4545 <= pause_getI4224;
                    else
                      \$v2746\ := "000"& X"000000" & X"1" & eclat_true & \$v2745\(32 to 47);
                      \$v4223\ := ""&\$714_apply_arg\(2);
                      if \$v4223\(0) = '1' then
                        \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$v2746\(32 to 47) & X"000" & X"1")));
                        state_var4545 <= pause_getI4221;
                      else
                        \$v2747\ := "000"& X"000000" & X"1" & eclat_true & \$v2746\(32 to 47);
                        \$v4220\ := ""&\$714_apply_arg\(11);
                        if \$v4220\(0) = '1' then
                          \$1273_sp\ := eclat_add(eclat_sub(\$v2747\(32 to 47) & \$714_apply_arg\(12 to 27)) & \$714_apply_arg\(28 to 43));
                          \$v4216\ := ""&\$714_apply_arg\(2);
                          if \$v4216\(0) = '1' then
                            \$ram_ptr_write\ <= to_integer(unsigned(\$1273_sp\));
                            \$ram_write_request\ <= '1';
                            \$ram_write\ <= \$v2747\(0 to 31);
                            state_var4545 <= pause_setI4215;
                          else
                            \$1274_sp\ := \$1273_sp\;
                            \$v4214\ := ""&\$714_apply_arg\(1);
                            if \$v4214\(0) = '1' then
                              \$ram_ptr_write\ <= to_integer(unsigned(\$1274_sp\));
                              \$ram_write_request\ <= '1';
                              \$ram_write\ <= \$v2746\(0 to 31);
                              state_var4545 <= pause_setI4213;
                            else
                              \$1275_sp\ := \$1274_sp\;
                              \$v4212\ := ""&\$714_apply_arg\(0);
                              if \$v4212\(0) = '1' then
                                \$ram_ptr_write\ <= to_integer(unsigned(\$1275_sp\));
                                \$ram_write_request\ <= '1';
                                \$ram_write\ <= \$v2745\(0 to 31);
                                state_var4545 <= pause_setI4211;
                              else
                                \$1276_sp\ := \$1275_sp\;
                                \$ram_ptr\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$714_apply_arg\(44 to 74),16) & X"000" & X"0") & X"000" & X"1")));
                                state_var4545 <= pause_getI4209;
                              end if;
                            end if;
                          end if;
                        else
                          \$ram_ptr_write\ <= to_integer(unsigned(\$v2747\(32 to 47)));
                          \$ram_write_request\ <= '1';
                          \$ram_write\ <= eclat_resize(\$714_apply_arg\(124 to 131),31) & eclat_true;
                          state_var4545 <= pause_setI4219;
                        end if;
                      end if;
                    end if;
                  when pause_setI4211 =>
                    \$ram_write_request\ <= '0';
                    \$v2748\ := eclat_unit;
                    \$1276_sp\ := eclat_add(\$1275_sp\ & X"000" & X"1");
                    \$ram_ptr\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$714_apply_arg\(44 to 74),16) & X"000" & X"0") & X"000" & X"1")));
                    state_var4545 <= pause_getI4209;
                  when pause_setI4213 =>
                    \$ram_write_request\ <= '0';
                    \$v2749\ := eclat_unit;
                    \$1275_sp\ := eclat_add(\$1274_sp\ & X"000" & X"1");
                    \$v4212\ := ""&\$714_apply_arg\(0);
                    if \$v4212\(0) = '1' then
                      \$ram_ptr_write\ <= to_integer(unsigned(\$1275_sp\));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= \$v2745\(0 to 31);
                      state_var4545 <= pause_setI4211;
                    else
                      \$1276_sp\ := \$1275_sp\;
                      \$ram_ptr\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$714_apply_arg\(44 to 74),16) & X"000" & X"0") & X"000" & X"1")));
                      state_var4545 <= pause_getI4209;
                    end if;
                  when pause_setI4215 =>
                    \$ram_write_request\ <= '0';
                    \$v2750\ := eclat_unit;
                    \$1274_sp\ := eclat_add(\$1273_sp\ & X"000" & X"1");
                    \$v4214\ := ""&\$714_apply_arg\(1);
                    if \$v4214\(0) = '1' then
                      \$ram_ptr_write\ <= to_integer(unsigned(\$1274_sp\));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= \$v2746\(0 to 31);
                      state_var4545 <= pause_setI4213;
                    else
                      \$1275_sp\ := \$1274_sp\;
                      \$v4212\ := ""&\$714_apply_arg\(0);
                      if \$v4212\(0) = '1' then
                        \$ram_ptr_write\ <= to_integer(unsigned(\$1275_sp\));
                        \$ram_write_request\ <= '1';
                        \$ram_write\ <= \$v2745\(0 to 31);
                        state_var4545 <= pause_setI4211;
                      else
                        \$1276_sp\ := \$1275_sp\;
                        \$ram_ptr\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$714_apply_arg\(44 to 74),16) & X"000" & X"0") & X"000" & X"1")));
                        state_var4545 <= pause_getI4209;
                      end if;
                    end if;
                  when pause_setI4217 =>
                    \$ram_write_request\ <= '0';
                    \$v2751\ := eclat_unit;
                    \$1286_sp\ := eclat_add(\$1283_sp\ & X"000" & X"1");
                    \$1273_sp\ := \$1286_sp\;
                    \$v4216\ := ""&\$714_apply_arg\(2);
                    if \$v4216\(0) = '1' then
                      \$ram_ptr_write\ <= to_integer(unsigned(\$1273_sp\));
                      \$ram_write_request\ <= '1';
                      \$ram_write\ <= \$v2747\(0 to 31);
                      state_var4545 <= pause_setI4215;
                    else
                      \$1274_sp\ := \$1273_sp\;
                      \$v4214\ := ""&\$714_apply_arg\(1);
                      if \$v4214\(0) = '1' then
                        \$ram_ptr_write\ <= to_integer(unsigned(\$1274_sp\));
                        \$ram_write_request\ <= '1';
                        \$ram_write\ <= \$v2746\(0 to 31);
                        state_var4545 <= pause_setI4213;
                      else
                        \$1275_sp\ := \$1274_sp\;
                        \$v4212\ := ""&\$714_apply_arg\(0);
                        if \$v4212\(0) = '1' then
                          \$ram_ptr_write\ <= to_integer(unsigned(\$1275_sp\));
                          \$ram_write_request\ <= '1';
                          \$ram_write\ <= \$v2745\(0 to 31);
                          state_var4545 <= pause_setI4211;
                        else
                          \$1276_sp\ := \$1275_sp\;
                          \$ram_ptr\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$714_apply_arg\(44 to 74),16) & X"000" & X"0") & X"000" & X"1")));
                          state_var4545 <= pause_getI4209;
                        end if;
                      end if;
                    end if;
                  when pause_setI4218 =>
                    \$ram_write_request\ <= '0';
                    \$v2752\ := eclat_unit;
                    \$1283_sp\ := eclat_add(\$1282_sp\ & X"000" & X"1");
                    \$ram_ptr_write\ <= to_integer(unsigned(\$1283_sp\));
                    \$ram_write_request\ <= '1';
                    \$ram_write\ <= eclat_resize(\$714_apply_arg\(134 to 149),31) & eclat_true;
                    state_var4545 <= pause_setI4217;
                  when pause_setI4219 =>
                    \$ram_write_request\ <= '0';
                    \$v2753\ := eclat_unit;
                    \$1282_sp\ := eclat_add(\$v2747\(32 to 47) & X"000" & X"1");
                    \$ram_ptr_write\ <= to_integer(unsigned(\$1282_sp\));
                    \$ram_write_request\ <= '1';
                    \$ram_write\ <= \$714_apply_arg\(92 to 123);
                    state_var4545 <= pause_setI4218;
                  when pause_getI4232 =>
                    state_var4545 <= pause_getII4233;
                  when pause_getII4233 =>
                    \$5045_v\ := \$ram_value\;
                    \$v2759\ := \$5045_v\ & eclat_sub(\$716_binop_int_arg\(65 to 80) & X"000" & X"1");
                    \$v4231\ := \$716_binop_int_arg\(0 to 31);
                    case \$v4231\ is
                    when X"0000000" & X"0" =>
                      \$1216_res\ := eclat_add(\$716_binop_int_arg\(33 to 63) & \$v2759\(0 to 30));
                      \$716_binop_int_result\ := \$716_binop_int_arg\(139 to 154) & \$1216_res\ & eclat_true & \$v2759\(32 to 47) & \$716_binop_int_arg\(81 to 136) & \$716_binop_int_arg\(137 to 138);
                      \$v8\ := \$716_binop_int_result\;
                      \$v1526\ := \$v8\ & eclat_true;
                      result4150 := eclat_unit;
                      rdy4151 := eclat_true;
                      state_var4545 <= compute4152;
                    when X"0000000" & X"1" =>
                      \$1216_res\ := eclat_sub(\$716_binop_int_arg\(33 to 63) & \$v2759\(0 to 30));
                      \$716_binop_int_result\ := \$716_binop_int_arg\(139 to 154) & \$1216_res\ & eclat_true & \$v2759\(32 to 47) & \$716_binop_int_arg\(81 to 136) & \$716_binop_int_arg\(137 to 138);
                      \$v8\ := \$716_binop_int_result\;
                      \$v1526\ := \$v8\ & eclat_true;
                      result4150 := eclat_unit;
                      rdy4151 := eclat_true;
                      state_var4545 <= compute4152;
                    when others =>
                      \$1216_res\ := "000"& X"000000" & X"0";
                      \$716_binop_int_result\ := \$716_binop_int_arg\(139 to 154) & \$1216_res\ & eclat_true & \$v2759\(32 to 47) & \$716_binop_int_arg\(81 to 136) & \$716_binop_int_arg\(137 to 138);
                      \$v8\ := \$716_binop_int_result\;
                      \$v1526\ := \$v8\ & eclat_true;
                      result4150 := eclat_unit;
                      rdy4151 := eclat_true;
                      state_var4545 <= compute4152;
                    end case;
                  when pause_getI4235 =>
                    state_var4545 <= pause_getII4236;
                  when pause_getII4236 =>
                    \$5047_v\ := \$ram_value\;
                    \$v2762\ := \$5047_v\ & eclat_sub(\$718_binop_compare_arg\(64 to 79) & X"000" & X"1");
                    \$717_compare_id\ := X"00" & X"9";
                    \$717_compare_arg\ := \$718_binop_compare_arg\(0 to 31) & \$718_binop_compare_arg\(32 to 62) & \$v2762\(0 to 30);
                    state_var4545 <= \$717_compare\;
                  when pause_getI4238 =>
                    state_var4545 <= pause_getII4239;
                  when pause_getI4242 =>
                    state_var4545 <= pause_getII4243;
                  when pause_getII4239 =>
                    \$5049_v\ := \$ram_value\;
                    \$v2766\ := \$5049_v\ & eclat_sub(\$1177_sp\ & X"000" & X"1");
                    \$ram_ptr_write\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$v2764\(64 to 94),16) & X"000" & X"2") & X"000" & X"1")));
                    \$ram_write_request\ <= '1';
                    \$ram_write\ <= \$v2766\(0 to 31);
                    state_var4545 <= pause_setI4237;
                  when pause_getII4243 =>
                    \$5054_v\ := \$ram_value\;
                    \$v2768\ := \$5054_v\ & eclat_sub(\$719_make_block_n_arg\(16 to 31) & X"000" & X"1");
                    \$ram_ptr_write\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$v2764\(64 to 94),16) & X"000" & X"1") & X"000" & X"1")));
                    \$ram_write_request\ <= '1';
                    \$ram_write\ <= \$v2768\(0 to 31);
                    state_var4545 <= pause_setI4241;
                  when pause_setI4237 =>
                    \$ram_write_request\ <= '0';
                    \$v2767\ := eclat_unit;
                    \$1178_sp\ := \$v2766\(32 to 47);
                    \$719_make_block_n_result\ := \$719_make_block_n_arg\(0 to 15) & \$v2764\(64 to 95) & \$1178_sp\ & \$v2764\(32 to 63) & \$719_make_block_n_arg\(146 to 153) & \$719_make_block_n_arg\(156 to 171) & \$719_make_block_n_arg\(154 to 155);
                    \$v8\ := \$719_make_block_n_result\;
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_setI4241 =>
                    \$ram_write_request\ <= '0';
                    \$v2769\ := eclat_unit;
                    \$1177_sp\ := \$v2768\(32 to 47);
                    \$v4240\ := ""&\$719_make_block_n_arg\(34);
                    if \$v4240\(0) = '1' then
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$1177_sp\ & X"000" & X"1")));
                      state_var4545 <= pause_getI4238;
                    else
                      \$1178_sp\ := \$1177_sp\;
                      \$719_make_block_n_result\ := \$719_make_block_n_arg\(0 to 15) & \$v2764\(64 to 95) & \$1178_sp\ & \$v2764\(32 to 63) & \$719_make_block_n_arg\(146 to 153) & \$719_make_block_n_arg\(156 to 171) & \$719_make_block_n_arg\(154 to 155);
                      \$v8\ := \$719_make_block_n_result\;
                      \$v1526\ := \$v8\ & eclat_true;
                      result4150 := eclat_unit;
                      rdy4151 := eclat_true;
                      state_var4545 <= compute4152;
                    end if;
                  when pause_setI4245 =>
                    \$ram_write_request\ <= '0';
                    \$v2765\ := eclat_unit;
                    \$v4244\ := ""&\$719_make_block_n_arg\(33);
                    if \$v4244\(0) = '1' then
                      \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$719_make_block_n_arg\(16 to 31) & X"000" & X"1")));
                      state_var4545 <= pause_getI4242;
                    else
                      \$1177_sp\ := \$719_make_block_n_arg\(16 to 31);
                      \$v4240\ := ""&\$719_make_block_n_arg\(34);
                      if \$v4240\(0) = '1' then
                        \$ram_ptr\ <= to_integer(unsigned(eclat_sub(\$1177_sp\ & X"000" & X"1")));
                        state_var4545 <= pause_getI4238;
                      else
                        \$1178_sp\ := \$1177_sp\;
                        \$719_make_block_n_result\ := \$719_make_block_n_arg\(0 to 15) & \$v2764\(64 to 95) & \$1178_sp\ & \$v2764\(32 to 63) & \$719_make_block_n_arg\(146 to 153) & \$719_make_block_n_arg\(156 to 171) & \$719_make_block_n_arg\(154 to 155);
                        \$v8\ := \$719_make_block_n_result\;
                        \$v1526\ := \$v8\ & eclat_true;
                        result4150 := eclat_unit;
                        rdy4151 := eclat_true;
                        state_var4545 <= compute4152;
                      end if;
                    end if;
                  when pause_getI4247 =>
                    state_var4545 <= pause_getII4248;
                  when pause_getII4248 =>
                    \$1150_arg\ := \$code_value\;
                    \$720_branch_if_result\ := eclat_add(\$720_branch_if_arg\(107 to 122) & eclat_resize(\$1150_arg\,16)) & \$720_branch_if_arg\(1 to 32) & \$720_branch_if_arg\(33 to 48) & \$720_branch_if_arg\(49 to 104) & \$720_branch_if_arg\(105 to 106);
                    \$v8\ := \$720_branch_if_result\;
                    \$v1526\ := \$v8\ & eclat_true;
                    result4150 := eclat_unit;
                    rdy4151 := eclat_true;
                    state_var4545 <= compute4152;
                  when pause_getI4251 =>
                    state_var4545 <= pause_getII4252;
                  when pause_getII4252 =>
                    \$1136\ := \$ram_value\;
                    \$ram_ptr_write\ <= to_integer(unsigned(\$721_loop_push_arg\(0 to 15)));
                    \$ram_write_request\ <= '1';
                    \$ram_write\ <= \$1136\;
                    state_var4545 <= pause_setI4250;
                  when pause_setI4250 =>
                    \$ram_write_request\ <= '0';
                    \$v2772\ := eclat_unit;
                    \$1137_sp\ := eclat_add(\$721_loop_push_arg\(0 to 15) & X"000" & X"1");
                    \$721_loop_push_arg\ := \$1137_sp\ & eclat_add(\$721_loop_push_arg\(16 to 23) & X"0" & X"1") & \$721_loop_push_arg\(24 to 55) & \$721_loop_push_arg\(56 to 63);
                    state_var4545 <= \$721_loop_push\;
                  when pause_getI4255 =>
                    state_var4545 <= pause_getII4256;
                  when pause_getII4256 =>
                    \$5066_v\ := \$ram_value\;
                    \$v2775\ := \$5066_v\ & eclat_sub(\$723_w_arg\(8 to 23) & X"000" & X"1");
                    \$ram_ptr_write\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$723_w_arg\(24 to 54),16) & eclat_resize(eclat_add(\$723_w_arg\(0 to 7) & X"0" & X"2"),16)) & X"000" & X"1")));
                    \$ram_write_request\ <= '1';
                    \$ram_write\ <= \$v2775\(0 to 31);
                    state_var4545 <= pause_setI4254;
                  when pause_setI4254 =>
                    \$ram_write_request\ <= '0';
                    \$v2776\ := eclat_unit;
                    \$723_w_arg\ := eclat_add(\$723_w_arg\(0 to 7) & X"0" & X"1") & \$v2775\(32 to 47) & \$723_w_arg\(24 to 55) & \$723_w_arg\(56 to 63);
                    state_var4545 <= \$723_w\;
                  when pause_getI4259 =>
                    state_var4545 <= pause_getII4260;
                  when pause_getII4260 =>
                    \$1102\ := \$ram_value\;
                    \$1099\ := eclat_sub(\$724_w_arg\(48 to 63) & \$724_w_arg\(0 to 15)) & \$1102\;
                    \$ram_ptr_write\ <= to_integer(unsigned(\$1099\(0 to 15)));
                    \$ram_write_request\ <= '1';
                    \$ram_write\ <= \$1099\(16 to 47);
                    state_var4545 <= pause_setI4258;
                  when pause_setI4258 =>
                    \$ram_write_request\ <= '0';
                    \$v2778\ := eclat_unit;
                    \$724_w_arg\ := eclat_add(\$724_w_arg\(0 to 15) & X"000" & X"1") & \$724_w_arg\(16 to 31) & \$724_w_arg\(32 to 47) & \$724_w_arg\(48 to 63);
                    state_var4545 <= \$724_w\;
                  when pause_getI4263 =>
                    state_var4545 <= pause_getII4264;
                  when pause_getII4264 =>
                    \$5071_v\ := \$ram_value\;
                    \$v2780\ := \$5071_v\ & eclat_sub(\$725_fill_arg\(16 to 31) & X"000" & X"1");
                    \$ram_ptr_write\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$725_fill_arg\(48 to 78),16) & \$725_fill_arg\(0 to 15)) & X"000" & X"1")));
                    \$ram_write_request\ <= '1';
                    \$ram_write\ <= \$v2780\(0 to 31);
                    state_var4545 <= pause_setI4262;
                  when pause_setI4262 =>
                    \$ram_write_request\ <= '0';
                    \$v2781\ := eclat_unit;
                    \$725_fill_arg\ := eclat_add(\$725_fill_arg\(0 to 15) & X"000" & X"1") & \$v2780\(32 to 47) & \$725_fill_arg\(32 to 47) & \$725_fill_arg\(48 to 79);
                    state_var4545 <= \$725_fill\;
                  when pause_getI4267 =>
                    state_var4545 <= pause_getII4268;
                  when pause_getII4268 =>
                    \$5076_v\ := \$ram_value\;
                    \$v2783\ := \$5076_v\ & eclat_sub(\$726_fill_arg\(16 to 31) & X"000" & X"1");
                    \$ram_ptr_write\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$726_fill_arg\(48 to 78),16) & \$726_fill_arg\(0 to 15)) & X"000" & X"1")));
                    \$ram_write_request\ <= '1';
                    \$ram_write\ <= \$v2783\(0 to 31);
                    state_var4545 <= pause_setI4266;
                  when pause_setI4266 =>
                    \$ram_write_request\ <= '0';
                    \$v2784\ := eclat_unit;
                    \$726_fill_arg\ := eclat_add(\$726_fill_arg\(0 to 15) & X"000" & X"1") & \$v2783\(32 to 47) & \$726_fill_arg\(32 to 47) & \$726_fill_arg\(48 to 79);
                    state_var4545 <= \$726_fill\;
                  when pause_getI4271 =>
                    state_var4545 <= pause_getII4272;
                  when pause_getII4272 =>
                    \$5081_v\ := \$ram_value\;
                    \$v2786\ := \$5081_v\ & eclat_sub(\$727_w0_arg\(16 to 31) & X"000" & X"1");
                    \$ram_ptr_write\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$727_w0_arg\(48 to 78),16) & eclat_sub(eclat_add(\$727_w0_arg\(0 to 15) & eclat_mult(X"000" & X"2" & \$727_w0_arg\(80 to 95))) & X"000" & X"1")) & X"000" & X"1")));
                    \$ram_write_request\ <= '1';
                    \$ram_write\ <= \$v2786\(0 to 31);
                    state_var4545 <= pause_setI4270;
                  when pause_setI4270 =>
                    \$ram_write_request\ <= '0';
                    \$v2787\ := eclat_unit;
                    \$727_w0_arg\ := eclat_add(\$727_w0_arg\(0 to 15) & X"000" & X"1") & \$v2786\(32 to 47) & \$727_w0_arg\(32 to 47) & \$727_w0_arg\(48 to 79) & \$727_w0_arg\(80 to 95);
                    state_var4545 <= \$727_w0\;
                  when pause_getI4275 =>
                    state_var4545 <= pause_getII4276;
                  when pause_getII4276 =>
                    \$1053\ := \$code_value\;
                    \$1050\ := \$728_w1_arg\(16 to 47) & eclat_mult(X"000" & X"2" & \$728_w1_arg\(0 to 15)) & eclat_resize(eclat_add(\$728_w1_arg\(64 to 79) & eclat_resize(\$1053\,16)),31) & eclat_true;
                    \$ram_ptr_write\ <= to_integer(unsigned(eclat_add(eclat_add(eclat_resize(\$1050\(0 to 30),16) & \$1050\(32 to 47)) & X"000" & X"1")));
                    \$ram_write_request\ <= '1';
                    \$ram_write\ <= \$1050\(48 to 79);
                    state_var4545 <= pause_setI4274;
                  when pause_setI4274 =>
                    \$ram_write_request\ <= '0';
                    \$v2790\ := eclat_unit;
                    \$728_w1_arg\ := eclat_add(\$728_w1_arg\(0 to 15) & X"000" & X"1") & \$728_w1_arg\(16 to 47) & \$728_w1_arg\(48 to 63) & \$728_w1_arg\(64 to 79) & \$728_w1_arg\(80 to 95) & \$728_w1_arg\(96 to 103);
                    state_var4545 <= \$728_w1\;
                  when pause_setI4277 =>
                    \$ram_write_request\ <= '0';
                    \$v2789\ := eclat_unit;
                    \$code_ptr\ <= to_integer(unsigned(eclat_add(\$728_w1_arg\(80 to 95) & \$728_w1_arg\(0 to 15))));
                    state_var4545 <= pause_getI4275;
                  when pause_setI4279 =>
                    \$ram_write_request\ <= '0';
                    \$v2792\ := eclat_unit;
                    \$1036_sp\ := eclat_add(\$729_w3_arg\(16 to 31) & X"000" & X"1");
                    \$729_w3_arg\ := eclat_add(\$729_w3_arg\(0 to 15) & X"000" & X"1") & \$1036_sp\ & \$729_w3_arg\(32 to 63) & \$729_w3_arg\(64 to 79);
                    state_var4545 <= \$729_w3\;
                  when compute4152 =>
                    rdy4151 := eclat_false;
                    \$v1526\ := \$v1522\(0 to 121) & eclat_false;
                    \$v2793\ := eclat_unit;
                    eclat_print_string(of_string("pc:"));
                    
                    eclat_print_int(\$v1522\(0 to 15));
                    
                    eclat_print_string(of_string("|acc:"));
                    
                    eclat_print_int(\$v1522\(16 to 46));
                    
                    eclat_print_string(of_string("<"));
                    
                    \$v4536\ := ""&\$v1522\(47);
                    if \$v4536\(0) = '1' then
                      eclat_print_string(of_string("int"));
                      
                      eclat_print_string(of_string(">"));
                      
                      eclat_print_string(of_string("|sp:"));
                      
                      eclat_print_int(\$v1522\(48 to 63));
                      
                      eclat_print_string(of_string("|env:"));
                      
                      eclat_print_int(\$v1522\(64 to 94));
                      
                      eclat_print_string(of_string("<"));
                      
                      \$v4535\ := ""&\$v1522\(95);
                      if \$v4535\(0) = '1' then
                        eclat_print_string(of_string("int"));
                        
                        eclat_print_string(of_string(">"));
                        
                        eclat_print_newline(eclat_unit);
                        
                        \$code_ptr\ <= to_integer(unsigned(\$v1522\(0 to 15)));
                        state_var4545 <= pause_getI4533;
                      else
                        eclat_print_string(of_string("ptr"));
                        
                        eclat_print_string(of_string(">"));
                        
                        eclat_print_newline(eclat_unit);
                        
                        \$code_ptr\ <= to_integer(unsigned(\$v1522\(0 to 15)));
                        state_var4545 <= pause_getI4533;
                      end if;
                    else
                      eclat_print_string(of_string("ptr"));
                      
                      eclat_print_string(of_string(">"));
                      
                      eclat_print_string(of_string("|sp:"));
                      
                      eclat_print_int(\$v1522\(48 to 63));
                      
                      eclat_print_string(of_string("|env:"));
                      
                      eclat_print_int(\$v1522\(64 to 94));
                      
                      eclat_print_string(of_string("<"));
                      
                      \$v4535\ := ""&\$v1522\(95);
                      if \$v4535\(0) = '1' then
                        eclat_print_string(of_string("int"));
                        
                        eclat_print_string(of_string(">"));
                        
                        eclat_print_newline(eclat_unit);
                        
                        \$code_ptr\ <= to_integer(unsigned(\$v1522\(0 to 15)));
                        state_var4545 <= pause_getI4533;
                      else
                        eclat_print_string(of_string("ptr"));
                        
                        eclat_print_string(of_string(">"));
                        
                        eclat_print_newline(eclat_unit);
                        
                        \$code_ptr\ <= to_integer(unsigned(\$v1522\(0 to 15)));
                        state_var4545 <= pause_getI4533;
                      end if;
                    end if;
                  end case;
                  \$v1828\ := result4150;
                  \$v1827\ := \$v1526\;
                  \$v188\ := \$v1827\(0 to 121) & ""&\$v1827\(122);
                  \$v1522\ := \$v188\;
                  \$v1825\ := eclat_unit;
                  \$v1824\ := \$v1522\;
                  \$v451\ := ""&\$v1824\(120) & ""&\$v1824\(122) & ""&\$v1507\(2) & ""&\$v1824\(121);
                  \$v1507\ := \$v451\;
                  \$v1820\ := eclat_unit;
                  \$v1819\ := \$v1507\;
                  \$v1813\ := ""&\$v1819\(0) & eclat_not(""&\$v1819\(1)) & ""&\$v1819\(3);
                  \$v1904\ := ""&\$v1813\(0);
                  if \$v1904\(0) = '1' then
                    eclat_print_string(of_string("(cy="));
                    
                    eclat_print_int(cy);
                    
                    eclat_print_string(of_string(")"));
                    
                    eclat_print_newline(eclat_unit);
                    
                    \$v1903\ := eclat_not(\$v1500_init\);
                    if \$v1903\(0) = '1' then
                      \$v1500\ := X"0000000" & X"0";
                      \$v1500_init\ := eclat_true;
                    end if;
                    \$v1500\ := eclat_if(eclat_eq(\$v1500\ & eclat_add(X"00" & X"989680" & X"00" & X"989680")) & X"0000000" & X"0" & eclat_add(\$v1500\ & X"0000000" & X"1"));
                    \$v1815\ := eclat_unit;
                    \$v455\ := \$v1500\;
                    \$561_b\ := eclat_gt(\$v455\ & X"00" & X"989680");
                    result1900 := ""&\$v1813\(0) & ""&\$v1813\(1) & \$561_b\ & ""&\$v1813\(2) & eclat_false & eclat_false & eclat_false & eclat_false & eclat_false & eclat_false & X"0" & X"3" & X"0" & X"3" & X"0" & X"3" & X"0" & X"3" & X"0" & X"3" & X"0" & X"3";
                    rdy1901 := eclat_true;
                    case compute1902_id is
                    when others =>
                      
                    end case;
                  else
                    \$v1814\ := eclat_unit;
                    \$v1903\ := eclat_not(\$v1500_init\);
                    if \$v1903\(0) = '1' then
                      \$v1500\ := X"0000000" & X"0";
                      \$v1500_init\ := eclat_true;
                    end if;
                    \$v1500\ := eclat_if(eclat_eq(\$v1500\ & eclat_add(X"00" & X"989680" & X"00" & X"989680")) & X"0000000" & X"0" & eclat_add(\$v1500\ & X"0000000" & X"1"));
                    \$v1815\ := eclat_unit;
                    \$v455\ := \$v1500\;
                    \$561_b\ := eclat_gt(\$v455\ & X"00" & X"989680");
                    result1900 := ""&\$v1813\(0) & ""&\$v1813\(1) & \$561_b\ & ""&\$v1813\(2) & eclat_false & eclat_false & eclat_false & eclat_false & eclat_false & eclat_false & X"0" & X"3" & X"0" & X"3" & X"0" & X"3" & X"0" & X"3" & X"0" & X"3" & X"0" & X"3";
                    rdy1901 := eclat_true;
                    case compute1902_id is
                    when others =>
                      
                    end case;
                  end if;
                end if;
              end if;
            end if;
          end case;
          
          result <= result1900;
          rdy <= rdy1901;
          
        end if;
      end if;
    end if;
  end process;
end architecture;
