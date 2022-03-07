# Numerical-Analysis

## Function approximation 
With the interpolation method, the approximated function for the data is as follows: 
<p align="center"><img width=650 src="./images/result_fucntion_approximination.png" alt="Approximination Result."/></p>

## Integration
Using Simpsons, trapezoidals, and composite midpoint methods, we obtained the integral value of the mentioned function. You can see the result values in the figure below. 
<p align="center"><img width=1000 src="./images/results_different_integral.png" alt="Approximination Result."/></p>

**Note1:** As we know, the number of points in the mentioned methods has limitations (including the number of points that must be odd and more than 3) If the user enters this number of points incorrectly with the designed error "Enter the number of points incorrectly" You've encountered.
**Note2:** The integral error of the Simpsons method was not as good as other methods.

## Differential equation
The Euler method is a numerical method for solving first-order differential equations. For example, suppose we have a first-order differential equation as follows: 
  
![lagrida_latex_editor(1)](https://user-images.githubusercontent.com/98729098/157078306-5f1d09fa-2be2-46dd-8534-06943e0c8d84.png)

The first step is to rewrite the above equation as follows, where x is a function of y. 

![lagrida_latex_editor(2)](https://user-images.githubusercontent.com/98729098/157079023-278a5e07-4537-4d1c-91c6-a26b0423a4df.png)

So the equation is written like this:

![lagrida_latex_editor(3)](https://user-images.githubusercontent.com/98729098/157081052-9f35aee8-f348-4b33-9461-1ad15eeb5f28.png)

We now use the Euler method, which is a recursive relation: 

![lagrida_latex_editor(4)](https://user-images.githubusercontent.com/98729098/157082481-c6da41ce-752e-4d13-b37c-7c4ff55b7de8.png)

Where h is the step size. The difference between x_{n} and x_{n+1}: 

![lagrida_latex_editor(6)](https://user-images.githubusercontent.com/98729098/157083253-de21e03d-3822-4670-89a8-c6f9331bfcf8.png)

You can see the result values in the figure below.

<p align="center"><img width=650 src="./images/result_euler_method.png" alt="Approximination Result."/></p>
