Query11=   select *  from customer left outer join `orders` on customer.cus_id=`orders`.cus_id;

cursorObject.execute(Query11)
output = cursorObject.fetchall()


output_df = pd.DataFrame(output, columns=['CUS_ID','CUS_NAME','CUS_PHONE','CUS_CITY','CUS_GENDER','ORD_ID','ORD_AMOUNT','ORD_DATE','CUS_ID','PROD_ID'])
output_df