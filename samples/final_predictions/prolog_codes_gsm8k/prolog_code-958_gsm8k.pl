% Define predicates to calculate total widgets produced and total revenue generated
total_widgets_produced(WidgetRate, HoursPerDay, DaysPerMonth, TotalWidgets) :-
TotalWidgets is WidgetRate * HoursPerDay * DaysPerMonth.
total_revenue_generated(TotalWidgets, SellingPrice, TotalRevenue) :-
TotalRevenue is TotalWidgets * SellingPrice.
% Calculate the difference in revenue between Widgeteer 3000 and WidgetMaster 9000
revenue_difference(Difference) :-
total_widgets_produced(60, 24, 30, TotalWidgetsWidgeteer),  % Assumed values for Widgeteer 3000
total_revenue_generated(TotalWidgetsWidgeteer, 6, RevenueWidgeteer),
total_widgets_produced(45, 24, 30, TotalWidgetsWidgetMaster),  % Assumed values for WidgetMaster 9000
total_revenue_generated(TotalWidgetsWidgetMaster, 6, RevenueWidgetMaster),
Difference is RevenueWidgeteer - RevenueWidgetMaster.
% Query to find the revenue difference
query(Difference) :-
revenue_difference(Difference).
% Uncomment the following line to run the query
% ?- query(Difference).
%query(Difference).