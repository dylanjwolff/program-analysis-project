import pandas as pd
import numpy as np
from datetime import timedelta
import seaborn as sns
import matplotlib.pyplot as plt
import matplotlib.style as style

df = pd.read_csv("out.csv")

mask = df.tool == "cbmc"
mask_cvc4 = df.tool == "cbmc-cvc4"
df.loc[mask, "assertions_reached"] = np.NaN
df.loc[mask_cvc4, "assertions_reached"] = np.NaN

delta = timedelta(minutes=30)
df["elapsed_time"].replace({"-1": delta}, inplace=True)
df = df.astype({'elapsed_time': 'str'})
df["elapsed_time"] = df["elapsed_time"].map(pd.Timedelta)
df["elapsed_time_secs"] = df["elapsed_time"].map(lambda x: x.total_seconds())
df = df.replace(-1, np.NaN)
df["branch percentage"] = df["branches_covered"] / df["total_branches"]

print(df.dtypes)
grouped = df.groupby(["program", "tool"]).mean()
grouped = grouped[["branches_covered",
            "total_branches", "assertions_reached", "elapsed_time_secs"]]
grouped.columns = ["branches covered", "total branches",
        "assertions reached", "time (s)"]
bigtable = grouped.to_latex()
with open("bigtable.tex", "w+") as f:
    f.write(bigtable)
style.use('ggplot')
sns.set_context("paper", font_scale=1)
sorted_tools = sorted(list(set(df["tool"])))
ax = sns.catplot(
            x="tool",  # x variable name
            y="elapsed_time_secs",  # y variable name
            # hue="tool",  # group variable name
            data=df,  # dataframe to plot
            kind="bar",
            order=sorted_tools)
plt.xticks(rotation=30, horizontalalignment='right')
plt.tight_layout()

plt.savefig('elapsed.png', dpi=300)

sns.catplot(
            x="tool",  # x variable name
            y="assertions_reached",  # y variable name
            # hue="tool",  # group variable name
            data=df,  # dataframe to plot
            kind="bar",
            order=sorted_tools)

plt.xticks(rotation=30, horizontalalignment='right')
plt.tight_layout()
plt.savefig('assertions.png', dpi=300)

sns.catplot(
            x="tool",  # x variable name
            y="branches_covered",  # y variable name
            # hue="tool",  # group variable name
            data=df,  # dataframe to plot
            kind="bar",
            order=sorted_tools)

plt.xticks(rotation=30, horizontalalignment='right')
plt.tight_layout()
plt.savefig('cover.png', dpi=300)

sns.catplot(
            x="tool",  # x variable name
            y="branch percentage",  # y variable name
            # hue="tool",  # group variable name
            data=df,  # dataframe to plot
            kind="bar",
            order=sorted_tools)

plt.xticks(rotation=30, horizontalalignment='right')
plt.tight_layout()
plt.savefig('coverp.png', dpi=300)

# plt.show()

grouped = df.groupby(["program", "tool"]).max()
winners = grouped.groupby("program").idxmax()
winners["branches_covered"] = winners["branches_covered"].map(lambda x: x[1])
winners["branch percentage"] = winners["branch percentage"].map(lambda x: x[1])
winners["assertions_reached"] = winners["assertions_reached"].map(lambda x: x[1])
winners = winners[["branches_covered", "branch percentage", "assertions_reached"]]
branch_wins = winners["branches_covered"].value_counts()
branchp_wins = winners["branch percentage"].value_counts()
ass_wins = winners["assertions_reached"].value_counts()
wins = {}
for tool in sorted_tools:
    wins[tool] = {}
    if tool in ass_wins:
        wins[tool]["Assertions Reached"] = ass_wins[tool]
    else:
        wins[tool]["Assertions Reached"] = 0
    if tool in branch_wins:
        wins[tool]["Branches Covered"] = branch_wins[tool]
    else:
        wins[tool]["Branches Covered"] = 0
    if tool in branchp_wins:
        wins[tool]["Percentage of Total Branches"] = branchp_wins[tool]
    else:
        wins[tool]["Percentage of Total Branches"] = 0
wins_df = pd.DataFrame(wins)
print(wins_df)
winstable = wins_df.T.to_latex()
with open("wins.tex", "w+") as f:
    f.write(winstable)

grouped = df.groupby(["tool"]).sum()
print(grouped)
