import matplotlib.pyplot as plt

# Streamflow data
streamflow = [
    384, 757, 572, 712, 742, 368, 688, 592, 500, 459, 
    617, 392, 640, 1840, 680, 1200, 535, 161, 1520, 
    648, 1100, 334, 808, 680, 2240, 673, 1200, 1290, 484
]

# Estimated flow rates for 50 and 100-year floods
flow_rate_50_year = 1166.4070743443134
flow_rate_100_year = 1490.257173891502

# Plot streamflow data
plt.figure(figsize=(10, 6))
plt.plot(range(1, len(streamflow) + 1), streamflow, marker='o', linestyle='-', label='Streamflow Data')

# Plot estimated flow rates for 50 and 100-year floods
plt.axhline(y=flow_rate_50_year, color='r', linestyle='--', label='50-Year Flood Estimate')
plt.axhline(y=flow_rate_100_year, color='g', linestyle='--', label='100-Year Flood Estimate')

plt.title('Streamflow Data and Estimated Flood Flow Rates')
plt.xlabel('Data Point')
plt.ylabel('Flow Rate (cfs)')
plt.legend()
plt.grid(True)
plt.show()