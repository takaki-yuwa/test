package servlet;

public class topping_list {
    private String name;
    private int price;
    private String category;

    public topping_list(String name, int price, String category) {
        this.name = name;
        this.price = price;
        this.category = category;
    }

    public String getName() {
        return name;
    }

    public int getPrice() {
        return price;
    }
    
    public String getCategory() {
        return category;
    }
}
