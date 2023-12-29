import seaborn as sns
import matplotlib.pyplot as pyplot
import ssl

ssl._create_default_https_context = ssl._create_unverified_context

tips = sns.load_dataset("tips")

