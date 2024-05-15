import matplotlib.pyplot as plt

# Flow rates data
flow_rates = [3340, 1840, 1520, 1290, 1200, 1200, 1100, 808, 680, 680, 673, 648, 640, 535, 484, 392, 334, 161]
rank = list(range(1, len(flow_rates) + 1))  # Rank from 1 to N

# Plot
plt.figure(figsize=(10, 6))
plt.plot(rank, flow_rates, marker='o', linestyle='-')
plt.title('Flow Rates of the River')
plt.xlabel('Rank')
plt.ylabel('Flow Rate (cfs)')
plt.grid(True)
plt.show()