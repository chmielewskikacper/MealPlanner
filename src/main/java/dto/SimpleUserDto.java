package dto;

public class SimpleUserDto {
    private String firstName;
    private String userLastName;
    private int numberOfPlans;
    private int numberOfRecipes;

    public SimpleUserDto(String firstName, String userLastName, int numberOfPlans, int numberOfRecipes) {
        this.firstName = firstName;
        this.userLastName = userLastName;
        this.numberOfPlans = numberOfPlans;
        this.numberOfRecipes = numberOfRecipes;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof SimpleUserDto)) return false;

        SimpleUserDto that = (SimpleUserDto) o;

        if (getFirstName() != null ? !getFirstName().equals(that.getFirstName()) : that.getFirstName() != null)
            return false;
        return getUserLastName() != null ? getUserLastName().equals(that.getUserLastName()) : that.getUserLastName() == null;
    }

    @Override
    public int hashCode() {
        int result = getFirstName() != null ? getFirstName().hashCode() : 0;
        result = 31 * result + (getUserLastName() != null ? getUserLastName().hashCode() : 0);
        return result;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getUserLastName() {
        return userLastName;
    }

    public void setUserLastName(String userLastName) {
        this.userLastName = userLastName;
    }

    public int getNumberOfPlans() {
        return numberOfPlans;
    }

    public void setNumberOfPlans(int numberOfPlans) {
        this.numberOfPlans = numberOfPlans;
    }

    public int getNumberOfRecipes() {
        return numberOfRecipes;
    }

    public void setNumberOfRecipes(int numberOfRecipes) {
        this.numberOfRecipes = numberOfRecipes;
    }
}
