
package book.business;
import java.util.*;
import java.text.*;
import java.io.Serializable;
/**
 *
 * @author amt
 */
public class Order implements Serializable
{
    private Customer customer;
    private List<LineItem> lineItems;
    private Date orderDate;
    private Long orderNumber;
    private boolean isCompleted;
    public Order()
    {
        
    }

    /**
     * @return the customer
     */
    public Customer getCustomer() {
        return customer;
    }

    /**
     * @param customer the customer to set
     */
    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    /**
     * @return the lineItems
     */
    public List<LineItem> getLineItems() {
        return lineItems;
    }

    /**
     * @param lineItems the lineItems to set
     */
    public void setLineItems(List<LineItem> lineItems) {
        this.lineItems = lineItems;
    }

    /**
     * @return the orderDate
     */
    public Date getOrderDate() {
        return orderDate;
    }

    /**
     * @param orderDate the orderDate to set
     */
    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    /**
     * @return the orderNumber
     */
    public Long getOrderNumber() {
        return orderNumber;
    }

    /**
     * @param orderNumber the orderNumber to set
     */
    public void setOrderNumber(Long orderNumber) {
        this.orderNumber = orderNumber;
    }

    /**
     * @return the isCompleted
     */
    public boolean isIsCompleted() {
        return isCompleted;
    }

    /**
     * @param isCompleted the isCompleted to set
     */
    public void setIsCompleted(boolean isCompleted) {
        this.isCompleted = isCompleted;
    }
        public double getInvoiceTotal() {
        double invoiceTotal = 0.0;
        for (LineItem item : lineItems) {
            invoiceTotal += item.getTotal();
        }
        return invoiceTotal;
    }
    public String toString()
    {
        String items = "";
        double total_price = 0;
        for(int idx = 0; idx < this.lineItems.size(); idx++)
        {
            items+=this.lineItems.get(idx).getProduct().toString();
            total_price+= this.lineItems.get(idx).getProduct().getPrice();
        }
        String output = this.customer.toString() + "\n"
                        + "List of products: " + items +"\n"
                        + "Date of purches: " + this.orderDate + "\n"
                        + "Total Amount: "    +  total_price + "$";
        return output;
    }
    
}
