awk 'BEGIN {
		split("I_II_III_IV_V_VI_VII_VIII_IX",rom1,"_")
        split("X_XX_XXX_XL_L_LX_LXX_LXXX_XC",rom10,"_")
        split("C_CC_CCC_CD_D_DC_DCC_DCCC_CM",rom100,"_")
        split("M_MM_MMM_MMMM",rom1000,"_")

        while(( getline line<"input.txt") > 0 ) {
     		print num2roman(line, rom1, rom10, rom100, rom1000)
  		}
        exit(0)
    }

    function num2roman(number,rom1,rom10,rom100,rom1000) {
        number = int(number)
    	if (1 > number || 4999 < number)
        {
            return
        }

        Z = (number - (number % 1000)) / 1000
        number = number % 1000
        Y = (number - (number % 100)) / 100
        number = number % 100
        A = (number - (number % 10)) / 10
        B = number % 10

        return (rom1000[Z] rom100[Y] rom10[A] rom1[B])
    }'
