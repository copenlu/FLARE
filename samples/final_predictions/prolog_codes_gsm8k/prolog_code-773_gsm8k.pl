% Define the exchange rates between stickers and buttons
exchange_rate(large_sticker, large_button, 1).
exchange_rate(large_sticker, small_button, 3).
exchange_rate(small_sticker, small_button, 1).
exchange_rate(large_button, small_sticker, 3).
% Define the initial quantities of stickers Lorraine has
initial_quantity(small_sticker, 30).
initial_quantity(large_sticker, 40).
% Calculate the total number of buttons Lorraine has at the end
total_buttons(TotalButtons) :-
initial_quantity(small_sticker, SmallSticker),
initial_quantity(large_sticker, LargeSticker),
exchange_rate(large_sticker, large_button, LargeButtonRate),
exchange_rate(large_sticker, small_button, SmallButtonRate),
exchange_rate(small_sticker, small_button, SmallButtonRate),
exchange_rate(large_button, small_sticker, LargeButtonStickerRate),
% Calculate the number of large buttons obtained from trading small stickers
LargeButtonsFromSmallStickers is SmallSticker * LargeButtonRate * 0.9,
% Calculate the number of large buttons obtained from trading large stickers
LargeButtonsFromLargeStickers is LargeSticker * LargeButtonRate * 0.5,
% Calculate the number of small buttons obtained from trading remaining large stickers
SmallButtonsFromLargeStickers is LargeSticker * SmallButtonRate * 0.5,
% Calculate the number of small stickers obtained from trading large buttons
SmallStickersFromLargeButtons is LargeButtonsFromSmallStickers * LargeButtonStickerRate,
% Sum up the total number of buttons obtained
TotalButtons is LargeButtonsFromSmallStickers + LargeButtonsFromLargeStickers + SmallButtonsFromLargeStickers + SmallStickersFromLargeButtons.
% Query predicate to find the total number of buttons Lorraine has at the end
query(TotalButtons) :-
total_buttons(TotalButtons).
% Uncomment the line below to run the query
% query(TotalButtons).
%query(TotalButtons).