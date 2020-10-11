repayment <- function(total_loan, salary_net, salary_increase, accumulated_pmt, extra_payment){
  
  initial_salary <- salary_net
  initial_loan <- total_loan
  t_total_loan <- total_loan
  t_salary_net <- salary_net
  t_accumulated <- accumulated_pmt
  
  for(mth in 1: 360){
    
    if (total_loan < 0){
      
      overall_pmt <<- accumulated_pmt
      overall_mth <<- mth
      
      break
      
    } else {
      
      monthly_payment <- ((salary_net - 21000)* 0.06/12) + 0
      
      interest_added = (total_loan - monthly_payment)*0.063 /12
      
      salary_net <- salary_net * ((salary_increase/12)+1)
      
      total_loan <- total_loan - monthly_payment + interest_added
      
      accumulated_pmt <- accumulated_pmt + monthly_payment
    }
  }
  
  for(mth in 1:360){
    
    if (t_total_loan < 0){
      
       new_pmt <<- t_accumulated
       new_mth <<- mth
      
       break
       
    } else {
      
      t_monthly_payment <- ((t_salary_net - 21000)* 0.06/12) + extra_payment
      
      t_interest_added = (t_total_loan - t_monthly_payment)*0.063 /12
      
      t_salary_net <- t_salary_net * ((salary_increase/12)+1)
      
      t_total_loan <- t_total_loan - t_monthly_payment + t_interest_added
      
      t_accumulated <- t_accumulated + t_monthly_payment
      
    }
  }
  paste("Overall saved", overall_pmt - new_pmt, "paid off", overall_mth - new_mth, "months quicker")
}
  
