function pai_deri = HW6_Cournot2(q)
q1 = q(1)
q2 = q(2)
q3 = q(3)

pai1_deri = 1 - 2 * q1 - q2 - q3 - 2 * q1^(1/2);   % calculate the derivitive of pai1
pai2_deri = 1 - q1 - 2 * q2 - q3 - 2 * q1^(1/2);   % calculate the derivitive of pai2
pai3_deri = 1 - q1 - q2 - 2 * q3 - 2 * q1^(1/2);   % calculate the derivitive of pai3


pai_deri = [pai1_deri; pai2_deri; pai3_deri];     % return

end