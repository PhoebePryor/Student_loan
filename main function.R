repayment <- function(total_loan, salary_net, salary_increase, accumulated_pmt, extra_payment){
  
  initial_salary <- salary_net
  initial_loan <- total_loan
  
  for(mth in 1: 360){
    
    if (total_loan < 0){
      
      return(
        
        paste("initial salary:", initial_salary, "    current salary:", salary_net, 
              "    extra payment chosen:", extra_payment, "    month when loan paid off:", mth,
              "    overall payment:", accumulated_pmt, "saved:", initial_loan - accumulated_pmt))
      break
    }
    
    else {
      
      monthly_payment <- ((salary_net - 21000)* 0.06/12) + extra_payment
      
      interest_added = (total_loan - monthly_payment)*0.063 /12
      
      salary_net <- salary_net * ((salary_increase/12)+1)
      
      total_loan <- total_loan - monthly_payment + interest_added
      
      accumulated_pmt <- accumulated_pmt + monthly_payment
      
    }
    
  }
  
}