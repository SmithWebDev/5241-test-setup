# JPL Project
Project consisting of multiple pages, 2 layouts. Features include ability to blog and ability to update tracked data. Utilizing Rspec, Capybara, and Cucumber for testing.

### **Process for creating blog entry feature test and feature**

- Visit Root Page
- Click on new blog entry
- Fill in title
- Fill in body
- Create blog entry

*Expectations*
- Blog entry has been created
- Blogs path

### **Listing blog entry feature test**
- Create branch
- Create 2 blogs to display

- List the 2 blogs

*Expectations*
- Expect both blog entry titles and bodies to be present
- Expect both blog entry titles and bodies not to be present

### **Showing blog entries feature test**
- Create branch
- Create 1 blog entry to display

- Show the blog entry title and details

*Expectations*
- Expect blog entry title and body to be present

### **Editing/ Updating blog entry feature test**
- Create branch
- Select blog entry to display

- Input Updated Blog Entry Information

*Expectations*
- Expect updated blog entry title and body to be present

### **Deleting blog entry feature test**
- Create branch
- Select an blog entry to display

- Create delete button for blog entry removal

*Expectations*
- Expect blog entry to be removed
- Expect message stating that the blog entry has been removed
